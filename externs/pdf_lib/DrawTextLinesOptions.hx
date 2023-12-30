package pdf_lib;

typedef DrawTextLinesOptions = {
	var color : Color;
	var font : ts.AnyOf2<String, PDFName>;
	var size : ts.AnyOf2<Float, PDFNumber>;
	var rotate : Rotation;
	var xSkew : Rotation;
	var ySkew : Rotation;
};