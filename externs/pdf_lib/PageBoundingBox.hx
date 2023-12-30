package pdf_lib;

/**
	Represents a page bounding box.
	Usually `left` and `bottom` are 0 and right, top are equal
	to width, height if you want to clip to the whole page.
	
	       y
	       ^
	       | +--------+ (width,height)
	       | |        |
	       | |  Page  |
	       | |        |
	       | |        |
	(0,0) | +--------+
	       +----------> x
**/
typedef PageBoundingBox = {
	var left : Float;
	var bottom : Float;
	var right : Float;
	var top : Float;
};