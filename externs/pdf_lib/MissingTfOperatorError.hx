package pdf_lib;

@:jsRequire("pdf-lib", "MissingTfOperatorError") extern class MissingTfOperatorError extends js.lib.Error {
	function new(fieldName:String);
	static var prototype : MissingTfOperatorError;
}