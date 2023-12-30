package pdf_lib;

typedef DrawLinesOfTextOptions = {
	var lineHeight : ts.AnyOf2<Float, PDFNumber>;
	var color : Color;
	var font : ts.AnyOf2<String, PDFName>;
	var size : ts.AnyOf2<Float, PDFNumber>;
	var rotate : Rotation;
	var xSkew : Rotation;
	var ySkew : Rotation;
	var x : ts.AnyOf2<Float, PDFNumber>;
	var y : ts.AnyOf2<Float, PDFNumber>;
	@:optional
	var graphicsState : ts.AnyOf2<String, PDFName>;
};