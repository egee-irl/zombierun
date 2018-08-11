package;

import flixel.util.FlxColor;
import flixel.FlxState;
import flixel.FlxG;

class PlayState extends FlxState
{
	override public function create():Void
	{
		super.create(); // Not sure if this is needed..

		FlxG.mouse.visible = false;
		var background = new flixel.FlxSprite(0, 0);
		background.loadGraphic("assets/images/GrassTextureTerrain1.jpg");
		add(background);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
