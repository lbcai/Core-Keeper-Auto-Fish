[![Core Keeper Auto Fish](https://github.com/Niten001/Core-Keeper-Auto-Fish/blob/main/img/banner.png)](https://github.com/Niten001/Core-Keeper-Auto-Fish/)

A repository for the source code and Core Keeper Auto Fish application which automatically fishes for you in the game Core Keeper.

Built using [AutoHotKey](https://www.autohotkey.com/) an open-source scripting language for the creation of macros on Windows.

Download the latest release [here](https://github.com/lbcai/Core-Keeper-Auto-Fish/raw/main/releases/0.0.6/CoreKeeperAutoFish.exe) and run by pressing `Ctrl` + `Shift` + `f` - unfortunately users may have to run it in Administrator mode to get it to work. In this version is also a new melee/ranged combat leveling script that will hold down attack on the cursor. To use that, press `Ctrl` + `Shift` + `h`. It is recommended to find a Farmer Caveling trap plant, box yourself in with walls, and equip a torch to level melee.

This improves on [Niten001's](https://github.com/Niten001) version by streamlining the fishing behavior of the player. The player has much less downtime between actions and listens to the game's sound cues to respond immediately to fishing events. Also, when a fish is hooked, the player will move slightly to cancel the cast and recast immediately in order to prioritize catching items and obtaining fishing experience versus waiting for the fishing minigame to time out.

This version is also capable of actually catching fish by playing the minigame. It cannot catch all types of fish yet. Press `Ctrl` + `Shift` + `g` to enable the fish minigame mode.

As noted in [kildaremc's](https://github.com/kildaremc/Core-Keeper-Auto-Fish) instructions, the sound cue portion of this script works best when the user sets their music volume & ambient SFX volume to 0 and their SFX volume to max in the game settings. Set these values in the game's Settings before use.

Last updated 2023/02/04. 

## Test Log
Last tested on 0.5.1.2 Early Access Version with Galaxite Fishing Rod and no other fishing power boosts. Partial testing was completed with Tin and Octarine Fishing rods; there should be a minimal difference in catch ability.
* Underground (Dirt biome) - ![#c5f015](https://placehold.co/15x15/c5f015/c5f015.png) Capable of catching all fish
* Clay Caves - ![#f03c15](https://placehold.co/15x15/f03c15/f03c15.png) Capable of catching all fish except Devil Worm
* Forgotten Ruins (Stone biome) - ![#c5f015](https://placehold.co/15x15/c5f015/c5f015.png) Capable of catching all fish
* Azeos' Wilderness - ![#c5f015](https://placehold.co/15x15/c5f015/c5f015.png) Capable of catching all fish
* Mold Dungeon - ![#c5f015](https://placehold.co/15x15/c5f015/c5f015.png) Capable of catching all fish
* Sunken Sea - ![#c5f015](https://placehold.co/15x15/c5f015/c5f015.png) Capable of catching all fish
* Desert of Beginnings - ![#f03c15](https://placehold.co/15x15/f03c15/f03c15.png) Capable of catching all fish except Tornis Kingfish
* Molten Quarry - ![#c5f015](https://placehold.co/15x15/c5f015/c5f015.png) Capable of catching all fish (including Starlight Nautilus)


## Instructions for use

### Catching fish or leveling fishing 
1. Change game sound settings as follows: 
<p align="center">
  <img src="https://github.com/lbcai/Core-Keeper-Auto-Fish/blob/main/img/settings.png">
</p>

2. Right click on the sound icon in the tray and select Sound Mixer. 
<p align="center">
  <img src="https://github.com/lbcai/Core-Keeper-Auto-Fish/blob/main/img/volume_mixer.PNG">
</p>

3. Make sure the volume for Core Keeper is high. Below is a volume setting that will cause the script to fail.
<p align="center">
  <img src="https://github.com/lbcai/Core-Keeper-Auto-Fish/blob/main/img/volume_mixer2.PNG">
</p>

4. If catching fish, press `Ctrl` + `Shift` + `g`. If only using the script to level fishing, do not use this toggle because it is more efficient to level fishing by cancelling the fish minigame.

5. Place your character in a safe place with a block of fishable liquid on your RIGHT. Press `Ctrl` + `Shift` + `f` to start fishing.

6. Press `Ctrl` + `Shift` + `f` again to stop fishing.
<p align="center">
  <img src="https://github.com/lbcai/Core-Keeper-Auto-Fish/blob/main/img/fishing.PNG">
</p>

### Training melee or ranged damage
1. Position your character in front of a target.
2. Press `Ctrl` + `Shift` + `h` and place your cursor on the target. Your character will attack until the toggle is turned off.
3. Press `Ctrl` + `Shift` + `h` again to stop attacking.


## Thanks to
* [Fish icons created by Freepik - Flaticon](https://www.flaticon.com/free-icons/fish)
