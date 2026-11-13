# Minecraft Ore Finder

Server-side ore-finding compasses for **Minecraft Java 26.3**. No client mods or resource packs required.

**Current version: 1.1**, distributed in-game as Wolfie Ore Compass.

## Download and install

[Download the ready-to-install datapack](downloads/Wolfie_Ore_Compass_v1.1_mc26.3.zip?raw=true).

1. Place the ZIP, **unextracted**, in your world's `datapacks` folder.
2. Run `/reload`.
3. Craft a compass with a matching ore sample in either crafting grid.

When upgrading from v1.0, disable/remove the old pack before enabling v1.1. Existing crafted compasses work without recrafting.

## Crafting

Recipes are shapeless: **one compass + one matching sample**. An existing ore compass can also be retuned.

| Compass | Accepted samples |
| --- | --- |
| Coal | Coal or coal ore |
| Iron | Raw iron, iron ingot, or iron ore |
| Copper | Raw copper, copper ingot, or copper ore |
| Gold | Raw gold, gold ingot, gold ore, or Nether gold ore |
| Redstone | Redstone dust or redstone ore |
| Lapis | Lapis lazuli or lapis ore |
| Diamond | Diamond or diamond ore |
| Emerald | Emerald or emerald ore |
| Quartz | Quartz or Nether quartz ore |
| Ancient debris | Ancient debris or netherite scrap |

Deepslate variants are accepted wherever applicable. Charcoal does not tune a coal compass.

## Using the compass

Hold a tuned compass in either hand to search a **16-block spherical radius**, including above and below. The needle points horizontally toward the target, while text above the hotbar shows the number of blocks above/below or “Same level.” Main hand takes priority when both hands hold tuned compasses.

The nearest matching ore to the scan's starting position is preferred. The compass stays locked until the target is mined, leaves range, or the held compass type/hand or dimension changes. Once acquired, its needle also remains visible in the hotbar and inventory; active scanning and height guidance require holding it.

A full scan takes up to **34 ticks**, about **1.7 seconds at 20 TPS**. No-result searches wait two seconds before retrying. Holding still gives the most consistent coverage while a scan completes.

## Scope and limitations

- Supports the Overworld, Nether, and End; custom dimensions are not supported.
- Searches loaded blocks only, and can detect player-placed ore.
- Regular and deepslate variants share the same target type.
- With no target, the needle spins.
- Other datapacks using the actionbar may overwrite the height text.
- No custom colors, textures, or client downloads.
- Never changes or mines blocks.

## Admin commands

Give all ten compasses:

```mcfunction
/function wolfie_ore:give/all
```

Give one type, for example:

```mcfunction
/function wolfie_ore:give/copper
```

From the server console:

```text
execute as PLAYER run function wolfie_ore:give/all
```

## Version 1.1

Fixed detection of crafting-created compass data. Both crafted compasses and command-created items are recognized, including existing v1.0 items.

The pack was checked on a local 26.3 server for targeting, above/below positions, range boundaries, offhand use, multiple holders, dimension changes, and crafting-style data for all ten types. The corrected pack was also confirmed working in-game by its user.

## Repository layout

`pack.mcmeta` and `data/` are the unpacked datapack source. The original installation notes are in `README.txt`; `downloads/` contains the ready-to-install ZIP.
