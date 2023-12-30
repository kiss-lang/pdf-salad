package pdf_lib;

typedef LayoutTextOptions = {
	var alignment : TextAlignment;
	@:optional
	var fontSize : Float;
	var font : PDFFont;
	var bounds : LayoutBounds;
};