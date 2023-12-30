package pdf_lib;

typedef MultilineTextLayout = {
	var bounds : LayoutBounds;
	var lines : Array<TextPosition>;
	var fontSize : Float;
	var lineHeight : Float;
};