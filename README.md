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

HeavenlyOriginSaga-DnDBased/
├── README.md                           # Dokumentasi utama (Lore, gameplay, panduan GM)
├── LICENSE                             # Dual License: MIT + Heavenal Law License v3.3.1
│
├── manifest.yaml                       # Manifest dunia: metadata, token GM, versi hukum, dan sync
│   ├─ codex_link: codex/
│   ├─ system_link: system/
│   ├─ guardian_node: guardian_node_system.yaml
│   ├─ audit_protocol: heavenal_auto_audit_system.yaml
│   └─ gm_token: 201218
│
├── codex/                              # 📘 Folder inti Codex (Lore, hukum, dan sistem dunia)
│   ├── codex_cosmic_realm_full.yaml        # Daftar realm lengkap (Mortal–Transcendent)
│   ├── codex_i–xxiv.yaml                   # Lore, hukum, politik, teknik, dan sistem
│   ├── codex_divine_transcendence.yaml     # Sistem Transcendent & Peerless Ancient Wanderer
│   ├── codex_law_enforcement.yaml          # Great Court & GCEB
│   ├── codex_mortal_world.yaml             # Struktur Dunia Mortal
│   ├── codex_immortal_world.yaml           # Struktur Dunia Immortal
│   ├── codex_god_realm.yaml                # Dunia Dewa
│   ├── codex_chaos_void.yaml               # Chaos & Void Realm
│   ├── codex_abyss_realm.yaml              # Realm Abyss (Demonic & Evil)
│   ├── codex_monster_realm.yaml            # Realm Beast / Monster
│   └── codex_dependencies.yaml             # Relasi antar-codex + sinkronisasi sistem
│
├── cheat_sheet/                        # 📖 Panduan cepat & mekanik
│   ├── cheat_sheet_i–xx.yaml               # 20+ sheet mekanik gameplay
│   ├── cheat_sheet_alchemy.yaml            # Formula alkimia, roll table, buff/debuff
│   ├── cheat_sheet_forging.yaml            # Sistem penempaan, material, artefak
│   ├── cheat_sheet_shop.yaml               # Heavenal Shop & Reward Mechanics
│   ├── cheat_sheet_battle.yaml             # Sistem pertarungan, roll stat & hukum
│   ├── cheat_sheet_soul_karma.yaml         # Soul Resonance & Karma System
│   ├── cheat_sheet_timer.yaml              # Ascension & Heaven Timer
│   └── cheat_sheet_realm.yaml              # Ringkasan sistem realm
│
├── system/                             # ⚙️ Sistem teknis & simulasi
│   ├── heavenal_core.yaml                  # Sistem inti pengatur waktu, hukum, dan freeze mode
│   ├── heavenal_auto_audit_system.yaml     # Auto-audit harian (1 Heavenal day)
│   ├── guardian_node_system.yaml           # Node pengawasan hukum & integritas dunia
│   ├── realm_tier_system.yaml              # Konfigurasi tier realm, exp, & tribulation
│   ├── shop_catalog_example.yaml           # Data shop awal (500 item: pill, senjata, artefak)
│   ├── alchemy_forging_system.yaml         # Mekanik crafting & alkimia
│   ├── battle_mechanic_core.yaml           # Sistem pertarungan, efek stat, buff/debuff
│   ├── economy_system.yaml                 # Keuangan: Gold–Silver–Copper, Spirit Stones, Jade
│   └── heavenal_panel_interface.yaml       # Template panel karakter & status (YAML UI)
│
├── data/                               # 📊 Database & katalog dunia
│   ├── artifact_catalog.yaml               # 500 artefak/senjata
│   ├── technique_catalog.yaml              # 480 teknik/sutra
│   ├── pill_catalog.yaml                   # 500 resep pill
│   ├── herb_catalog.yaml                   # 500 bahan herbal
│   ├── buff_debuff_effects.yaml            # 100 efek status
│   ├── npc_database.yaml                   # Data karakter dunia (Holy, Demonic, Evil, Monster)
│   └── faction_legion_database.yaml        # Struktur pasukan tiap faksi
│
├── worldmap/                           # 🌍 Struktur spasial dunia
│   ├── worldmap_overview.yaml              # 6 benua mortal + pusat Holy Region
│   ├── kingdom_layout.yaml                 # Pembagian kerajaan, akademi, sekte, pedagang
│   ├── gate_network.yaml                   # Lokasi gerbang antar realm
│   ├── abyss_structure.yaml                # Pembagian wilayah Evil & Demonic
│   └── monster_territories.yaml            # Habitat & wilayah kerajaan Beast
│
├── logs/                               # 🧾 Arsip sistem & audit
│   ├── heavenal_audit_log.md               # Log harian sistem
│   ├── chronarch_event_log.md              # Catatan kejadian hukum besar
│   └── version_history.md                  # Riwayat pembaruan Codex & Cheat Sheet
│
├── LICENSE_NOTICE.md                   # Versi singkat lisensi untuk disisipkan pada file YAML
└── .heavenal_lock                      # File sistem internal: menandakan Seal aktif


---

## ⚙️ Installation & Setup

### 🔧 Clone the Repository
```bash
git clone https://github.com/titobaitanu/HeavenlyOriginSaga-DnDBased.git
cd HeavenlyOriginSaga-DnDBased
