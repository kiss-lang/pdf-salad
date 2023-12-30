package pdf_lib.cjs.core.structures.pdfcrossrefstream;

@:jsRequire("pdf-lib/cjs/core/structures/PDFCrossRefStream", "EntryType") @:enum extern abstract EntryType(Int) from Int to Int {
	var Deleted;
	var Uncompressed;
	var Compressed;
}