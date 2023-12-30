package pdf_lib.cjs.utils;

@:jsRequire("pdf-lib/cjs/utils/async") @valueModuleOnly extern class Async {
	/**
		Returns a Promise that resolves after at least one tick of the
		Macro Task Queue occurs.
	**/
	static function waitForTick():js.lib.Promise<ts.Undefined>;
}