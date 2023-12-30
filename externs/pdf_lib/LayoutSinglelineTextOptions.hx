package pdf_lib;

typedef LayoutSinglelineTextOptions = {
	var alignment : TextAlignment;
	@:optional
	var fontSize : Float;
	var font : PDFFont;
	var bounds : LayoutBounds;
};