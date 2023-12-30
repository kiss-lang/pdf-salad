package pdf_lib;

typedef PDFPageDrawTextOptions = {
	@:optional
	var color : Color;
	@:optional
	var opacity : Float;
	@:optional
	var blendMode : BlendMode;
	@:optional
	var font : PDFFont;
	@:optional
	var size : Float;
	@:optional
	var rotate : Rotation;
	@:optional
	var xSkew : Rotation;
	@:optional
	var ySkew : Rotation;
	@:optional
	var x : Float;
	@:optional
	var y : Float;
	@:optional
	var lineHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var wordBreaks : Array<String>;
};