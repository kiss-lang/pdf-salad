package pdf_lib;

@:jsRequire("pdf-lib", "PrintScaling") @:enum extern abstract PrintScaling(String) from String to String {
	/**
		No page scaling.
	**/
	var None;
	var AppDefault;
}