package pdf_lib;

@:jsRequire("pdf-lib", "NumberParsingError") extern class NumberParsingError extends js.lib.Error {
	function new(pos:Position, value:String);
	static var prototype : NumberParsingError;
}