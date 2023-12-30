package pdf_lib;

@:jsRequire("pdf-lib", "RotationTypes") @:enum extern abstract RotationTypes(String) from String to String {
	var Degrees;
	var Radians;
}