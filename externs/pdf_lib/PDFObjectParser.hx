package pdf_lib;

@:jsRequire("pdf-lib", "PDFObjectParser") extern class PDFObjectParser extends pdf_lib.cjs.core.parser.baseparser.BaseParser {
	function new(byteStream:pdf_lib.cjs.core.parser.bytestream.ByteStream, context:PDFContext, ?capNumbers:Bool);
	private final context : PDFContext;
	function parseObject():PDFObject;
	private function parseNumberOrRef():ts.AnyOf2<PDFNumber, PDFRef>;
	private function parseHexString():PDFHexString;
	private function parseString():PDFString;
	private function parseName():PDFName;
	private function parseArray():PDFArray;
	private function parseDict():PDFDict;
	private function parseDictOrStream():ts.AnyOf2<PDFDict, PDFStream>;
	private function findEndOfStreamFallback(startPos:Position):Float;
	static var prototype : PDFObjectParser;
	static dynamic function forBytes(bytes:js.lib.Uint8Array, context:PDFContext, ?capNumbers:Bool):PDFObjectParser;
	static dynamic function forByteStream(byteStream:pdf_lib.cjs.core.parser.bytestream.ByteStream, context:PDFContext, ?capNumbers:Bool):PDFObjectParser;
}