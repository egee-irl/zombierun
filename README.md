# zombierun
Run from zombies. Or shoot them. Bang.

This game is a port of my original Zombie Run game written years ago with Ruby and the Gosu game library. That code can be found in the `ruby-gosu` branch of this repo.

## Getting Started

Since the game is in development, there's no downloadable binaries or distributed copies of it; you'll have to build & compile it.

### Prerequisites
This version of Zombie Run is written with HaxeFlixel. As such, you will need to [download & install](https://haxe.org/download/) Haxe 3.4.*.

Once you've got Haxe & the `haxelib` tool installed, you'll need to install HaxeFlixel. In a terminal, run these commands:

1. `haxelib run lime setup flixel`
2. `haxelib run lime setup`
3. `haxelib install flixel-tools`
4. `haxelib run flixel-tools setup`

Awesome! You should now be ready to rock n roll with your HaxeFlixel development environment.

### Building & Testing
After you've setup your development environment, clone this repo and run `lime test neko`. The game should be running!
