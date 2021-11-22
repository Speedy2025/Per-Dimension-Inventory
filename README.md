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

## Installing it
The datapack can simply be dropped into your datapacks folder provided PlayerDB by rx and SEv3 are there.

## On Bugs...
While I make a reasonable effort to test on my local world and server before release, I cannot promise this will be bug-free. If you do know bugs, please mesage me on discord **@Speedy2025#2025** or ping me on one of the servers I can be found on.


# For Datapack Developers

## On making your datapack compatible...
Making your datapack PDI Compatible can be easy or complicated depending on the nature of it. When ensuring that your datapack is PDI compatible, you want to ask yourself what situations would it be used in, if PDI is activated.
    For more non-survival oriented features, you'll want to check if PDI exists first and then check the scores, see below.
    For survival things, you'll just want to check the scores.

Checking if PDI exists should be as simple as checking any random player to see if they have the `c.inv.curr` objective more than 0. For example, a survival player would *most likely* have a score of `c.inv.curr 1` while a creative player would *most likely* have a score of `c.inv.curr 2`. Admins may deviate from this a little bit, but in those cases players would have a score of 3 or more.

If you don't need to check if PDI exist (like if you're doing a survival-only datapack), you will likely not need to check seperately if the datapack is enabled. Instead, you'll want to include an `unless score (player) c.inv.curr matches 2..` to exclude anyone not in the appropriate mode. For example, on the topic of EnderChest Plus, you initialize a player and set their enderchest when they open it. Since you control the enderchest through the enderchest and don't try to override changes, you are almost PDI compatible. You'll just need to ensure that players can't initialize the enderchest while in any world but survival, which the inclusion of the unless statement will do. This will allow your datapack to be independent of PDI but still enable funcationality. The same goes for advancements, you'll need to check inside the reward functions that they are NOT in any world but survival. You are welcome to do this as you please or outright ignore it, but I recommend testing it to see if it can be exploited.

## On using PDI's APIs...
There are (or will be) three main APIs you can use in the form of a function tag.
1. `pdi:update_mode` - Use this to set dimension & player modes. They WILL go through this unless they have a special bypass tag, detailed later.
2. `pdi:before_switch` - (Soon) Use this to handle players that are switching inventories **before** they switch. Useful if you have some temporary items to save.
3. `pdi:after_switch` - (Soon) Use this to handle players that are switching inventories **after** they switch. Good to restore or set special items.

### On pdi:update_mode...
This particular one requires a special format for your commands. You can simplify them as you see fit, but for readability I recommend you stick to this format:
`execute in minecraft:overworld run scoreboard players set @e[tag=se.dim.marker,tag=!pdi.registered,distance=0..] c.inv.curr 1`

You do not need to add your dimension if it is going to be just survival. You only need to add it if you want a different gamemode, such as if you are making a creative pocket dimension for redstone. Simply change the `minecraft:overworld` to your dimension's name and change the score at the end to whatever you want. For example, this is one of my custom dimensions that I added:
`execute in tser_dim:night_mg run scoreboard players set @e[tag=se.dim.marker,tag=!pdi.registered,distance=0..] c.inv.curr 11`

In this example, I set my custom dimension `tser_dim:night_mg` to inventory 11.

## Advanced PDI API!
There are some secret operations that you can do if you really feel the need to. Be aware that these ones I do not technically support if you have problems with it and a player switches dimensions. You're on your own here.

You can save inventories and restore them at your will if you want to bypass PDI's logic. In theory, you can use them as extra inventories. I suggest you look into the datapack's structure.

In addition, you can theoritically modify PDI to include more inventories than 10. If you need more than 10 inventories, you probably have a problem that you should address. However, the template to add more inventories can be found. Like before, I won't give support for this and you should be confident with how PDI works before doing so.

# Final Notes
In the future, there will be more to the API than there is now. For example, there will be a before-swtich and after-switch tag that you can use to run functions before or after PDI does its magic. 

h
