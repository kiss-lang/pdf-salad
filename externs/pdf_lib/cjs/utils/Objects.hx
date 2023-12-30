package pdf_lib.cjs.utils;

@:jsRequire("pdf-lib/cjs/utils/objects") @valueModuleOnly extern class Objects {
	static function values(obj:Dynamic):Array<Dynamic>;
	static final StandardFontValues : Array<Dynamic>;
	static function isStandardFont(input:Dynamic):Bool;
	static function rectanglesAreEqual(a:{ var x : Float; var y : Float; var width : Float; var height : Float; }, b:{ var x : Float; var y : Float; var width : Float; var height : Float; }):Bool;
}