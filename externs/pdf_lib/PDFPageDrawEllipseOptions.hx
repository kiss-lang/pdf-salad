package pdf_lib;

typedef PDFPageDrawEllipseOptions = {
	@:optional
	var x : Float;
	@:optional
	var y : Float;
	@:optional
	var xScale : Float;
	@:optional
	var yScale : Float;
	@:optional
	var rotate : Rotation;
	@:optional
	var color : Color;
	@:optional
	var opacity : Float;
	@:optional
	var borderColor : Color;
	@:optional
	var borderOpacity : Float;
	@:optional
	var borderWidth : Float;
	@:optional
	var borderDashArray : Array<Float>;
	@:optional
	var borderDashPhase : Float;
	@:optional
	var borderLineCap : LineCapStyle;
	@:optional
	var blendMode : BlendMode;
};