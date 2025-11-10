#!/bin/bash
echo "🔍 Running Heavenal Audit System..."
echo "-----------------------------------"

# Detect plaintext token but ignore environment-safe variables
if grep -r "HEAVENAL_GM_TOKEN=" . | grep -v "ENV\[HEAVENAL_GM_TOKEN\]"; then
  echo "⚠️  Plaintext token found in files. Please use ENV[HEAVENAL_GM_TOKEN]."
  exit 2
else
  echo "✅  Token environment safe."
fi

# Continue normal checks
if grep -q "Heavenal Control Node" LICENSE.md; then
  echo "✅  License header verified."
else
  echo "⚠️  License header missing!"
fi

if grep -q "sync_integrity" manifest.yaml; then
  echo "✅  Manifest integrity key found."
else
  echo "⚠️  Manifest integrity not found!"
fi

echo "-----------------------------------"
echo "🏁 Heavenal Audit Completed."
