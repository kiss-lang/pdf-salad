package pdf_lib.cjs.core.structures.pdfcrossrefstream;

typedef CompressedEntry = {
	var type : Int;
	var ref : pdf_lib.PDFRef;
	var objectStreamRef : pdf_lib.PDFRef;
	var index : Float;
};