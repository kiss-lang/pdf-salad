package pdf_lib;

typedef EmbedFontOptions = {
	@:optional
	var subset : Bool;
	@:optional
	var customName : String;
	@:optional
	var features : pdf_lib.cjs.types.fontkit.TypeFeatures;
};