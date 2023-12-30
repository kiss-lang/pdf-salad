package pdf_lib.cjs.types.fontkit;

/**
	Represents a glyph bounding box
**/
typedef BoundingBox = {
	var minX : Float;
	var minY : Float;
	var maxX : Float;
	var maxY : Float;
	var width : Float;
	var height : Float;
};