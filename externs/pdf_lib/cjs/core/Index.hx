package pdf_lib.cjs.core;

@:jsRequire("pdf-lib/cjs/core/index") @valueModuleOnly extern class Index {
	static final PDFNull : pdf_lib.PDFNull;
	static function decodePDFRawStream(__0:pdf_lib.PDFRawStream):pdf_lib.cjs.core.streams.stream.StreamType;
	static function createPDFAcroFields(?kidDicts:pdf_lib.PDFArray):Array<ts.Tuple2<pdf_lib.PDFAcroField, pdf_lib.PDFRef>>;
	static function createPDFAcroField(dict:pdf_lib.PDFDict, ref:pdf_lib.PDFRef):pdf_lib.PDFAcroField;
}