package pdf_lib.cjs.types.fontkit;

/**
	Path objects are returned by glyphs and represent the actual vector outlines
	for each glyph in the font. Paths can be converted to SVG path data strings,
	or to functions that can be applied to render the path to a graphics context.
**/
typedef Path = {
	/**
		This property represents the path’s bounding box, i.e. the smallest
		rectangle that contains the entire path shape. This is the exact
		bounding box, taking into account control points that may be outside the
		visible shape.
	**/
	var bbox : BoundingBox;
	/**
		This property represents the path’s control box. It is like the
		bounding box, but it includes all points of the path, including control
		points of bezier segments. It is much faster to compute than the real
		bounding box, but less accurate if there are control points outside of the
		visible shape.
	**/
	var cbox : BoundingBox;
	/**
		Moves the virtual pen to the given x, y coordinates.
	**/
	function moveTo(x:Float, y:Float):Void;
	/**
		Adds a line to the path from the current point to the
		given x, y coordinates.
	**/
	function lineTo(x:Float, y:Float):Void;
	/**
		Adds a quadratic curve to the path from the current point to the
		given x, y coordinates using cpx, cpy as a control point.
	**/
	function quadraticCurveTo(cpx:Float, cpy:Float, x:Float, y:Float):Void;
	/**
		Adds a bezier curve to the path from the current point to the
		given x, y coordinates using cp1x, cp1y and cp2x, cp2y as control points.
	**/
	function bezierCurveTo(cp1x:Float, cp1y:Float, cp2x:Float, cp2y:Float, x:Float, y:Float):Void;
	/**
		Closes the current sub-path by drawing a straight line back to the
		starting point.
	**/
	function closePath():Void;
	/**
		Compiles the path to a JavaScript function that can be applied with a
		graphics context in order to render the path.
	**/
	function toFunction():haxe.Constraints.Function;
	/**
		Converts the path to an SVG path data string.
	**/
	function toSVG():String;
};