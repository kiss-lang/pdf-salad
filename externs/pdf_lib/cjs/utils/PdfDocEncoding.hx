package pdf_lib.cjs.utils;

@:jsRequire("pdf-lib/cjs/utils/pdfDocEncoding") @valueModuleOnly extern class PdfDocEncoding {
	/**
		Decode a byte array into a string using PDFDocEncoding.
	**/
	static function pdfDocEncodingDecode(bytes:js.lib.Uint8Array):String;
}