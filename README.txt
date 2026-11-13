WOLFIE ORE COMPASS v1.1 - Minecraft Java 26.3

UPGRADING FROM v1.0: Remove the old ZIP, add this one, then /reload.
Already-crafted compasses work without recrafting. v1.1 fixes recognition of
crafting-created item data; command-created compasses remain compatible.

INSTALL: Put this ZIP, unextracted, in your world's datapacks folder. Run /reload.
Vanilla clients; no resource pack or mod loader required.

CRAFT: Any compass + a matching sample, shapeless (inventory grid works).
Coal: coal or coal ore. Iron/copper/gold: raw material, ingot, or ore block.
Redstone, lapis, diamond, emerald: their usual drop or ore block.
Quartz: quartz or nether quartz ore.
Ancient debris: ancient debris or netherite scrap.
Deepslate ore variants work; gold also includes nether gold ore.
Charcoal does not tune a coal compass. Recipes also allow retuning an existing compass.

USE: Hold in either hand. Main hand takes priority if both hold tuned compasses.
Needle points horizontally; hotbar text shows blocks above/below or same level.
16-block spherical radius measured between block positions, including vertical distance.
Regular/deepslate variants share a target type. Only loaded blocks are searched.
Nearest ore to the scan's starting position is preferred; it stays locked until
mined, out of range, changing compass type/hand, or changing vanilla dimension.
A full search takes up to 34 ticks (~1.7 seconds at 20 TPS). No-result searches
wait 2 seconds before retrying. Holding still gives the most consistent coverage.
If walking during a scan, newly entered areas are covered on the next scan.
No target: needle spins, rather than pointing to world spawn.
UI refreshes every 5 ticks. Another actionbar pack can share/overwrite this text.
Supports Overworld, Nether and End; custom dimensions are not supported.
Can find player-placed ore too. Never changes or mines blocks.

ADMIN TEST: /function wolfie_ore:give/all
Or /function wolfie_ore:give/diamond (replace diamond with any supported type).
Console: execute as PLAYER run function wolfie_ore:give/all

REMOVE: Disable/remove ZIP, then /reload. Custom compasses become inert.
Optional score cleanup: while still enabled, run /function wolfie_ore:uninstall
then immediately remove the ZIP and /reload.

