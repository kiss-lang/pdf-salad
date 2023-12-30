package pdf_lib;

@:jsRequire("pdf-lib", "PDFCatalog") extern class PDFCatalog extends PDFDict {
	function Pages():PDFPageTree;
	function AcroForm():Null<PDFDict>;
	function getAcroForm():Null<PDFAcroForm>;
	function getOrCreateAcroForm():PDFAcroForm;
	function ViewerPreferences():Null<PDFDict>;
	function getViewerPreferences():Null<ViewerPreferences>;
	function getOrCreateViewerPreferences():ViewerPreferences;
	/**
		Inserts the given ref as a leaf node of this catalog's page tree at the
		specified index (zero-based). Also increments the `Count` of each node in
		the page tree hierarchy to accomodate the new page.
		
		Returns the ref of the PDFPageTree node into which `leafRef` was inserted.
	**/
	function insertLeafNode(leafRef:PDFRef, index:Float):PDFRef;
	function removeLeafNode(index:Float):Void;
	static var prototype : PDFCatalog;
	static dynamic function withContextAndPages(context:PDFContext, pages:ts.AnyOf2<PDFRef, PDFPageTree>):PDFCatalog;
	static dynamic function fromMapWithContext(map:pdf_lib.cjs.core.objects.pdfdict.DictMap, context:PDFContext):PDFCatalog;
}