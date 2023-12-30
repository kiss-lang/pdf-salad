package pdf_lib;

/**
	Entries should be added using the [[addEntry]] and [[addDeletedEntry]]
	methods **in order of ascending object number**.
**/
@:jsRequire("pdf-lib", "PDFCrossRefSection") extern class PDFCrossRefSection {
	private function new();
	private var subsections : Dynamic;
	private var chunkIdx : Dynamic;
	private var chunkLength : Dynamic;
	function addEntry(ref:PDFRef, offset:Float):Void;
	function addDeletedEntry(ref:PDFRef, nextFreeObjectNumber:Float):Void;
	function toString():String;
	function sizeInBytes():Float;
	function copyBytesInto(buffer:js.lib.Uint8Array, offset:Float):Float;
	private var copySubsectionsIntoBuffer : Dynamic;
	private var copyEntriesIntoBuffer : Dynamic;
	private var append : Dynamic;
	static var prototype : PDFCrossRefSection;
	static dynamic function create():PDFCrossRefSection;
	static dynamic function createEmpty():PDFCrossRefSection;
}