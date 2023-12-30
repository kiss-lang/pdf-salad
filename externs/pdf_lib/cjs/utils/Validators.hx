package pdf_lib.cjs.utils;

@:jsRequire("pdf-lib/cjs/utils/validators") @valueModuleOnly extern class Validators {
	static function backtick(val:Dynamic):String;
	static function singleQuote(val:Dynamic):String;
	static function createValueErrorMsg(value:Dynamic, valueName:String, values:Array<pdf_lib.Primitive>):String;
	static function assertIsOneOf(value:Dynamic, valueName:String, allowedValues:ts.AnyOf2<Array<pdf_lib.Primitive>, haxe.DynamicAccess<pdf_lib.Primitive>>):Void;
	static function assertIsOneOfOrUndefined(value:Dynamic, valueName:String, allowedValues:ts.AnyOf2<Array<pdf_lib.Primitive>, haxe.DynamicAccess<pdf_lib.Primitive>>):Void;
	static function assertIsSubset(values:Array<Dynamic>, valueName:String, allowedValues:ts.AnyOf2<Array<pdf_lib.Primitive>, haxe.DynamicAccess<pdf_lib.Primitive>>):Void;
	static function getType(val:Dynamic):Dynamic;
	static function isType(value:Dynamic, type:pdf_lib.TypeDescriptor):Bool;
	static function createTypeErrorMsg(value:Dynamic, valueName:String, types:Array<pdf_lib.TypeDescriptor>):String;
	static function assertIs(value:Dynamic, valueName:String, types:Array<pdf_lib.TypeDescriptor>):Void;
	static function assertOrUndefined(value:Dynamic, valueName:String, types:Array<pdf_lib.TypeDescriptor>):Void;
	static function assertEachIs(values:Array<Dynamic>, valueName:String, types:Array<pdf_lib.TypeDescriptor>):Void;
	static function assertRange(value:Dynamic, valueName:String, min:Float, max:Float):Void;
	static function assertRangeOrUndefined(value:Dynamic, valueName:String, min:Float, max:Float):Void;
	static function assertMultiple(value:Dynamic, valueName:String, multiplier:Float):Void;
	static function assertInteger(value:Dynamic, valueName:String):Void;
	static function assertPositive(value:Float, valueName:String):Void;
}