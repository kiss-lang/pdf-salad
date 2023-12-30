package pdf_lib;

@:jsRequire("pdf-lib", "Duplex") @:enum extern abstract Duplex(String) from String to String {
	/**
		The PDF reader should print single-sided.
	**/
	var Simplex;
	/**
		The PDF reader should print double sided and flip on the short edge of the
		sheet.
	**/
	var DuplexFlipShortEdge;
	/**
		The PDF reader should print double sided and flip on the long edge of the
		sheet.
	**/
	var DuplexFlipLongEdge;
}