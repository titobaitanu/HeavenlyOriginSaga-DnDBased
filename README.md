# 🌌 Heavenly Origin Saga — D&D x Cultivation Codex System
**Version 1.0.0 | Dual Heavenal–MIT License v3.3.1**

> “The Heaven does not bind those who walk its path —  
>  it merely reflects their truth.”  
>  — *Divine Law, Codex XIX: Law Resonance*

---

## 🧭 Overview

**Heavenly Origin Saga (HOS)** is a **Dungeons & Dragons–based cultivation RPG framework** designed for both **ChatGPT AI Game Masters** and **human players**.

It merges D&D mechanics with the layered metaphysical laws of Xianxia-style cultivation:
- Multi-realm progression (Mortal → Immortal → Divine)  
- Law-based ascension and energy systems  
- Divine Sutras and Heaven-grade techniques  
- Integrated YAML-based campaign structure  

This repository contains **the complete Codex System**, allowing ChatGPT or human DMs to run immersive campaigns within the *Heavenly Origin Universe*.

---

## 🧩 Features

- ⚖️ **Law-Driven Gameplay:** Every realm, technique, and artifact follows cosmic law logic.  
- 🔮 **Dynamic Realm System:** 16 cultivation realms (8 Mortal, 5 Immortal, 3 Divine).  
- 🧪 **Custom Sutra Generation:** ChatGPT can create or compress techniques using YAML modules.  
- 🕯️ **Immortal Court & Divine Bureau:** Full legal and faction system with hierarchy.  
- 🌠 **Transcendence Support:** Progression beyond gods via the Divine Transcendence Codex.  
- 🤖 **Playable via ChatGPT:** Works with any GPT model capable of YAML parsing and narrative continuity.  

---

## 🗂️ Repository Structure

+-----------------------+
                    |   manifest_structure  |
                    |   (manifest_structure.yaml)
                    +-----------+-----------+
                                |
            +-------------------+--------------------+
            |                                        |
+-----------v-----------+                  +---------v----------+
|        CODEX           |                  |      SYSTEM        |
| (codex_*.yaml)        |                  | (system_*.yaml)    |
+-----------+-----------+                  +---------+----------+
            |                                        |
  +---------+---------+                 +------------+------------+
  |                   |                 |                         |
  |                   |                 |                         |
  v                   v                 v                         v
cheat_sheet_*.yaml  codex_dependencies  battle_mechanic_core.yaml  alchemy_forging_system.yaml
  (mechanics)                                   |                         |
       |                                        |                         |
       +----------------------+-----------------+------------+------------+
                              |                              |
                              v                              v
                        DATA (catalogs)                WORLDMAP (gate_network)
                 (pill_catalog, artifact_catalog,         (worldmap_*.yaml)
                  technique_catalog, buffs, NPCs)
                              |
                              v
                        SHOP & ECONOMY
                   (shop_catalog_example.yaml,
                    economy_system.yaml)
                              |
                              v
                          LOGS / AUDIT
                    (heavenal_audit_log.md)


---

## ⚙️ Installation & Setup

### 🔧 Clone the Repository
```bash
git clone https://github.com/titobaitanu/HeavenlyOriginSaga-DnDBased.git
cd HeavenlyOriginSaga-DnDBased
