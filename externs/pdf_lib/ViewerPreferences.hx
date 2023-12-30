package pdf_lib;

@:jsRequire("pdf-lib", "ViewerPreferences") extern class ViewerPreferences {
	private function new(dict:PDFDict);
	final dict : PDFDict;
	private function lookupBool(key:BoolViewerPrefKey):Null<PDFBool>;
	private function lookupName(key:NameViewerPrefKey):Null<PDFName>;
	function HideToolbar():Null<PDFBool>;
	function HideMenubar():Null<PDFBool>;
	function HideWindowUI():Null<PDFBool>;
	function FitWindow():Null<PDFBool>;
	function CenterWindow():Null<PDFBool>;
	function DisplayDocTitle():Null<PDFBool>;
	function NonFullScreenPageMode():Null<PDFName>;
	function Direction():Null<PDFName>;
	function PrintScaling():Null<PDFName>;
	function Duplex():Null<PDFName>;
	function PickTrayByPDFSize():Null<PDFBool>;
	function PrintPageRange():Null<PDFArray>;
	function NumCopies():Null<PDFNumber>;
	/**
		Returns `true` if PDF readers should hide the toolbar menus when displaying
		this document.
	**/
	function getHideToolbar():Bool;
	/**
		Returns `true` if PDF readers should hide the menu bar when displaying this
		document.
	**/
	function getHideMenubar():Bool;
	/**
		Returns `true` if PDF readers should hide the user interface elements in
		the document's window (such as scroll bars and navigation controls),
		leaving only the document's contents displayed.
	**/
	function getHideWindowUI():Bool;
	/**
		Returns `true` if PDF readers should resize the document's window to fit
		the size of the first displayed page.
	**/
	function getFitWindow():Bool;
	/**
		Returns `true` if PDF readers should position the document's window in the
		center of the screen.
	**/
	function getCenterWindow():Bool;
	/**
		Returns `true` if the window's title bar should display the document
		`Title`, taken from the document metadata (see [[PDFDocument.getTitle]]).
		Returns `false` if the title bar should instead display the filename of the
		PDF file.
	**/
	function getDisplayDocTitle():Bool;
	/**
		Returns the page mode, which tells the PDF reader how to display the
		document after exiting full-screen mode.
	**/
	function getNonFullScreenPageMode():NonFullScreenPageMode;
	/**
		Returns the predominant reading order for text.
	**/
	function getReadingDirection():ReadingDirection;
	/**
		Returns the page scaling option that the PDF reader should select when the
		print dialog is displayed.
	**/
	function getPrintScaling():PrintScaling;
	/**
		Returns the paper handling option that should be used when printing the
		file from the print dialog.
	**/
	function getDuplex():Null<Duplex>;
	/**
		Returns `true` if the PDF page size should be used to select the input
		paper tray.
	**/
	function getPickTrayByPDFSize():Null<Bool>;
	/**
		Returns an array of page number ranges, which are the values used to
		initialize the print dialog box when the file is printed. Each range
		specifies the first (`start`) and last (`end`) pages in a sub-range of
		pages to be printed. The first page of the PDF file is denoted by 0.
		For example:
		```js
		const viewerPrefs = pdfDoc.catalog.getOrCreateViewerPreferences()
		const includesPage3 = viewerPrefs
		   .getPrintRanges()
		   .some(pr => pr.start =< 2 && pr.end >= 2)
		if (includesPage3) console.log('printRange includes page 3')
		```
	**/
	function getPrintPageRange():Array<PageRange>;
	/**
		Returns the number of copies to be printed when the print dialog is opened
		for this document.
	**/
	function getNumCopies():Float;
	/**
		Choose whether the PDF reader's toolbars should be hidden while the
		document is active.
	**/
	function setHideToolbar(hideToolbar:Bool):Void;
	/**
		Choose whether the PDF reader's menu bar should be hidden while the
		document is active.
	**/
	function setHideMenubar(hideMenubar:Bool):Void;
	/**
		Choose whether the PDF reader should hide user interface elements in the
		document's window (such as scroll bars and navigation controls), leaving
		only the document's contents displayed.
	**/
	function setHideWindowUI(hideWindowUI:Bool):Void;
	/**
		Choose whether the PDF reader should resize the document's window to fit
		the size of the first displayed page.
	**/
	function setFitWindow(fitWindow:Bool):Void;
	/**
		Choose whether the PDF reader should position the document's window in the
		center of the screen.
	**/
	function setCenterWindow(centerWindow:Bool):Void;
	/**
		Choose whether the window's title bar should display the document `Title`
		taken from the document metadata (see [[PDFDocument.setTitle]]). If
		`false`, the title bar should instead display the PDF filename.
	**/
	function setDisplayDocTitle(displayTitle:Bool):Void;
	/**
		Choose how the PDF reader should display the document upon exiting
		full-screen mode. This entry is meaningful only if the value of the
		`PageMode` entry in the document's [[PDFCatalog]] is `FullScreen`.
		
		For example:
		```js
		import { PDFDocument, NonFullScreenPageMode, PDFName } from 'pdf-lib'
		
		const pdfDoc = await PDFDocument.create()
		
		// Set the PageMode
		pdfDoc.catalog.set(PDFName.of('PageMode'),PDFName.of('FullScreen'))
		
		// Set what happens when full-screen is closed
		const viewerPrefs = pdfDoc.catalog.getOrCreateViewerPreferences()
		viewerPrefs.setNonFullScreenPageMode(NonFullScreenPageMode.UseOutlines)
		```
	**/
	function setNonFullScreenPageMode(nonFullScreenPageMode:NonFullScreenPageMode):Void;
	/**
		Choose the predominant reading order for text.
		
		This entry has no direct effect on the document's contents or page
		numbering, but may be used to determine the relative positioning of pages
		when displayed side by side or printed n-up.
		
		For example:
		```js
		import { PDFDocument, ReadingDirection } from 'pdf-lib'
		
		const pdfDoc = await PDFDocument.create()
		const viewerPrefs = pdfDoc.catalog.getOrCreateViewerPreferences()
		viewerPrefs.setReadingDirection(ReadingDirection.R2L)
		```
	**/
	function setReadingDirection(readingDirection:ReadingDirection):Void;
	/**
		Choose the page scaling option that should be selected when a print dialog
		is displayed for this document.
		
		For example:
		```js
		import { PDFDocument, PrintScaling } from 'pdf-lib'
		
		const pdfDoc = await PDFDocument.create()
		const viewerPrefs = pdfDoc.catalog.getOrCreateViewerPreferences()
		viewerPrefs.setPrintScaling(PrintScaling.None)
		```
	**/
	function setPrintScaling(printScaling:PrintScaling):Void;
	/**
		Choose the paper handling option that should be selected by default in the
		print dialog.
		
		For example:
		```js
		import { PDFDocument, Duplex } from 'pdf-lib'
		
		const pdfDoc = await PDFDocument.create()
		const viewerPrefs = pdfDoc.catalog.getOrCreateViewerPreferences()
		viewerPrefs.setDuplex(Duplex.DuplexFlipShortEdge)
		```
	**/
	function setDuplex(duplex:Duplex):Void;
	/**
		Choose whether the PDF document's page size should be used to select the
		input paper tray when printing. This setting influences only the preset
		values used to populate the print dialog presented by a PDF reader.
		
		If PickTrayByPDFSize is true, the check box in the print dialog associated
		with input paper tray should be checked. This setting has no effect on
		operating systems that do not provide the ability to pick the input tray
		by size.
	**/
	function setPickTrayByPDFSize(pickTrayByPDFSize:Bool):Void;
	/**
		Choose the page numbers used to initialize the print dialog box when the
		file is printed. The first page of the PDF file is denoted by 0.
		
		For example:
		```js
		import { PDFDocument } from 'pdf-lib'
		
		const pdfDoc = await PDFDocument.create()
		const viewerPrefs = pdfDoc.catalog.getOrCreateViewerPreferences()
		
		// We can set the default print range to only the first page
		viewerPrefs.setPrintPageRange({ start: 0, end: 0 })
		
		// Or we can supply noncontiguous ranges (e.g. pages 1, 3, and 5-7)
		viewerPrefs.setPrintPageRange([
		   { start: 0, end: 0 },
		   { start: 2, end: 2 },
		   { start: 4, end: 6 },
		])
		```
	**/
	function setPrintPageRange(printPageRange:ts.AnyOf2<PageRange, Array<PageRange>>):Void;
	/**
		Choose the default number of copies to be printed when the print dialog is
		opened for this file.
	**/
	function setNumCopies(numCopies:Float):Void;
	static var prototype : ViewerPreferences;
	static dynamic function fromDict(dict:PDFDict):ViewerPreferences;
	static dynamic function create(context:PDFContext):ViewerPreferences;
}