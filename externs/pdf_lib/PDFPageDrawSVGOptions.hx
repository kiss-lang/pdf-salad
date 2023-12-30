package pdf_lib;

typedef PDFPageDrawSVGOptions = {
	@:optional
	var x : Float;
	@:optional
	var y : Float;
	@:optional
	var scale : Float;
	@:optional
	var rotate : Rotation;
	@:optional
	var borderWidth : Float;
	@:optional
	var color : Color;
	@:optional
	var opacity : Float;
	@:optional
	var borderColor : Color;
	@:optional
	var borderOpacity : Float;
	@:optional
	var borderDashArray : Array<Float>;
	@:optional
	var borderDashPhase : Float;
	@:optional
	var borderLineCap : LineCapStyle;
	@:optional
	var blendMode : BlendMode;
};