package pdf_lib;

typedef SaveOptions = {
	@:optional
	var useObjectStreams : Bool;
	@:optional
	var addDefaultPage : Bool;
	@:optional
	var objectsPerTick : Float;
	@:optional
	var updateFieldAppearances : Bool;
};