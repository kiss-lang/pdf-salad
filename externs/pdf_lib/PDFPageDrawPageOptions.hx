package pdf_lib;

typedef PDFPageDrawPageOptions = {
	@:optional
	var x : Float;
	@:optional
	var y : Float;
	@:optional
	var xScale : Float;
	@:optional
	var yScale : Float;
	@:optional
	var width : Float;
	@:optional
	var height : Float;
	@:optional
	var rotate : Rotation;
	@:optional
	var xSkew : Rotation;
	@:optional
	var ySkew : Rotation;
	@:optional
	var opacity : Float;
	@:optional
	var blendMode : BlendMode;
};