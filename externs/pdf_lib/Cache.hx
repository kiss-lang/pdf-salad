package pdf_lib;

@:jsRequire("pdf-lib", "Cache") extern class Cache<T> {
	private function new();
	private final populate : Dynamic;
	private var value : Dynamic;
	function getValue():Null<T>;
	function access():T;
	function invalidate():Void;
	static var prototype : Cache<Dynamic>;
	static function populatedBy<T_1>(populate:() -> T_1):Cache<T_1>;
}