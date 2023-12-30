package pdf_lib;

typedef LoadOptions = {
	@:optional
	var ignoreEncryption : Bool;
	@:optional
	var parseSpeed : ts.AnyOf2<Float, ParseSpeeds>;
	@:optional
	var throwOnInvalidObject : Bool;
	@:optional
	var updateMetadata : Bool;
	@:optional
	var capNumbers : Bool;
};