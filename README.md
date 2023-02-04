[![Core Keeper Auto Fish](https://github.com/Niten001/Core-Keeper-Auto-Fish/blob/main/img/banner.png)](https://github.com/Niten001/Core-Keeper-Auto-Fish/)

A repository for the source code and Core Keeper Auto Fish application which automatically fishes for you in the game Core Keeper.

Built using [AutoHotKey](https://www.autohotkey.com/) an open-source scripting language for the creation of macros on Windows.

Download the latest release [here](https://github.com/lbcai/Core-Keeper-Auto-Fish/raw/main/releases/0.0.6/CoreKeeperAutoFish.exe) and run by pressing `Ctrl` + `Shift` + `f` - unfortunately some users may have to run it in Administrator mode to get it to work. In this version is also a new melee/ranged combat leveling script that will hold down attack on the cursor. To use that, press `Ctrl` + `Shift` + `g`. It is recommended to find a Farmer Caveling trap plant, box yourself in with walls, and equip a torch to level melee.

This improves on [Niten001's](https://github.com/Niten001) version by streamlining the fishing behavior of the player. The player has much less downtime between actions and listens to the game's sound cues to respond immediately to fishing events. Also, when a fish is hooked, the player will move slightly to cancel the cast and recast immediately in order to prioritize catching items and obtaining fishing experience versus waiting for the fishing minigame to time out.

As noted in [kildaremc's](https://github.com/kildaremc/Core-Keeper-Auto-Fish) instructions, the sound cue portion of this script works best when the user sets their music volume & ambient SFX volume to 0 and their SFX volume to max in the game settings.

There is also a portion of the code that is designed to beat the fishing minigame so that afk players can actually catch fish, but it currently doesn't work 100% of the time and has been disabled for now.

It is recommended that players build walls around themselves and keep the water to their right in order to prevent movement off the tile and avoid being attacked by mobs while afk.

Last updated 2023/02/02. 

## Thanks to
* [Fish icons created by Freepik - Flaticon](https://www.flaticon.com/free-icons/fish)
