package pdf_lib;

typedef PDFPageDrawLineOptions = {
	var start : {
		var x : Float;
		var y : Float;
	};
	var end : {
		var x : Float;
		var y : Float;
	};
	@:optional
	var thickness : Float;
	@:optional
	var color : Color;
	@:optional
	var opacity : Float;
	@:optional
	var lineCap : LineCapStyle;
	@:optional
	var dashArray : Array<Float>;
	@:optional
	var dashPhase : Float;
	@:optional
	var blendMode : BlendMode;
};