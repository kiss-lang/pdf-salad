package pdf_lib;

typedef Base64SaveOptions = {
	@:optional
	var dataUri : Bool;
	@:optional
	var useObjectStreams : Bool;
	@:optional
	var addDefaultPage : Bool;
	@:optional
	var objectsPerTick : Float;
	@:optional
	var updateFieldAppearances : Bool;
};