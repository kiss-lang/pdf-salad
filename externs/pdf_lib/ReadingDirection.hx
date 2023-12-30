package pdf_lib;

@:jsRequire("pdf-lib", "ReadingDirection") @:enum extern abstract ReadingDirection(String) from String to String {
	/**
		The predominant reading order is Left to Right.
	**/
	var L2R;
	/**
		The predominant reading order is Right to left (including vertical writing
		systems, such as Chinese, Japanese and Korean).
	**/
	var R2L;
}