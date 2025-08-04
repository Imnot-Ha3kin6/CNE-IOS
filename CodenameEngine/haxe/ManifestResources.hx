package;

import haxe.io.Bytes;
import haxe.io.Path;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

#if disable_preloader_assets
@:dox(hide) class ManifestResources {
	public static var preloadLibraries:Array<Dynamic>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;

	public static function init (config:Dynamic):Void {
		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();
	}
}
#else
@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

			if(!StringTools.endsWith (rootPath, "/")) {

				rootPath += "/";

			}

		}

		if (rootPath == null) {

			#if (ios || tvos || webassembly)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif (console || sys)
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		#if (openfl && !flash && !display)
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_pixel_otf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_vcr_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_monsterrat_ttf);
		
		#end

		var data, manifest, library, bundle;

		data = '{"name":null,"assets":"ah","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("assets", library);
		Assets.libraryPaths["default"] = rootPath + "manifest/default.json";
		

		library = Assets.getLibrary ("assets");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("assets");
		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

	}


}

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_mobile_arrows_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_mobile_arrows_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_mobile_virtual_input_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_mobile_virtual_input_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_alphabet_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characters_bf_car_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characters_bf_christmas_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characters_bf_dead_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characters_bf_holding_gf_dead_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characters_bf_holding_gf_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characters_bf_pixel_dead_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characters_bf_pixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characters_bf_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characters_da_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characters_dad_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characters_gf_car_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characters_gf_christmas_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characters_gf_pixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characters_gf_tankmen_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characters_gf_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characters_mom_car_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characters_mom_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characters_monster_christmas_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characters_monster_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characters_parents_christmas_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characters_pico_speakers_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characters_pico_speakers_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characters_pico_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characters_senpai_angry_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characters_senpai_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characters_spirit_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characters_spirit_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characters_spooky_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characters_tankman_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_config_discord_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_config_menuitems_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_dialogue_boxes_default_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_dialogue_boxes_hating_simulator_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_dialogue_boxes_hating_simulator_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_dialogue_boxes_spirit_creepy_box_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_dialogue_boxes_spirit_creepy_box_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_dialogue_characters_boyfriend_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_dialogue_characters_dad_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_dialogue_characters_niko_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_dialogue_characters_pixelbf_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_dialogue_characters_pixelbf_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_dialogue_characters_senpai_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_dialogue_characters_senpai_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_discord_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_freeplaysonglist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_notes_alt_anim_note_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_notes_no_anim_note_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_scripts_pixel_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_scripts_week6_pause_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_scripts_week7_balledlines_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_specialthanks_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_splashes_default_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_splashes_pixel_default_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_splashes_pixel_secret_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_splashes_secret_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_stages_limo_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_stages_limo_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_stages_mall_evil_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_stages_mall_evil_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_stages_mall_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_stages_philly_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_stages_philly_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_stages_school_evil_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_stages_school_evil_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_stages_school_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_stages_school_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_stages_spooky_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_stages_spooky_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_stages_stage_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_stages_tank_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_stages_tank_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_titlescreen_introtext_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_titlescreen_titlescreen_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_weeks_characters_bf_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_weeks_characters_dad_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_weeks_characters_gf_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_weeks_characters_mom_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_weeks_characters_parents_christmas_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_weeks_characters_pico_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_weeks_characters_senpai_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_weeks_characters_spooky_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_weeks_characters_tankman_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_weeks_weeks_tutorial_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_weeks_weeks_week1_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_weeks_weeks_week2_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_weeks_weeks_week3_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_weeks_weeks_week4_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_weeks_weeks_week5_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_weeks_weeks_week6_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_weeks_weeks_week7_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_weeks_weeks_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_pixel_otf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_vcr_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_bf_car_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_bf_car_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_bf_christmas_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_bf_christmas_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_bf_dead_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_bf_dead_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_bf_holding_gf_dead_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_bf_holding_gf_dead_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_bf_holding_gf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_bf_holding_gf_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_bf_pixel_dead_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_bf_pixel_dead_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_bf_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_bf_pixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_bf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_bf_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_da_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_da_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_dad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_dad_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_gf_animation_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_gf_spritemap1_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_gf_spritemap1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_gf_car_animation_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_gf_car_spritemap1_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_gf_car_spritemap1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_gf_christmas_animation_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_gf_christmas_spritemap1_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_gf_christmas_spritemap1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_gf_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_gf_pixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_gf_tankmen_animation_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_gf_tankmen_spritemap1_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_gf_tankmen_spritemap1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_mom_car_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_mom_car_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_mom_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_mom_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_monster_christmas_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_monster_christmas_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_monster_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_monster_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_parents_christmas_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_parents_christmas_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_pico_speakers_animation_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_pico_speakers_spritemap1_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_pico_speakers_spritemap1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_pico_speakers_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_pico_speakers_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_pico_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_pico_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_senpai_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_senpai_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_spirit_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_spirit_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_spooky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_spooky_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_tankman_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_tankman_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_credits_credit_icon_example_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_dialogue_boxes_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_dialogue_boxes_default_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_dialogue_boxes_pixel_dialoguebox_evil_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_dialogue_boxes_pixel_dialoguebox_evil_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_dialogue_boxes_pixel_dialoguebox_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_dialogue_boxes_pixel_dialoguebox_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_dialogue_characters_boyfriend_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_dialogue_characters_boyfriend_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_dialogue_characters_dad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_dialogue_characters_dad_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_dialogue_characters_niko_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_dialogue_characters_niko_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_dialogue_characters_pixel_boyfriend_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_dialogue_characters_pixel_boyfriend_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_dialogue_characters_pixel_senpai_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_dialogue_characters_pixel_senpai_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_autosave_delete_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_autosave_icons_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_bgs_charter_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_character_edit_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_character_ghost_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_character_woah_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_charter_add_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_charter_event_icons_add_camera_zoom_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_charter_event_icons_alt_animation_toggle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_charter_event_icons_bpm_change_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_charter_event_icons_camera_flash_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_charter_event_icons_camera_modulo_change_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_charter_event_icons_camera_movement_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_charter_event_icons_hscript_call_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_charter_event_icons_play_animation_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_charter_event_icons_scroll_speed_change_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_charter_event_icons_unknown_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_charter_event_spr_add_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_charter_event_spr_add_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_charter_event_spr_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_charter_event_spr_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_charter_event_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_charter_events_grid_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_charter_lock_strumline_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_charter_note_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_charter_strumline_drag_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_charter_strumline_info_bg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_delete_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_deleter_circle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_deleter_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_icons_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_new_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_audio_buttons_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_audio_icon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_audio_time_empty_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_audio_time_full_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_audio_volume_empty_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_audio_volume_full_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_button_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_checkbox_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_context_bg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_context_bg_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_context_icons_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_grayscale_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_grayscale_button_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_grayscale_popup_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_grayscale_popup_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_inputbox_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_inputbox_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_menu_item_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_menu_item_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_normal_popup_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_normal_popup_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_scrollbar_bg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_scrollbar_icon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_scrollbar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_scrollbar_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_selection_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_selection_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_slider_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_textbox_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_topmenu_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_topmenu_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_upload_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_ui_warning_popup_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_warnings_error_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_editors_warnings_warning_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_cutscenes_tank_guns_tankman_animation_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_cutscenes_tank_guns_tankman_spritemap1_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_cutscenes_tank_guns_tankman_spritemap1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_cutscenes_tank_stress_pico_animation_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_cutscenes_tank_stress_pico_spritemap1_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_cutscenes_tank_stress_pico_spritemap1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_cutscenes_tank_stress_tankman_animation_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_cutscenes_tank_stress_tankman_spritemap1_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_cutscenes_tank_stress_tankman_spritemap1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_cutscenes_tank_ugh_tankman_animation_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_cutscenes_tank_ugh_tankman_spritemap1_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_cutscenes_tank_ugh_tankman_spritemap1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_cutscenes_weeb_senpaicrazy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_cutscenes_weeb_senpaicrazy_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_cutscenes_weeb_spiritfaceforward_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_go_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_healthbar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_notes_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_notes_default_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_ready_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_restart_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_score_bad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_score_combo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_score_good_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_score_num0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_score_num1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_score_num2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_score_num3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_score_num4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_score_num5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_score_num6_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_score_num7_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_score_num8_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_score_num9_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_score_shit_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_score_sick_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_set_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_splashes_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_splashes_default_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_splashes_secret_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_game_splashes_secret_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_bf_icon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_bf_old_icon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_bf_pixel_data_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_bf_pixel_icon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_dad_icon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_face_icon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_gf_icon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_gf_pixel_data_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_gf_pixel_icon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_mom_icon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_monster_icon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_parents_christmas_icon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_pico_icon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_senpai_data_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_senpai_icon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_spirit_data_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_spirit_icon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_spooky_icon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_tankman_icon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_alphabet_bold_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_alphabet_bold_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_alphabet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_alphabet_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_mainmenu_credits_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_mainmenu_credits_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_mainmenu_donate_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_mainmenu_donate_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_mainmenu_freeplay_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_mainmenu_freeplay_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_mainmenu_options_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_mainmenu_options_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_mainmenu_story_mode_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_mainmenu_story_mode_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_menubg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_menubgblue_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_menubgmagenta_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_menucontrast_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_menudesat_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_menueditors_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_menutransparent_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_options_checkboxthingie_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_options_checkboxthingie_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_pausealt_bflol_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_pausealt_bflol_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_pausealt_pausebg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_pausealt_pauseui_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_pausealt_pauseui_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_storymenu_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_storymenu_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_storymenu_characters_bf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_storymenu_characters_bf_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_storymenu_characters_dad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_storymenu_characters_dad_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_storymenu_characters_gf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_storymenu_characters_gf_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_storymenu_characters_mom_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_storymenu_characters_mom_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_storymenu_characters_parents_christmas_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_storymenu_characters_parents_christmas_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_storymenu_characters_pico_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_storymenu_characters_pico_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_storymenu_characters_senpai_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_storymenu_characters_senpai_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_storymenu_characters_spooky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_storymenu_characters_spooky_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_storymenu_characters_tankman_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_storymenu_characters_tankman_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_storymenu_difficulties_easy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_storymenu_difficulties_hard_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_storymenu_difficulties_normal_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_storymenu_weeks_tutorial_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_storymenu_weeks_week1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_storymenu_weeks_week2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_storymenu_weeks_week3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_storymenu_weeks_week4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_storymenu_weeks_week5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_storymenu_weeks_week6_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_storymenu_weeks_week7_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_titlescreen_gf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_titlescreen_gf_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_titlescreen_logo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_titlescreen_logo_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_titlescreen_newgrounds_logo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_titlescreen_titleenter_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_titlescreen_titleenter_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_transitionspr_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_update_bf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menus_update_bf_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_default_stageback_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_default_stagecurtains_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_default_stagefront_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_default_stage_light_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_limo_bglimo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_limo_bglimo_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_limo_dumb_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_limo_fastcarlol_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_limo_limodancer_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_limo_limodancer_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_limo_limodrive_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_limo_limodrive_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_limo_limooverlay_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_limo_limosunset_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_mall_bgescalator_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_mall_bgwalls_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_mall_bottombop_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_mall_bottombop_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_mall_christmastree_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_mall_christmaswall_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_mall_evilbg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_mall_evilsnow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_mall_eviltree_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_mall_fgsnow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_mall_santa_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_mall_santa_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_mall_upperbop_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_mall_upperbop_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_philly_behindtrain_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_philly_city_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_philly_sky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_philly_street_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_philly_train_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_philly_win_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_animatedevilschool_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_animatedevilschool_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_bgfreaks_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_bgfreaks_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_pause_bg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_pause_concept_pfi extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_petals_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_petals_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_ui_arrowends_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_ui_arrows_pixels_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_ui_bad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_ui_combo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_ui_go_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_ui_good_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_ui_hand_textbox_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_ui_num0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_ui_num1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_ui_num2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_ui_num3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_ui_num4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_ui_num5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_ui_num6_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_ui_num7_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_ui_num8_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_ui_num9_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_ui_pixel_secret_splashes_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_ui_pixel_secret_splashes_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_ui_pixel_splashes_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_ui_pixel_splashes_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_ui_ready_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_ui_set_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_ui_shit_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_ui_sick_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_weebschool_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_weebsky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_weebstreet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_weebtrees_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_weebtrees_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_school_weebtreesback_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_spooky_halloween_bg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_spooky_halloween_bg_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_tank_smokeleft_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_tank_smokeleft_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_tank_smokeright_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_tank_smokeright_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_tank_tank0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_tank_tank0_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_tank_tank1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_tank_tank1_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_tank_tank2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_tank_tank2_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_tank_tank3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_tank_tank3_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_tank_tank4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_tank_tank4_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_tank_tank5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_tank_tank5_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_tank_tankbuildings_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_tank_tankclouds_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_tank_tankground_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_tank_tankmankilled1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_tank_tankmankilled1_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_tank_tankmountains_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_tank_tankrolling_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_tank_tankrolling_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_tank_tankruins_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_tank_tanksky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_tank_tankwatchtower_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stages_tank_tankwatchtower_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_mobile_arrows_png1 extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_mobile_arrows_xml1 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_mobile_virtual_input_png1 extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_mobile_virtual_input_txt1 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_breakfast_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_distorto_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_freakymenu_ini extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_freakymenu_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_gameover_ini extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_gameover_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_pixel_gameover_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_pixel_lunchbox_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_pixel_lunchboxscary_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shaders_chromaticaberration_frag extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shaders_coloredvignette_frag extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shaders_engine_cameraclip_frag extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shaders_engine_circleprofilepicture_frag extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shaders_engine_colorpicker_frag extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shaders_engine_editorblur_frag extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shaders_engine_editorblurfast_frag extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shaders_engine_editorwaveforms_frag extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shaders_engine_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shaders_engine_updatershader_frag extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shaders_noise128_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shaders_noise256_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shaders_noise512_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shaders_pixelzoomshader_frag extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_blammed_charts_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_blammed_charts_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_blammed_charts_normal_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_blammed_meta_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_blammed_song_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_blammed_song_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_bopeebo_charts_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_bopeebo_charts_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_bopeebo_charts_normal_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_bopeebo_meta_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_bopeebo_scripts_hey_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_bopeebo_song_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_bopeebo_song_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_cocoa_charts_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_cocoa_charts_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_cocoa_charts_normal_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_cocoa_meta_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_cocoa_scripts_week5_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_cocoa_song_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_cocoa_song_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_dadbattle_charts_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_dadbattle_charts_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_dadbattle_charts_normal_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_dadbattle_meta_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_dadbattle_song_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_dadbattle_song_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_eggnog_charts_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_eggnog_charts_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_eggnog_charts_normal_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_eggnog_end_cutscene_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_eggnog_meta_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_eggnog_scripts_week5_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_eggnog_song_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_eggnog_song_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_fresh_charts_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_fresh_charts_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_fresh_charts_normal_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_fresh_meta_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_fresh_scripts_gf_speed_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_fresh_song_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_fresh_song_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_guns_charts_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_guns_charts_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_guns_charts_normal_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_guns_cutscene_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_guns_meta_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_guns_song_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_guns_song_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_high_charts_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_high_charts_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_high_charts_normal_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_high_meta_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_high_song_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_high_song_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_milf_charts_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_milf_charts_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_milf_charts_normal_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_milf_meta_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_milf_scripts_bump_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_milf_song_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_milf_song_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_monster_charts_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_monster_charts_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_monster_charts_normal_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_monster_meta_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_monster_song_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_monster_song_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_philly_nice_charts_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_philly_nice_charts_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_philly_nice_charts_normal_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_philly_nice_meta_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_philly_nice_song_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_philly_nice_song_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_pico_charts_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_pico_charts_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_pico_charts_normal_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_pico_meta_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_pico_song_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_pico_song_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_roses_charts_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_roses_charts_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_roses_charts_normal_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_roses_dialogue_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_roses_dialogue_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_roses_end_cutscene_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_roses_meta_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_roses_song_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_roses_song_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_satin_panties_charts_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_satin_panties_charts_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_satin_panties_charts_normal_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_satin_panties_meta_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_satin_panties_song_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_satin_panties_song_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_senpai_charts_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_senpai_charts_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_senpai_charts_normal_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_senpai_dialogue_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_senpai_meta_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_senpai_song_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_senpai_song_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_south_charts_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_south_charts_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_south_charts_normal_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_south_meta_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_south_song_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_south_song_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_spookeez_charts_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_spookeez_charts_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_spookeez_charts_normal_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_spookeez_meta_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_spookeez_song_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_spookeez_song_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_stress_charts_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_stress_charts_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_stress_charts_normal_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_stress_cutscene_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_stress_meta_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_stress_scripts_tankmenrun_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_stress_song_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_stress_song_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_test_charts_normal_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_test_dialogue_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_test_dialogue_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_test_meta_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_test_scripts_modchart_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_test_song_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_test_song_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_thorns_charts_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_thorns_charts_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_thorns_charts_normal_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_thorns_creepydialogue_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_thorns_cutscene_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_thorns_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_thorns_meta_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_thorns_scripts_aberration_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_thorns_song_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_thorns_song_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_tutorial_charts_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_tutorial_charts_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_tutorial_charts_normal_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_tutorial_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_tutorial_meta_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_tutorial_scripts_zoom_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_tutorial_song_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_ugh_charts_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_ugh_charts_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_ugh_charts_normal_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_ugh_cutscene_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_ugh_meta_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_ugh_song_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_ugh_song_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_winter_horrorland_charts_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_winter_horrorland_charts_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_winter_horrorland_charts_normal_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_winter_horrorland_cutscene_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_winter_horrorland_meta_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_winter_horrorland_scripts_funnibump_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_winter_horrorland_song_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_winter_horrorland_song_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_badnoise1_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_badnoise2_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_badnoise3_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_carpass0_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_carpass1_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_cutscenes_tank_guns_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_cutscenes_tank_stress_censor_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_cutscenes_tank_stress_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_cutscenes_tank_ugh_1_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_cutscenes_tank_ugh_2_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_cutscenes_tank_ugh_beep_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_cutscenes_weeb_senpai_dies_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_dialogue_gf_normal1_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_dialogue_gf_normal2_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_dialogue_gf_normal3_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_dialogue_gf_normal4_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_dialogue_next_pixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_dialogue_next_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_dialogue_text_pixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_editors_charter_hitsound_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_editors_charter_metronome_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_gameoverend_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_gameoversfx_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_intro1_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_intro2_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_intro3_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_introgo_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_jeffgameover_jeffgameover_1_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_jeffgameover_jeffgameover_10_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_jeffgameover_jeffgameover_11_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_jeffgameover_jeffgameover_12_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_jeffgameover_jeffgameover_13_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_jeffgameover_jeffgameover_14_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_jeffgameover_jeffgameover_15_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_jeffgameover_jeffgameover_16_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_jeffgameover_jeffgameover_17_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_jeffgameover_jeffgameover_18_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_jeffgameover_jeffgameover_19_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_jeffgameover_jeffgameover_2_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_jeffgameover_jeffgameover_20_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_jeffgameover_jeffgameover_21_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_jeffgameover_jeffgameover_22_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_jeffgameover_jeffgameover_23_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_jeffgameover_jeffgameover_24_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_jeffgameover_jeffgameover_25_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_jeffgameover_jeffgameover_3_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_jeffgameover_jeffgameover_4_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_jeffgameover_jeffgameover_5_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_jeffgameover_jeffgameover_6_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_jeffgameover_jeffgameover_7_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_jeffgameover_jeffgameover_8_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_jeffgameover_jeffgameover_9_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_lights_shut_off_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_lights_turn_on_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_menu_cancel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_menu_checkboxchecked_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_menu_checkboxunchecked_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_menu_confirm_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_menu_scroll_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_menu_volume_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_menu_warningmenu_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_missnote1_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_missnote2_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_missnote3_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_pixel_angry_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_pixel_angry_text_box_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_pixel_clicktext_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_pixel_gameoverend_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_pixel_gameoversfx_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_pixel_intro1_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_pixel_intro2_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_pixel_intro3_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_pixel_introgo_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_pixel_pixeltext_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_pixel_type_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_sounds_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_soundtest_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_thunder_1_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_thunder_2_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_train_passes_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_videos_kickstarter_mp4 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__do_not_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_circle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_diagonal_gradient_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_diamond_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_square_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flxanimate_images_pivot_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_assets_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:file("C:/Users/dmort/Downloads/CodenameEngine-Mobile-main/CodenameEngine-Mobile-main/.haxelib/flixel/5,4,0/assets/sounds/beep.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends haxe.io.Bytes {}
@:keep @:file("C:/Users/dmort/Downloads/CodenameEngine-Mobile-main/CodenameEngine-Mobile-main/.haxelib/flixel/5,4,0/assets/sounds/flixel.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends haxe.io.Bytes {}
@:keep @:font("C:/Users/dmort/Downloads/CodenameEngine-Mobile-main/CodenameEngine-Mobile-main/.haxelib/flixel/5,4,0/assets/fonts/nokiafc22.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:keep @:font("C:/Users/dmort/Downloads/CodenameEngine-Mobile-main/CodenameEngine-Mobile-main/.haxelib/flixel/5,4,0/assets/fonts/monsterrat.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:keep @:image("C:/Users/dmort/Downloads/CodenameEngine-Mobile-main/CodenameEngine-Mobile-main/.haxelib/flixel/5,4,0/assets/images/ui/button.png") @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:keep @:image("C:/Users/dmort/Downloads/CodenameEngine-Mobile-main/CodenameEngine-Mobile-main/.haxelib/flixel/5,4,0/assets/images/logo/default.png") @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}
@:keep @:image("C:/Users/dmort/Downloads/CodenameEngine-Mobile-main/CodenameEngine-Mobile-main/.haxelib/flixel-addons/3,3,2/assets/images/transitions/circle.png") @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_circle_png extends lime.graphics.Image {}
@:keep @:image("C:/Users/dmort/Downloads/CodenameEngine-Mobile-main/CodenameEngine-Mobile-main/.haxelib/flixel-addons/3,3,2/assets/images/transitions/diagonal_gradient.png") @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_diagonal_gradient_png extends lime.graphics.Image {}
@:keep @:image("C:/Users/dmort/Downloads/CodenameEngine-Mobile-main/CodenameEngine-Mobile-main/.haxelib/flixel-addons/3,3,2/assets/images/transitions/diamond.png") @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_diamond_png extends lime.graphics.Image {}
@:keep @:image("C:/Users/dmort/Downloads/CodenameEngine-Mobile-main/CodenameEngine-Mobile-main/.haxelib/flixel-addons/3,3,2/assets/images/transitions/square.png") @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_square_png extends lime.graphics.Image {}
@:keep @:image("C:/Users/dmort/Downloads/CodenameEngine-Mobile-main/CodenameEngine-Mobile-main/.haxelib/flxanimate/3,0,4/assets/images/pivot.png") @:noCompletion #if display private #end class __ASSET__flxanimate_images_pivot_png extends lime.graphics.Image {}
@:keep @:file("export/release/ios/CodenameEngine/obj/tmp/manifest/assets.json") @:noCompletion #if display private #end class __ASSET__manifest_assets_json extends haxe.io.Bytes {}

@:keep @:noCompletion #if display private #end class __ASSET__assets_fonts_pixel_otf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/pixel.otf"; name = "Pixel Arial 11 Bold"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__assets_fonts_vcr_ttf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/vcr.ttf"; name = "VCR OSD Mono"; super (); }}


#else

@:keep @:expose('__ASSET__assets_fonts_pixel_otf') @:noCompletion #if display private #end class __ASSET__assets_fonts_pixel_otf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/pixel.otf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Pixel Arial 11 Bold"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__assets_fonts_vcr_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/vcr.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "VCR OSD Mono"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/nokiafc22.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/monsterrat.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Monsterrat"; super (); }}


#end

#if (openfl && !flash)

#if html5
@:keep @:expose('__ASSET__OPENFL__assets_fonts_pixel_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_pixel_otf extends openfl.text.Font { public function new () { name = "Pixel Arial 11 Bold"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_vcr_ttf extends openfl.text.Font { public function new () { name = "VCR OSD Mono"; super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#else
@:keep @:expose('__ASSET__OPENFL__assets_fonts_pixel_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_pixel_otf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/pixel.otf"; name = "Pixel Arial 11 Bold"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_vcr_ttf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/vcr.ttf"; name = "VCR OSD Mono"; super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#end

#end
#end

#end