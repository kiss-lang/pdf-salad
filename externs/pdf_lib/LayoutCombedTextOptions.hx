package pdf_lib;

typedef LayoutCombedTextOptions = {
	@:optional
	var fontSize : Float;
	var font : PDFFont;
	var bounds : LayoutBounds;
	var cellCount : Float;
};