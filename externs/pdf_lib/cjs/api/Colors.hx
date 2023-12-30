package pdf_lib.cjs.api;

@:jsRequire("pdf-lib/cjs/api/colors") @valueModuleOnly extern class Colors {
	static function grayscale(gray:Float):pdf_lib.Grayscale;
	static function rgb(red:Float, green:Float, blue:Float):pdf_lib.RGB;
	static function cmyk(cyan:Float, magenta:Float, yellow:Float, key:Float):pdf_lib.CMYK;
	static function setFillingColor(color:pdf_lib.Color):pdf_lib.PDFOperator;
	static function setStrokingColor(color:pdf_lib.Color):pdf_lib.PDFOperator;
	static function componentsToColor(?comps:Array<Float>, ?scale:Float):Null<pdf_lib.Color>;
	static function colorToComponents(color:pdf_lib.Color):Array<Float>;
}