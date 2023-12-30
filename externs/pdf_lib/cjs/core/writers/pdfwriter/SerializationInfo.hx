package pdf_lib.cjs.core.writers.pdfwriter;

typedef SerializationInfo = {
	var size : Float;
	var header : pdf_lib.PDFHeader;
	var indirectObjects : Array<ts.Tuple2<pdf_lib.PDFRef, pdf_lib.PDFObject>>;
	@:optional
	var xref : pdf_lib.PDFCrossRefSection;
	@:optional
	var trailerDict : pdf_lib.PDFTrailerDict;
	var trailer : pdf_lib.PDFTrailer;
};