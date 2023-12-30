package pdf_lib.cjs.api.form.pdffield;

typedef FieldAppearanceOptions = {
	@:optional
	var x : Float;
	@:optional
	var y : Float;
	@:optional
	var width : Float;
	@:optional
	var height : Float;
	@:optional
	var textColor : pdf_lib.Color;
	@:optional
	var backgroundColor : pdf_lib.Color;
	@:optional
	var borderColor : pdf_lib.Color;
	@:optional
	var borderWidth : Float;
	@:optional
	var rotate : pdf_lib.Rotation;
	@:optional
	var font : pdf_lib.PDFFont;
	@:optional
	var hidden : Bool;
};