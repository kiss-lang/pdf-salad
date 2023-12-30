package pdf_lib;

/**
	Entries should be added using the [[addDeletedEntry]],
	[[addUncompressedEntry]], and [[addCompressedEntry]] methods
	**in order of ascending object number**.
**/
@:jsRequire("pdf-lib", "PDFCrossRefStream") extern class PDFCrossRefStream extends PDFFlateStream {
	private function new();
	private final entries : Dynamic;
	private final entryTuplesCache : Dynamic;
	private final maxByteWidthsCache : Dynamic;
	private final indexCache : Dynamic;
	function addDeletedEntry(ref:PDFRef, nextFreeObjectNumber:Float):Void;
	function addUncompressedEntry(ref:PDFRef, offset:Float):Void;
	function addCompressedEntry(ref:PDFRef, objectStreamRef:PDFRef, index:Float):Void;
	function clone(?context:PDFContext):PDFCrossRefStream;
	function getUnencodedContentsSize():Float;
	private var computeIndex : Dynamic;
	private var computeEntryTuples : Dynamic;
	private var computeMaxEntryByteWidths : Dynamic;
	static var prototype : PDFCrossRefStream;
	static dynamic function create(dict:PDFDict, ?encode:Bool):PDFCrossRefStream;
	static dynamic function of(dict:PDFDict, entries:Array<pdf_lib.cjs.core.structures.pdfcrossrefstream.Entry>, ?encode:Bool):PDFCrossRefStream;
}