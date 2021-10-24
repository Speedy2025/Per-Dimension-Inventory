# Per-Dimension Inventory (PDI)
A datapack inspired by the Multiverse Plugins that lets you have per-dimension group inventories.


# Quick Notes

## Compatibility
This pack relies on `PlayerDB`, created by rx#1284 on Discord. It should work with the latest version.
You can get it here: https://github.com/rx-modules/PlayerDB

In addition, it relies on `SEv3`, created by me. It WILL work with the latest version.
You can get it here on PMC: https://www.planetminecraft.com/data-pack/speedy-s-essentials/

You can safely assume that PDI will be incompatible with anything unless it states that it is compatible. In particular, anything that manages inventories, enderchests, levels, or advancements/achievements is probably incompatible. Being that this is a technical datapack, you're probably downloading it for another datapack. If so, don't sweat it.

A list of KNOWN compatable datapacks which are 100% certified to work with PDI:
1. PlayerDB
2. Speedy's Essentials
3. CreativeWorld (Unreleased)
4. TSERv4 (Unreleased)
5. Most of VanillaTweeks
6. BlockHunt (Unreleased, keep an eye out :D )


Stuff that is being worked on for compatability:
1. EnderChest Plus

If you know a datapack that is incompatible, please let me AND the original author know and have them contact me. I can help them make it ready for PDI.


## Usage
This datapack controls the player's inventory, enderchest, and xp levels to allow cross-dimensional play and enable server owners to create experiences not otherwise obtainable. For example, you could make a minigame world and a creative world alongside the expected survival experience. For admins making this experience, see below in the FAQs where I discuss adding your dimension.


## On Bugs...
While I make a reasonable effort to test on my local world and server before release, I cannot promise this will be bug-free. If you do know bugs, please mesage me on discord **@Speedy2025#2025** or ping me on one of the servers I can be found on.


# FAQ
### Q. Is PDI easy to install?

A. *Yes! All you need to do is take the datapack and put it into your datapacks folder inside each world you want it in.*

### Q. Does PDI require any other datapacks or resourcepacks?

A. *Yes. PlayerDB by @rx#1284 and Speedy's Essentials by @Speedy2025#2025 (me!) are manditory. There will soon be a release that doesn't require either, stay tuned.*

### Q. How do I use (insert feature) in PDI?

A. *\_(o.o)_/ - In all seriousness, this is meant for datapack developers. I've explained some of it inside the function files, but see below for adding your worlds.*

### Q. Can I give you a hug and kiss?

A. *Absolutely not, but you can show your love by reporting any bugs to me on discord* **@Speedy2025#2025**. *You can find me on the r/MinecraftCommands discord or on @rx#1284's discord*

### Q. Can I, a Datapack Developer, change dimensions and stuff?

A. Yes! It's not too complicated either. The function tag `pdi:update_mode` can be included to set dimensions and game modes. Simply add a line in your function inside the tag:
`execute in minecraft:overworld run scoreboard players set @e[tag=se.dim.marker,tag=!pdi.registered,distance=0..] c.inv.curr 1`
Change the `minecraft:overworld` to your dimension and change the final number to the dimension group you'd like. If you have questions on the dimension group standards, see pdi:misc/register

For the brighter of crayons, I've left PDI in a state where you can mess with it yourself through datapacks. You can, in addition to it's normal functionality, manually save inventories, restore inventories, and more. I recommend you read through how it works inside the datapack so that you understand what you're getting into though- you can do some serious damage to players if you don't.

### Q. How can I be PDI Compatible and make it to the list?
A. *It's somewhat easy. All you have to do is make sure that any advancement-related things check for the correct dimension group through `c.inv.curr` (idealy 1) or check against it (if it's 2 or more). The second is preferred in most cases to allow people who don't have PDI to still use your datapack. An example of this would be `execute unless score @s c.inv.curr matches 2.. run <stuff>` inside an advancement reward file.

### Q. I don't want to use SEv3, is there a way around it?
A. *I- why? Anyways, if you don't want to use SEv3, I plan to release a stand-alone version. Until then, just give everyone the appropriate admin tag `se.disable.all` to disable functionality. As a bonus, you can give them the tags only as you need it. Don't want homes in creative? Give 'em the tags!



# Final Notes
In the future, there will be more to the API than there is now. For example, there will be a before-swtich and after-switch tag that you can use to run functions before or after PDI does its magic. 

g