package pdf_lib;

@:jsRequire("pdf-lib", "PDFParser") extern class PDFParser extends PDFObjectParser {
	function new(pdfBytes:js.lib.Uint8Array, ?objectsPerTick:Float, ?throwOnInvalidObject:Bool, ?capNumbers:Bool);
	private final objectsPerTick : Dynamic;
	private final throwOnInvalidObject : Dynamic;
	private var alreadyParsed : Dynamic;
	private var parsedObjects : Dynamic;
	function parseDocument():js.lib.Promise<PDFContext>;
	private var maybeRecoverRoot : Dynamic;
	private var parseHeader : Dynamic;
	private var parseIndirectObjectHeader : Dynamic;
	private var matchIndirectObjectHeader : Dynamic;
	private var shouldWaitForTick : Dynamic;
	private var parseIndirectObject : Dynamic;
	private var tryToParseInvalidIndirectObject : Dynamic;
	private var parseIndirectObjects : Dynamic;
	private var maybeParseCrossRefSection : Dynamic;
	private var maybeParseTrailerDict : Dynamic;
	private var maybeParseTrailer : Dynamic;
	private var parseDocumentSection : Dynamic;
	/**
		This operation is not necessary for valid PDF files. But some invalid PDFs
		contain jibberish in between indirect objects. This method is designed to
		skip past that jibberish, should it exist, until it reaches the next
		indirect object header, an xref table section, or the file trailer.
	**/
	private var skipJibberish : Dynamic;
	/**
		Skips the binary comment following a PDF header. The specification
		defines this binary comment (section 7.5.2 File Header) as a sequence of 4
		or more bytes that are 128 or greater, and which are preceded by a "%".
		
		This would imply that to strip out this binary comment, we could check for
		a sequence of bytes starting with "%", and remove all subsequent bytes that
		are 128 or greater. This works for many documents that properly comply with
		the spec. But in the wild, there are PDFs that omit the leading "%", and
		include bytes that are less than 128 (e.g. 0 or 1). So in order to parse
		these headers correctly, we just throw out all bytes leading up to the
		first indirect object header.
	**/
	private var skipBinaryHeaderComment : Dynamic;
	static var prototype : PDFParser;
	static dynamic function forBytesWithOptions(pdfBytes:js.lib.Uint8Array, ?objectsPerTick:Float, ?throwOnInvalidObject:Bool, ?capNumbers:Bool):PDFParser;
}