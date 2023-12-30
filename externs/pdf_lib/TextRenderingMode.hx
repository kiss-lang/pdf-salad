package pdf_lib;

@:jsRequire("pdf-lib", "TextRenderingMode") @:enum extern abstract TextRenderingMode(Int) from Int to Int {
	var Fill;
	var Outline;
	var FillAndOutline;
	var Invisible;
	var FillAndClip;
	var OutlineAndClip;
	var FillAndOutlineAndClip;
	var Clip;
}