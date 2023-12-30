package pdf_lib.cjs.utils.rng;

/**
	Generates a pseudo random number. Although it is not cryptographically secure
	and uniformly distributed, it is not a concern for the intended use-case,
	which is to generate distinct numbers.
	
	Credit: https://stackoverflow.com/a/19303725/10254049
**/
@:jsRequire("pdf-lib/cjs/utils/rng", "SimpleRNG") extern class SimpleRNG {
	private function new();
	private var seed : Dynamic;
	function nextInt():Float;
	static var prototype : SimpleRNG;
	static dynamic function withSeed(seed:Float):SimpleRNG;
}