package pdf_lib;

@:jsRequire("pdf-lib", "PDFXRefStreamParser") extern class PDFXRefStreamParser {
	function new(rawStream:PDFRawStream);
	private var alreadyParsed : Dynamic;
	private final dict : Dynamic;
	private final context : Dynamic;
	private final bytes : Dynamic;
	private final subsections : Dynamic;
	private final byteWidths : Dynamic;
	function parseIntoContext():Array<pdf_lib.cjs.core.parser.pdfxrefstreamparser.Entry>;
	private var parseEntries : Dynamic;
	static var prototype : PDFXRefStreamParser;
	static dynamic function forStream(rawStream:PDFRawStream):PDFXRefStreamParser;
}