#!/usr/bin/env bash
set -euo pipefail

LOGFILE="logs/heavenal_audit_$(date +%Y%m%d_%H%M%S).yaml"
mkdir -p logs

echo "date: \"$(date --iso-8601=seconds)\"" > "$LOGFILE"

# 1) Pastikan tidak ada plaintext token/HEAVENAL_GM_TOKEN di repo
echo "forbidden_scans:" >> "$LOGFILE"
echo "  - check: plaintext_token" >> "$LOGFILE"
if grep -R --line-number --exclude-dir=.git -n "HEAVENAL_GM_TOKEN" . > /dev/null 2>&1; then
  echo "  - status: FAIL" >> "$LOGFILE"
  echo "  - detail: 'Found HEAVENAL_GM_TOKEN string in repository (commit or files). Remove it!'" >> "$LOGFILE"
  echo "ERROR: HEAVENAL_GM_TOKEN string detected in repository. Aborting."
  exit 2
else
  echo "  - status: PASS" >> "$LOGFILE"
fi

# 2) Validate manifest exists
echo "manifest_check:" >> "$LOGFILE"
if [ -f manifest.yaml ]; then
  echo "  - status: PASS" >> "$LOGFILE"
else
  echo "  - status: FAIL" >> "$LOGFILE"
  echo "ERROR: manifest.yaml missing."
  exit 3
fi

# 3) Basic YAML lint (optional if yamllint not available, do simple parse check)
echo "yaml_scan:" >> "$LOGFILE"
YAMLLINT_OK=true
if command -v yamllint >/dev/null 2>&1; then
  yamllint -c /dev/null $(find . -type f -name "*.yaml" -not -path "./.git/*") || YAMLLINT_OK=false
else
  # fallback: try python yaml load for each file (if python present)
  if command -v python3 >/dev/null 2>&1; then
    PY_OK=true
    for f in $(find . -type f -name "*.yaml" -not -path "./.git/*"); do
      python3 - <<PYCODE || PY_OK=false
import sys, yaml
try:
  yaml.safe_load(open("$f"))
except Exception as e:
  print("YAML_ERROR: $f ->", e)
  sys.exit(1)
PYCODE
      if [ $? -ne 0 ]; then PY_OK=false; break; fi
    done
    if [ "$PY_OK" = true ]; then YAMLLINT_OK=true; else YAMLLINT_OK=false; fi
  else
    YAMLLINT_OK="skipped"
  fi
fi

if [ "$YAMLLINT_OK" = true ]; then
  echo "  - status: PASS" >> "$LOGFILE"
else
  echo "  - status: WARN" >> "$LOGFILE"
  echo "  - detail: 'YAML lint not available or found issues. Install yamllint or fix YAMLs.'" >> "$LOGFILE"
fi

# 4) Codex registry basic check
echo "codex_registry_check:" >> "$LOGFILE"
if [ -d codex_registry ]; then
  echo "  - status: PASS" >> "$LOGFILE"
else
  echo "  - status: WARN" >> "$LOGFILE"
  echo "  - detail: 'codex_registry missing; ensure codex_registry/ exists in repo.'" >> "$LOGFILE"
fi

# 5) Summary print
echo "summary:" >> "$LOGFILE"
echo "  - result: Completed" >> "$LOGFILE"

echo "Heavenal audit completed. Log saved to $LOGFILE"
cat "$LOGFILE"
