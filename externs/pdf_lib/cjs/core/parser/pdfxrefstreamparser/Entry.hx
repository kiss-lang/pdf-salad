package pdf_lib.cjs.core.parser.pdfxrefstreamparser;

typedef Entry = {
	var ref : pdf_lib.PDFRef;
	var offset : Float;
	var deleted : Bool;
	var inObjectStream : Bool;
};