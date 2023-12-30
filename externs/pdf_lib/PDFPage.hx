package pdf_lib;

/**
	Represents a single page of a [[PDFDocument]].
**/
@:jsRequire("pdf-lib", "PDFPage") extern class PDFPage {
	private function new();
	/**
		The low-level PDFDictionary wrapped by this page.
	**/
	final node : PDFPageLeaf;
	/**
		The unique reference assigned to this page within the document.
	**/
	final ref : PDFRef;
	/**
		The document to which this page belongs.
	**/
	final doc : PDFDocument;
	@:optional
	private var fontKey : Dynamic;
	@:optional
	private var font : Dynamic;
	private var fontSize : Dynamic;
	private var fontColor : Dynamic;
	private var lineHeight : Dynamic;
	private var x : Dynamic;
	private var y : Dynamic;
	@:optional
	private var contentStream : Dynamic;
	@:optional
	private var contentStreamRef : Dynamic;
	/**
		Rotate this page by a multiple of 90 degrees. For example:
		```js
		import { degrees } from 'pdf-lib'
		
		page.setRotation(degrees(-90))
		page.setRotation(degrees(0))
		page.setRotation(degrees(90))
		page.setRotation(degrees(180))
		page.setRotation(degrees(270))
		```
	**/
	function setRotation(angle:Rotation):Void;
	/**
		Get this page's rotation angle in degrees. For example:
		```js
		const rotationAngle = page.getRotation().angle;
		```
	**/
	function getRotation():Rotation;
	/**
		Resize this page by increasing or decreasing its width and height. For
		example:
		```js
		page.setSize(250, 500)
		page.setSize(page.getWidth() + 50, page.getHeight() + 100)
		page.setSize(page.getWidth() - 50, page.getHeight() - 100)
		```
		
		Note that the PDF specification does not allow for pages to have explicit
		widths and heights. Instead it defines the "size" of a page in terms of
		five rectangles: the MediaBox, CropBox, BleedBox, TrimBox, and ArtBox. As a
		result, this method cannot directly change the width and height of a page.
		Instead, it works by adjusting these five boxes.
		
		This method performs the following steps:
		   1. Set width & height of MediaBox.
		   2. Set width & height of CropBox, if it has same dimensions as MediaBox.
		   3. Set width & height of BleedBox, if it has same dimensions as MediaBox.
		   4. Set width & height of TrimBox, if it has same dimensions as MediaBox.
		   5. Set width & height of ArtBox, if it has same dimensions as MediaBox.
		
		This approach works well for most PDF documents as all PDF pages must
		have a MediaBox, but relatively few have a CropBox, BleedBox, TrimBox, or
		ArtBox. And when they do have these additional boxes, they often have the
		same dimensions as the MediaBox. However, if you find this method does not
		work for your document, consider setting the boxes directly:
		   * [[PDFPage.setMediaBox]]
		   * [[PDFPage.setCropBox]]
		   * [[PDFPage.setBleedBox]]
		   * [[PDFPage.setTrimBox]]
		   * [[PDFPage.setArtBox]]
	**/
	function setSize(width:Float, height:Float):Void;
	/**
		Resize this page by increasing or decreasing its width. For example:
		```js
		page.setWidth(250)
		page.setWidth(page.getWidth() + 50)
		page.setWidth(page.getWidth() - 50)
		```
		
		This method uses [[PDFPage.setSize]] to set the page's width.
	**/
	function setWidth(width:Float):Void;
	/**
		Resize this page by increasing or decreasing its height. For example:
		```js
		page.setHeight(500)
		page.setHeight(page.getWidth() + 100)
		page.setHeight(page.getWidth() - 100)
		```
		
		This method uses [[PDFPage.setSize]] to set the page's height.
	**/
	function setHeight(height:Float):Void;
	/**
		Set the MediaBox of this page. For example:
		```js
		const mediaBox = page.getMediaBox()
		
		page.setMediaBox(0, 0, 250, 500)
		page.setMediaBox(mediaBox.x, mediaBox.y, 50, 100)
		page.setMediaBox(15, 5, mediaBox.width - 50, mediaBox.height - 100)
		```
		
		See [[PDFPage.getMediaBox]] for details about what the MediaBox represents.
	**/
	function setMediaBox(x:Float, y:Float, width:Float, height:Float):Void;
	/**
		Set the CropBox of this page. For example:
		```js
		const cropBox = page.getCropBox()
		
		page.setCropBox(0, 0, 250, 500)
		page.setCropBox(cropBox.x, cropBox.y, 50, 100)
		page.setCropBox(15, 5, cropBox.width - 50, cropBox.height - 100)
		```
		
		See [[PDFPage.getCropBox]] for details about what the CropBox represents.
	**/
	function setCropBox(x:Float, y:Float, width:Float, height:Float):Void;
	/**
		Set the BleedBox of this page. For example:
		```js
		const bleedBox = page.getBleedBox()
		
		page.setBleedBox(0, 0, 250, 500)
		page.setBleedBox(bleedBox.x, bleedBox.y, 50, 100)
		page.setBleedBox(15, 5, bleedBox.width - 50, bleedBox.height - 100)
		```
		
		See [[PDFPage.getBleedBox]] for details about what the BleedBox represents.
	**/
	function setBleedBox(x:Float, y:Float, width:Float, height:Float):Void;
	/**
		Set the TrimBox of this page. For example:
		```js
		const trimBox = page.getTrimBox()
		
		page.setTrimBox(0, 0, 250, 500)
		page.setTrimBox(trimBox.x, trimBox.y, 50, 100)
		page.setTrimBox(15, 5, trimBox.width - 50, trimBox.height - 100)
		```
		
		See [[PDFPage.getTrimBox]] for details about what the TrimBox represents.
	**/
	function setTrimBox(x:Float, y:Float, width:Float, height:Float):Void;
	/**
		Set the ArtBox of this page. For example:
		```js
		const artBox = page.getArtBox()
		
		page.setArtBox(0, 0, 250, 500)
		page.setArtBox(artBox.x, artBox.y, 50, 100)
		page.setArtBox(15, 5, artBox.width - 50, artBox.height - 100)
		```
		
		See [[PDFPage.getArtBox]] for details about what the ArtBox represents.
	**/
	function setArtBox(x:Float, y:Float, width:Float, height:Float):Void;
	/**
		Get this page's width and height. For example:
		```js
		const { width, height } = page.getSize()
		```
		
		This method uses [[PDFPage.getMediaBox]] to obtain the page's
		width and height.
	**/
	function getSize():{
		var width : Float;
		var height : Float;
	};
	/**
		Get this page's width. For example:
		```js
		const width = page.getWidth()
		```
		
		This method uses [[PDFPage.getSize]] to obtain the page's size.
	**/
	function getWidth():Float;
	/**
		Get this page's height. For example:
		```js
		const height = page.getHeight()
		```
		
		This method uses [[PDFPage.getSize]] to obtain the page's size.
	**/
	function getHeight():Float;
	/**
		Get the rectangle defining this page's MediaBox. For example:
		```js
		const { x, y, width, height } = page.getMediaBox()
		```
		
		The MediaBox of a page defines the boundaries of the physical medium on
		which the page is to be displayed/printed. It may include extended area
		surrounding the page content for bleed marks, printing marks, etc...
		It may also include areas close to the edges of the medium that cannot be
		marked because of physical limitations of the output device. Content
		falling outside this boundary may safely be discarded without affecting
		the meaning of the PDF file.
	**/
	function getMediaBox():{
		var x : Float;
		var y : Float;
		var width : Float;
		var height : Float;
	};
	/**
		Get the rectangle defining this page's CropBox. For example:
		```js
		const { x, y, width, height } = page.getCropBox()
		```
		
		The CropBox of a page defines the region to which the contents of the page
		shall be clipped when displayed or printed. Unlike the other boxes, the
		CropBox does not necessarily represent the physical page geometry. It
		merely imposes clipping on the page contents.
		
		The CropBox's default value is the page's MediaBox.
	**/
	function getCropBox():{
		var x : Float;
		var y : Float;
		var width : Float;
		var height : Float;
	};
	/**
		Get the rectangle defining this page's BleedBox. For example:
		```js
		const { x, y, width, height } = page.getBleedBox()
		```
		
		The BleedBox of a page defines the region to which the contents of the
		page shall be clipped when output in a production environment. This may
		include any extra bleed area needed to accommodate the physical
		limitations of cutting, folding, and trimming equipment. The actual
		printed page may include printing marks that fall outside the BleedBox.
		
		The BleedBox's default value is the page's CropBox.
	**/
	function getBleedBox():{
		var x : Float;
		var y : Float;
		var width : Float;
		var height : Float;
	};
	/**
		Get the rectangle defining this page's TrimBox. For example:
		```js
		const { x, y, width, height } = page.getTrimBox()
		```
		
		The TrimBox of a page defines the intended dimensions of the finished
		page after trimming. It may be smaller than the MediaBox to allow for
		production-related content, such as printing instructions, cut marks, or
		color bars.
		
		The TrimBox's default value is the page's CropBox.
	**/
	function getTrimBox():{
		var x : Float;
		var y : Float;
		var width : Float;
		var height : Float;
	};
	/**
		Get the rectangle defining this page's ArtBox. For example:
		```js
		const { x, y, width, height } = page.getArtBox()
		```
		
		The ArtBox of a page defines the extent of the page's meaningful content
		(including potential white space).
		
		The ArtBox's default value is the page's CropBox.
	**/
	function getArtBox():{
		var x : Float;
		var y : Float;
		var width : Float;
		var height : Float;
	};
	/**
		Translate this page's content to a new location on the page. This operation
		is often useful after resizing the page with [[setSize]]. For example:
		```js
		// Add 50 units of whitespace to the top and right of the page
		page.setSize(page.getWidth() + 50, page.getHeight() + 50)
		
		// Move the page's content from the lower-left corner of the page
		// to the top-right corner.
		page.translateContent(50, 50)
		
		// Now there are 50 units of whitespace to the left and bottom of the page
		```
		See also: [[resetPosition]]
	**/
	function translateContent(x:Float, y:Float):Void;
	/**
		Scale the size, content, and annotations of a page.
		
		For example:
		```js
		page.scale(0.5, 0.5);
		```
	**/
	function scale(x:Float, y:Float):Void;
	/**
		Scale the content of a page. This is useful after resizing an existing
		page. This scales only the content, not the annotations.
		
		For example:
		```js
		// Bisect the size of the page
		page.setSize(page.getWidth() / 2, page.getHeight() / 2);
		
		// Scale the content of the page down by 50% in x and y
		page.scaleContent(0.5, 0.5);
		```
		See also: [[scaleAnnotations]]
	**/
	function scaleContent(x:Float, y:Float):Void;
	/**
		Scale the annotations of a page. This is useful if you want to scale a
		page with comments or other annotations.
		```js
		// Scale the content of the page down by 50% in x and y
		page.scaleContent(0.5, 0.5);
		
		// Scale the content of the page down by 50% in x and y
		page.scaleAnnotations(0.5, 0.5);
		```
		See also: [[scaleContent]]
	**/
	function scaleAnnotations(x:Float, y:Float):Void;
	/**
		Reset the x and y coordinates of this page to `(0, 0)`. This operation is
		often useful after calling [[translateContent]]. For example:
		```js
		// Shift the page's contents up and to the right by 50 units
		page.translateContent(50, 50)
		
		// This text will shifted - it will be drawn at (50, 50)
		page.drawText('I am shifted')
		
		// Move back to (0, 0)
		page.resetPosition()
		
		// This text will not be shifted - it will be drawn at (0, 0)
		page.drawText('I am not shifted')
		```
	**/
	function resetPosition():Void;
	/**
		Choose a default font for this page. The default font will be used whenever
		text is drawn on this page and no font is specified. For example:
		```js
		import { StandardFonts } from 'pdf-lib'
		
		const timesRomanFont = await pdfDoc.embedFont(StandardFonts.TimesRoman)
		const helveticaFont = await pdfDoc.embedFont(StandardFonts.Helvetica)
		const courierFont = await pdfDoc.embedFont(StandardFonts.Courier)
		
		const page = pdfDoc.addPage()
		
		page.setFont(helveticaFont)
		page.drawText('I will be drawn in Helvetica')
		
		page.setFont(timesRomanFont)
		page.drawText('I will be drawn in Courier', { font: courierFont })
		```
	**/
	function setFont(font:PDFFont):Void;
	/**
		Choose a default font size for this page. The default font size will be
		used whenever text is drawn on this page and no font size is specified.
		For example:
		```js
		page.setFontSize(12)
		page.drawText('I will be drawn in size 12')
		
		page.setFontSize(36)
		page.drawText('I will be drawn in size 24', { fontSize: 24 })
		```
	**/
	function setFontSize(fontSize:Float):Void;
	/**
		Choose a default font color for this page. The default font color will be
		used whenever text is drawn on this page and no font color is specified.
		For example:
		```js
		import { rgb, cmyk, grayscale } from 'pdf-lib'
		
		page.setFontColor(rgb(0.97, 0.02, 0.97))
		page.drawText('I will be drawn in pink')
		
		page.setFontColor(cmyk(0.4, 0.7, 0.39, 0.15))
		page.drawText('I will be drawn in gray', { color: grayscale(0.5) })
		```
	**/
	function setFontColor(fontColor:Color):Void;
	/**
		Choose a default line height for this page. The default line height will be
		used whenever text is drawn on this page and no line height is specified.
		For example:
		```js
		page.setLineHeight(12);
		page.drawText('These lines will be vertically \n separated by 12 units')
		
		page.setLineHeight(36);
		page.drawText('These lines will be vertically \n separated by 24 units', {
		   lineHeight: 24
		})
		```
	**/
	function setLineHeight(lineHeight:Float):Void;
	/**
		Get the default position of this page. For example:
		```js
		const { x, y } = page.getPosition()
		```
	**/
	function getPosition():{
		var x : Float;
		var y : Float;
	};
	/**
		Get the default x coordinate of this page. For example:
		```js
		const x = page.getX()
		```
	**/
	function getX():Float;
	/**
		Get the default y coordinate of this page. For example:
		```js
		const y = page.getY()
		```
	**/
	function getY():Float;
	/**
		Change the default position of this page. For example:
		```js
		page.moveTo(0, 0)
		page.drawText('I will be drawn at the origin')
		
		page.moveTo(0, 25)
		page.drawText('I will be drawn 25 units up')
		
		page.moveTo(25, 25)
		page.drawText('I will be drawn 25 units up and 25 units to the right')
		```
	**/
	function moveTo(x:Float, y:Float):Void;
	/**
		Change the default position of this page to be further down the y-axis.
		For example:
		```js
		page.moveTo(50, 50)
		page.drawText('I will be drawn at (50, 50)')
		
		page.moveDown(10)
		page.drawText('I will be drawn at (50, 40)')
		```
	**/
	function moveDown(yDecrease:Float):Void;
	/**
		Change the default position of this page to be further up the y-axis.
		For example:
		```js
		page.moveTo(50, 50)
		page.drawText('I will be drawn at (50, 50)')
		
		page.moveUp(10)
		page.drawText('I will be drawn at (50, 60)')
		```
	**/
	function moveUp(yIncrease:Float):Void;
	/**
		Change the default position of this page to be further left on the x-axis.
		For example:
		```js
		page.moveTo(50, 50)
		page.drawText('I will be drawn at (50, 50)')
		
		page.moveLeft(10)
		page.drawText('I will be drawn at (40, 50)')
		```
	**/
	function moveLeft(xDecrease:Float):Void;
	/**
		Change the default position of this page to be further right on the y-axis.
		For example:
		```js
		page.moveTo(50, 50)
		page.drawText('I will be drawn at (50, 50)')
		
		page.moveRight(10)
		page.drawText('I will be drawn at (60, 50)')
		```
	**/
	function moveRight(xIncrease:Float):Void;
	/**
		Push one or more operators to the end of this page's current content
		stream. For example:
		```js
		import {
		   pushGraphicsState,
		   moveTo,
		   lineTo,
		   closePath,
		   setFillingColor,
		   rgb,
		   fill,
		   popGraphicsState,
		} from 'pdf-lib'
		
		// Draw a green triangle in the lower-left corner of the page
		page.pushOperators(
		   pushGraphicsState(),
		   moveTo(0, 0),
		   lineTo(100, 0),
		   lineTo(50, 100),
		   closePath(),
		   setFillingColor(rgb(0.0, 1.0, 0.0)),
		   fill(),
		   popGraphicsState(),
		)
		```
	**/
	function pushOperators(operator_:haxe.extern.Rest<PDFOperator>):Void;
	/**
		Draw one or more lines of text on this page. For example:
		```js
		import { StandardFonts, rgb } from 'pdf-lib'
		
		const helveticaFont = await pdfDoc.embedFont(StandardFonts.Helvetica)
		const timesRomanFont = await pdfDoc.embedFont(StandardFonts.TimesRoman)
		
		const page = pdfDoc.addPage()
		
		page.setFont(helveticaFont)
		
		page.moveTo(5, 200)
		page.drawText('The Life of an Egg', { size: 36 })
		
		page.moveDown(36)
		page.drawText('An Epic Tale of Woe', { size: 30 })
		
		page.drawText(
		   `Humpty Dumpty sat on a wall \n` +
		   `Humpty Dumpty had a great fall; \n` +
		   `All the king's horses and all the king's men \n` +
		   `Couldn't put Humpty together again. \n`,
		   {
		     x: 25,
		     y: 100,
		     font: timesRomanFont,
		     size: 24,
		     color: rgb(1, 0, 0),
		     lineHeight: 24,
		     opacity: 0.75,
		   },
		)
		```
	**/
	function drawText(text:String, ?options:PDFPageDrawTextOptions):Void;
	/**
		Draw an image on this page. For example:
		```js
		import { degrees } from 'pdf-lib'
		
		const jpgUrl = 'https://pdf-lib.js.org/assets/cat_riding_unicorn.jpg'
		const jpgImageBytes = await fetch(jpgUrl).then((res) => res.arrayBuffer())
		
		const jpgImage = await pdfDoc.embedJpg(jpgImageBytes)
		const jpgDims = jpgImage.scale(0.5)
		
		const page = pdfDoc.addPage()
		
		page.drawImage(jpgImage, {
		   x: 25,
		   y: 25,
		   width: jpgDims.width,
		   height: jpgDims.height,
		   rotate: degrees(30),
		   opacity: 0.75,
		})
		```
	**/
	function drawImage(image:PDFImage, ?options:PDFPageDrawImageOptions):Void;
	/**
		Draw an embedded PDF page on this page. For example:
		```js
		import { degrees } from 'pdf-lib'
		
		const pdfDoc = await PDFDocument.create()
		const page = pdfDoc.addPage()
		
		const sourcePdfUrl = 'https://pdf-lib.js.org/assets/with_large_page_count.pdf'
		const sourcePdf = await fetch(sourcePdfUrl).then((res) => res.arrayBuffer())
		
		// Embed page 74 from the PDF
		const [embeddedPage] = await pdfDoc.embedPdf(sourcePdf, 73)
		
		page.drawPage(embeddedPage, {
		   x: 250,
		   y: 200,
		   xScale: 0.5,
		   yScale: 0.5,
		   rotate: degrees(30),
		   opacity: 0.75,
		})
		```
		
		The `options` argument accepts both `width`/`height` and `xScale`/`yScale`
		as options. Since each of these options defines the size of the drawn page,
		if both options are given, `width` and `height` take precedence and the
		corresponding scale variants are ignored.
	**/
	function drawPage(embeddedPage:PDFEmbeddedPage, ?options:PDFPageDrawPageOptions):Void;
	/**
		Draw an SVG path on this page. For example:
		```js
		import { rgb } from 'pdf-lib'
		
		const svgPath = 'M 0,20 L 100,160 Q 130,200 150,120 C 190,-40 200,200 300,150 L 400,90'
		
		// Draw path as black line
		page.drawSvgPath(svgPath, { x: 25, y: 75 })
		
		// Change border style and opacity
		page.drawSvgPath(svgPath, {
		   x: 25,
		   y: 275,
		   borderColor: rgb(0.5, 0.5, 0.5),
		   borderWidth: 2,
		   borderOpacity: 0.75,
		})
		
		// Set fill color and opacity
		page.drawSvgPath(svgPath, {
		   x: 25,
		   y: 475,
		   color: rgb(1.0, 0, 0),
		   opacity: 0.75,
		})
		
		// Draw 50% of original size
		page.drawSvgPath(svgPath, {
		   x: 25,
		   y: 675,
		   scale: 0.5,
		})
		```
	**/
	function drawSvgPath(path:String, ?options:PDFPageDrawSVGOptions):Void;
	/**
		Draw a line on this page. For example:
		```js
		import { rgb } from 'pdf-lib'
		
		page.drawLine({
		   start: { x: 25, y: 75 },
		   end: { x: 125, y: 175 },
		   thickness: 2,
		   color: rgb(0.75, 0.2, 0.2),
		   opacity: 0.75,
		})
		```
	**/
	function drawLine(options:PDFPageDrawLineOptions):Void;
	/**
		Draw a rectangle on this page. For example:
		```js
		import { degrees, grayscale, rgb } from 'pdf-lib'
		
		page.drawRectangle({
		   x: 25,
		   y: 75,
		   width: 250,
		   height: 75,
		   rotate: degrees(-15),
		   borderWidth: 5,
		   borderColor: grayscale(0.5),
		   color: rgb(0.75, 0.2, 0.2),
		   opacity: 0.5,
		   borderOpacity: 0.75,
		})
		```
	**/
	function drawRectangle(?options:PDFPageDrawRectangleOptions):Void;
	/**
		Draw a square on this page. For example:
		```js
		import { degrees, grayscale, rgb } from 'pdf-lib'
		
		page.drawSquare({
		   x: 25,
		   y: 75,
		   size: 100,
		   rotate: degrees(-15),
		   borderWidth: 5,
		   borderColor: grayscale(0.5),
		   color: rgb(0.75, 0.2, 0.2),
		   opacity: 0.5,
		   borderOpacity: 0.75,
		})
		```
	**/
	function drawSquare(?options:PDFPageDrawSquareOptions):Void;
	/**
		Draw an ellipse on this page. For example:
		```js
		import { grayscale, rgb } from 'pdf-lib'
		
		page.drawEllipse({
		   x: 200,
		   y: 75,
		   xScale: 100,
		   yScale: 50,
		   borderWidth: 5,
		   borderColor: grayscale(0.5),
		   color: rgb(0.75, 0.2, 0.2),
		   opacity: 0.5,
		   borderOpacity: 0.75,
		})
		```
	**/
	function drawEllipse(?options:PDFPageDrawEllipseOptions):Void;
	/**
		Draw a circle on this page. For example:
		```js
		import { grayscale, rgb } from 'pdf-lib'
		
		page.drawCircle({
		   x: 200,
		   y: 150,
		   size: 100,
		   borderWidth: 5,
		   borderColor: grayscale(0.5),
		   color: rgb(0.75, 0.2, 0.2),
		   opacity: 0.5,
		   borderOpacity: 0.75,
		})
		```
	**/
	function drawCircle(?options:PDFPageDrawCircleOptions):Void;
	private var setOrEmbedFont : Dynamic;
	private var getFont : Dynamic;
	private var resetFont : Dynamic;
	private var getContentStream : Dynamic;
	private var createContentStream : Dynamic;
	private var maybeEmbedGraphicsState : Dynamic;
	private var scaleAnnot : Dynamic;
	static var prototype : PDFPage;
	/**
		> **NOTE:** You probably don't want to call this method directly. Instead,
		> consider using the [[PDFDocument.addPage]] and [[PDFDocument.insertPage]]
		> methods, which can create instances of [[PDFPage]] for you.
		
		Create an instance of [[PDFPage]] from an existing leaf node.
	**/
	static dynamic function of(leafNode:PDFPageLeaf, ref:PDFRef, doc:PDFDocument):PDFPage;
	/**
		> **NOTE:** You probably don't want to call this method directly. Instead,
		> consider using the [[PDFDocument.addPage]] and [[PDFDocument.insertPage]]
		> methods, which can create instances of [[PDFPage]] for you.
		
		Create an instance of [[PDFPage]].
	**/
	static dynamic function create(doc:PDFDocument):PDFPage;
}