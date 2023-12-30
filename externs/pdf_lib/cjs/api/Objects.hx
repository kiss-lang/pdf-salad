package pdf_lib.cjs.api;

@:jsRequire("pdf-lib/cjs/api/objects") @valueModuleOnly extern class Objects {
	static function asPDFName(name:ts.AnyOf2<String, pdf_lib.PDFName>):pdf_lib.PDFName;
	static function asPDFNumber(num:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFNumber;
	static function asNumber(num:ts.AnyOf2<Float, pdf_lib.PDFNumber>):Float;
}