package pdf_lib;

/**
	Represents a PDF document.
**/
@:jsRequire("pdf-lib", "PDFDocument") extern class PDFDocument {
	private function new();
	/**
		The low-level context of this document.
	**/
	final context : PDFContext;
	/**
		The catalog of this document.
	**/
	final catalog : PDFCatalog;
	/**
		Whether or not this document is encrypted.
	**/
	final isEncrypted : Bool;
	/**
		The default word breaks used in PDFPage.drawText
	**/
	var defaultWordBreaks : Array<String>;
	@:optional
	private var fontkit : Dynamic;
	private var pageCount : Dynamic;
	private final pageCache : Dynamic;
	private final pageMap : Dynamic;
	private final formCache : Dynamic;
	private final fonts : Dynamic;
	private final images : Dynamic;
	private final embeddedPages : Dynamic;
	private final embeddedFiles : Dynamic;
	private final javaScripts : Dynamic;
	/**
		Register a fontkit instance. This must be done before custom fonts can
		be embedded. See [here](https://github.com/Hopding/pdf-lib/tree/master#fontkit-installation)
		for instructions on how to install and register a fontkit instance.
		
		> You do **not** need to call this method to embed standard fonts.
		
		For example:
		```js
		import { PDFDocument } from 'pdf-lib'
		import fontkit from '@pdf-lib/fontkit'
		
		const pdfDoc = await PDFDocument.create()
		pdfDoc.registerFontkit(fontkit)
		```
	**/
	function registerFontkit(fontkit:pdf_lib.cjs.types.fontkit.Fontkit):Void;
	/**
		Get the [[PDFForm]] containing all interactive fields for this document.
		For example:
		```js
		const form = pdfDoc.getForm()
		const fields = form.getFields()
		fields.forEach(field => {
		   const type = field.constructor.name
		   const name = field.getName()
		   console.log(`${type}: ${name}`)
		})
		```
	**/
	function getForm():PDFForm;
	/**
		Get this document's title metadata. The title appears in the
		"Document Properties" section of most PDF readers. For example:
		```js
		const title = pdfDoc.getTitle()
		```
	**/
	function getTitle():Null<String>;
	/**
		Get this document's author metadata. The author appears in the
		"Document Properties" section of most PDF readers. For example:
		```js
		const author = pdfDoc.getAuthor()
		```
	**/
	function getAuthor():Null<String>;
	/**
		Get this document's subject metadata. The subject appears in the
		"Document Properties" section of most PDF readers. For example:
		```js
		const subject = pdfDoc.getSubject()
		```
	**/
	function getSubject():Null<String>;
	/**
		Get this document's keywords metadata. The keywords appear in the
		"Document Properties" section of most PDF readers. For example:
		```js
		const keywords = pdfDoc.getKeywords()
		```
	**/
	function getKeywords():Null<String>;
	/**
		Get this document's creator metadata. The creator appears in the
		"Document Properties" section of most PDF readers. For example:
		```js
		const creator = pdfDoc.getCreator()
		```
	**/
	function getCreator():Null<String>;
	/**
		Get this document's producer metadata. The producer appears in the
		"Document Properties" section of most PDF readers. For example:
		```js
		const producer = pdfDoc.getProducer()
		```
	**/
	function getProducer():Null<String>;
	/**
		Get this document's creation date metadata. The creation date appears in
		the "Document Properties" section of most PDF readers. For example:
		```js
		const creationDate = pdfDoc.getCreationDate()
		```
	**/
	function getCreationDate():Null<js.lib.Date>;
	/**
		Get this document's modification date metadata. The modification date
		appears in the "Document Properties" section of most PDF readers.
		For example:
		```js
		const modification = pdfDoc.getModificationDate()
		```
	**/
	function getModificationDate():Null<js.lib.Date>;
	/**
		Set this document's title metadata. The title will appear in the
		"Document Properties" section of most PDF readers. For example:
		```js
		pdfDoc.setTitle('🥚 The Life of an Egg 🍳')
		```
		
		To display the title in the window's title bar, set the
		`showInWindowTitleBar` option to `true` (works for _most_ PDF readers).
		For example:
		```js
		pdfDoc.setTitle('🥚 The Life of an Egg 🍳', { showInWindowTitleBar: true })
		```
	**/
	function setTitle(title:String, ?options:SetTitleOptions):Void;
	/**
		Set this document's author metadata. The author will appear in the
		"Document Properties" section of most PDF readers. For example:
		```js
		pdfDoc.setAuthor('Humpty Dumpty')
		```
	**/
	function setAuthor(author:String):Void;
	/**
		Set this document's subject metadata. The subject will appear in the
		"Document Properties" section of most PDF readers. For example:
		```js
		pdfDoc.setSubject('📘 An Epic Tale of Woe 📖')
		```
	**/
	function setSubject(subject:String):Void;
	/**
		Set this document's keyword metadata. These keywords will appear in the
		"Document Properties" section of most PDF readers. For example:
		```js
		pdfDoc.setKeywords(['eggs', 'wall', 'fall', 'king', 'horses', 'men'])
		```
	**/
	function setKeywords(keywords:Array<String>):Void;
	/**
		Set this document's creator metadata. The creator will appear in the
		"Document Properties" section of most PDF readers. For example:
		```js
		pdfDoc.setCreator('PDF App 9000 🤖')
		```
	**/
	function setCreator(creator:String):Void;
	/**
		Set this document's producer metadata. The producer will appear in the
		"Document Properties" section of most PDF readers. For example:
		```js
		pdfDoc.setProducer('PDF App 9000 🤖')
		```
	**/
	function setProducer(producer:String):Void;
	/**
		Set this document's language metadata. The language will appear in the
		"Document Properties" section of some PDF readers. For example:
		```js
		pdfDoc.setLanguage('en-us')
		```
	**/
	function setLanguage(language:String):Void;
	/**
		Set this document's creation date metadata. The creation date will appear
		in the "Document Properties" section of most PDF readers. For example:
		```js
		pdfDoc.setCreationDate(new Date())
		```
	**/
	function setCreationDate(creationDate:js.lib.Date):Void;
	/**
		Set this document's modification date metadata. The modification date will
		appear in the "Document Properties" section of most PDF readers. For
		example:
		```js
		pdfDoc.setModificationDate(new Date())
		```
	**/
	function setModificationDate(modificationDate:js.lib.Date):Void;
	/**
		Get the number of pages contained in this document. For example:
		```js
		const totalPages = pdfDoc.getPageCount()
		```
	**/
	function getPageCount():Float;
	/**
		Get an array of all the pages contained in this document. The pages are
		stored in the array in the same order that they are rendered in the
		document. For example:
		```js
		const pages = pdfDoc.getPages()
		pages[0]   // The first page of the document
		pages[2]   // The third page of the document
		pages[197] // The 198th page of the document
		```
	**/
	function getPages():Array<PDFPage>;
	/**
		Get the page rendered at a particular `index` of the document. For example:
		```js
		pdfDoc.getPage(0)   // The first page of the document
		pdfDoc.getPage(2)   // The third page of the document
		pdfDoc.getPage(197) // The 198th page of the document
		```
	**/
	function getPage(index:Float):PDFPage;
	/**
		Get an array of indices for all the pages contained in this document. The
		array will contain a range of integers from
		`0..pdfDoc.getPageCount() - 1`. For example:
		```js
		const pdfDoc = await PDFDocument.create()
		pdfDoc.addPage()
		pdfDoc.addPage()
		pdfDoc.addPage()
		
		const indices = pdfDoc.getPageIndices()
		indices // => [0, 1, 2]
		```
	**/
	function getPageIndices():Array<Float>;
	/**
		Remove the page at a given index from this document. For example:
		```js
		pdfDoc.removePage(0)   // Remove the first page of the document
		pdfDoc.removePage(2)   // Remove the third page of the document
		pdfDoc.removePage(197) // Remove the 198th page of the document
		```
		Once a page has been removed, it will no longer be rendered at that index
		in the document.
	**/
	function removePage(index:Float):Void;
	/**
		Add a page to the end of this document. This method accepts three
		different value types for the `page` parameter:
		
		| Type               | Behavior                                                                            |
		| ------------------ | ----------------------------------------------------------------------------------- |
		| `undefined`        | Create a new page and add it to the end of this document                            |
		| `[number, number]` | Create a new page with the given dimensions and add it to the end of this document  |
		| `PDFPage`          | Add the existing page to the end of this document                                   |
		
		For example:
		```js
		// page=undefined
		const newPage = pdfDoc.addPage()
		
		// page=[number, number]
		import { PageSizes } from 'pdf-lib'
		const newPage1 = pdfDoc.addPage(PageSizes.A7)
		const newPage2 = pdfDoc.addPage(PageSizes.Letter)
		const newPage3 = pdfDoc.addPage([500, 750])
		
		// page=PDFPage
		const pdfDoc1 = await PDFDocument.create()
		const pdfDoc2 = await PDFDocument.load(...)
		const [existingPage] = await pdfDoc1.copyPages(pdfDoc2, [0])
		pdfDoc1.addPage(existingPage)
		```
	**/
	function addPage(?page:ts.AnyOf2<ts.Tuple2<Float, Float>, PDFPage>):PDFPage;
	/**
		Insert a page at a given index within this document. This method accepts
		three different value types for the `page` parameter:
		
		| Type               | Behavior                                                                       |
		| ------------------ | ------------------------------------------------------------------------------ |
		| `undefined`        | Create a new page and insert it into this document                             |
		| `[number, number]` | Create a new page with the given dimensions and insert it into this document   |
		| `PDFPage`          | Insert the existing page into this document                                    |
		
		For example:
		```js
		// page=undefined
		const newPage = pdfDoc.insertPage(2)
		
		// page=[number, number]
		import { PageSizes } from 'pdf-lib'
		const newPage1 = pdfDoc.insertPage(2, PageSizes.A7)
		const newPage2 = pdfDoc.insertPage(0, PageSizes.Letter)
		const newPage3 = pdfDoc.insertPage(198, [500, 750])
		
		// page=PDFPage
		const pdfDoc1 = await PDFDocument.create()
		const pdfDoc2 = await PDFDocument.load(...)
		const [existingPage] = await pdfDoc1.copyPages(pdfDoc2, [0])
		pdfDoc1.insertPage(0, existingPage)
		```
	**/
	function insertPage(index:Float, ?page:ts.AnyOf2<ts.Tuple2<Float, Float>, PDFPage>):PDFPage;
	/**
		Copy pages from a source document into this document. Allows pages to be
		copied between different [[PDFDocument]] instances. For example:
		```js
		const pdfDoc = await PDFDocument.create()
		const srcDoc = await PDFDocument.load(...)
		
		const copiedPages = await pdfDoc.copyPages(srcDoc, [0, 3, 89])
		const [firstPage, fourthPage, ninetiethPage] = copiedPages;
		
		pdfDoc.addPage(fourthPage)
		pdfDoc.insertPage(0, ninetiethPage)
		pdfDoc.addPage(firstPage)
		```
	**/
	function copyPages(srcDoc:PDFDocument, indices:Array<Float>):js.lib.Promise<Array<PDFPage>>;
	/**
		Get a copy of this document.
		
		For example:
		```js
		const srcDoc = await PDFDocument.load(...)
		const pdfDoc = await srcDoc.copy()
		```
		
		> **NOTE:**  This method won't copy all information over to the new
		> document (acroforms, outlines, etc...).
	**/
	function copy():js.lib.Promise<PDFDocument>;
	/**
		Add JavaScript to this document. The supplied `script` is executed when the
		document is opened. The `script` can be used to perform some operation
		when the document is opened (e.g. logging to the console), or it can be
		used to define a function that can be referenced later in a JavaScript
		action. For example:
		```js
		// Show "Hello World!" in the console when the PDF is opened
		pdfDoc.addJavaScript(
		   'main',
		   'console.show(); console.println("Hello World!");'
		);
		
		// Define a function named "foo" that can be called in JavaScript Actions
		pdfDoc.addJavaScript(
		   'foo',
		   'function foo() { return "foo"; }'
		);
		```
		See the [JavaScript for Acrobat API Reference](https://www.adobe.com/content/dam/acom/en/devnet/acrobat/pdfs/js_api_reference.pdf)
		for details.
	**/
	function addJavaScript(name:String, script:String):Void;
	/**
		Add an attachment to this document. Attachments are visible in the
		"Attachments" panel of Adobe Acrobat and some other PDF readers. Any
		type of file can be added as an attachment. This includes, but is not
		limited to, `.png`, `.jpg`, `.pdf`, `.csv`, `.docx`, and `.xlsx` files.
		
		The input data can be provided in multiple formats:
		
		| Type          | Contents                                                       |
		| ------------- | -------------------------------------------------------------- |
		| `string`      | A base64 encoded string (or data URI) containing an attachment |
		| `Uint8Array`  | The raw bytes of an attachment                                 |
		| `ArrayBuffer` | The raw bytes of an attachment                                 |
		
		For example:
		```js
		// attachment=string
		await pdfDoc.attach('/9j/4AAQSkZJRgABAQAAAQABAAD/2wBD...', 'cat_riding_unicorn.jpg', {
		   mimeType: 'image/jpeg',
		   description: 'Cool cat riding a unicorn! 🦄🐈🕶️',
		   creationDate: new Date('2019/12/01'),
		   modificationDate: new Date('2020/04/19'),
		})
		await pdfDoc.attach('data:image/jpeg;base64,/9j/4AAQ...', 'cat_riding_unicorn.jpg', {
		   mimeType: 'image/jpeg',
		   description: 'Cool cat riding a unicorn! 🦄🐈🕶️',
		   creationDate: new Date('2019/12/01'),
		   modificationDate: new Date('2020/04/19'),
		})
		
		// attachment=Uint8Array
		import fs from 'fs'
		const uint8Array = fs.readFileSync('cat_riding_unicorn.jpg')
		await pdfDoc.attach(uint8Array, 'cat_riding_unicorn.jpg', {
		   mimeType: 'image/jpeg',
		   description: 'Cool cat riding a unicorn! 🦄🐈🕶️',
		   creationDate: new Date('2019/12/01'),
		   modificationDate: new Date('2020/04/19'),
		})
		
		// attachment=ArrayBuffer
		const url = 'https://pdf-lib.js.org/assets/cat_riding_unicorn.jpg'
		const arrayBuffer = await fetch(url).then(res => res.arrayBuffer())
		await pdfDoc.attach(arrayBuffer, 'cat_riding_unicorn.jpg', {
		   mimeType: 'image/jpeg',
		   description: 'Cool cat riding a unicorn! 🦄🐈🕶️',
		   creationDate: new Date('2019/12/01'),
		   modificationDate: new Date('2020/04/19'),
		})
		```
	**/
	function attach(attachment:ts.AnyOf3<String, js.lib.Uint8Array, js.lib.ArrayBuffer>, name:String, ?options:AttachmentOptions):js.lib.Promise<ts.Undefined>;
	/**
		Embed a font into this document. The input data can be provided in multiple
		formats:
		
		| Type            | Contents                                                |
		| --------------- | ------------------------------------------------------- |
		| `StandardFonts` | One of the standard 14 fonts                            |
		| `string`        | A base64 encoded string (or data URI) containing a font |
		| `Uint8Array`    | The raw bytes of a font                                 |
		| `ArrayBuffer`   | The raw bytes of a font                                 |
		
		For example:
		```js
		// font=StandardFonts
		import { StandardFonts } from 'pdf-lib'
		const font1 = await pdfDoc.embedFont(StandardFonts.Helvetica)
		
		// font=string
		const font2 = await pdfDoc.embedFont('AAEAAAAVAQAABABQRFNJRx/upe...')
		const font3 = await pdfDoc.embedFont('data:font/opentype;base64,AAEAAA...')
		
		// font=Uint8Array
		import fs from 'fs'
		const font4 = await pdfDoc.embedFont(fs.readFileSync('Ubuntu-R.ttf'))
		
		// font=ArrayBuffer
		const url = 'https://pdf-lib.js.org/assets/ubuntu/Ubuntu-R.ttf'
		const ubuntuBytes = await fetch(url).then(res => res.arrayBuffer())
		const font5 = await pdfDoc.embedFont(ubuntuBytes)
		```
		See also: [[registerFontkit]]
	**/
	function embedFont(font:ts.AnyOf3<String, js.lib.Uint8Array, js.lib.ArrayBuffer>, ?options:EmbedFontOptions):js.lib.Promise<PDFFont>;
	/**
		Embed a standard font into this document.
		For example:
		```js
		import { StandardFonts } from 'pdf-lib'
		const helveticaFont = pdfDoc.embedFont(StandardFonts.Helvetica)
		```
	**/
	function embedStandardFont(font:StandardFonts, ?customName:String):PDFFont;
	/**
		Embed a JPEG image into this document. The input data can be provided in
		multiple formats:
		
		| Type          | Contents                                                      |
		| ------------- | ------------------------------------------------------------- |
		| `string`      | A base64 encoded string (or data URI) containing a JPEG image |
		| `Uint8Array`  | The raw bytes of a JPEG image                                 |
		| `ArrayBuffer` | The raw bytes of a JPEG image                                 |
		
		For example:
		```js
		// jpg=string
		const image1 = await pdfDoc.embedJpg('/9j/4AAQSkZJRgABAQAAAQABAAD/2wBD...')
		const image2 = await pdfDoc.embedJpg('data:image/jpeg;base64,/9j/4AAQ...')
		
		// jpg=Uint8Array
		import fs from 'fs'
		const uint8Array = fs.readFileSync('cat_riding_unicorn.jpg')
		const image3 = await pdfDoc.embedJpg(uint8Array)
		
		// jpg=ArrayBuffer
		const url = 'https://pdf-lib.js.org/assets/cat_riding_unicorn.jpg'
		const arrayBuffer = await fetch(url).then(res => res.arrayBuffer())
		const image4 = await pdfDoc.embedJpg(arrayBuffer)
		```
	**/
	function embedJpg(jpg:ts.AnyOf3<String, js.lib.Uint8Array, js.lib.ArrayBuffer>):js.lib.Promise<PDFImage>;
	/**
		Embed a PNG image into this document. The input data can be provided in
		multiple formats:
		
		| Type          | Contents                                                     |
		| ------------- | ------------------------------------------------------------ |
		| `string`      | A base64 encoded string (or data URI) containing a PNG image |
		| `Uint8Array`  | The raw bytes of a PNG image                                 |
		| `ArrayBuffer` | The raw bytes of a PNG image                                 |
		
		For example:
		```js
		// png=string
		const image1 = await pdfDoc.embedPng('iVBORw0KGgoAAAANSUhEUgAAAlgAAAF3...')
		const image2 = await pdfDoc.embedPng('data:image/png;base64,iVBORw0KGg...')
		
		// png=Uint8Array
		import fs from 'fs'
		const uint8Array = fs.readFileSync('small_mario.png')
		const image3 = await pdfDoc.embedPng(uint8Array)
		
		// png=ArrayBuffer
		const url = 'https://pdf-lib.js.org/assets/small_mario.png'
		const arrayBuffer = await fetch(url).then(res => res.arrayBuffer())
		const image4 = await pdfDoc.embedPng(arrayBuffer)
		```
	**/
	function embedPng(png:ts.AnyOf3<String, js.lib.Uint8Array, js.lib.ArrayBuffer>):js.lib.Promise<PDFImage>;
	/**
		Embed one or more PDF pages into this document.
		
		For example:
		```js
		const pdfDoc = await PDFDocument.create()
		
		const sourcePdfUrl = 'https://pdf-lib.js.org/assets/with_large_page_count.pdf'
		const sourcePdf = await fetch(sourcePdfUrl).then((res) => res.arrayBuffer())
		
		// Embed page 74 of `sourcePdf` into `pdfDoc`
		const [embeddedPage] = await pdfDoc.embedPdf(sourcePdf, [73])
		```
		
		See [[PDFDocument.load]] for examples of the allowed input data formats.
	**/
	function embedPdf(pdf:ts.AnyOf4<String, js.lib.Uint8Array, js.lib.ArrayBuffer, PDFDocument>, ?indices:Array<Float>):js.lib.Promise<Array<PDFEmbeddedPage>>;
	/**
		Embed a single PDF page into this document.
		
		For example:
		```js
		const pdfDoc = await PDFDocument.create()
		
		const sourcePdfUrl = 'https://pdf-lib.js.org/assets/with_large_page_count.pdf'
		const sourceBuffer = await fetch(sourcePdfUrl).then((res) => res.arrayBuffer())
		const sourcePdfDoc = await PDFDocument.load(sourceBuffer)
		const sourcePdfPage = sourcePdfDoc.getPages()[73]
		
		const embeddedPage = await pdfDoc.embedPage(
		   sourcePdfPage,
		
		   // Clip a section of the source page so that we only embed part of it
		   { left: 100, right: 450, bottom: 330, top: 570 },
		
		   // Translate all drawings of the embedded page by (10, 200) units
		   [1, 0, 0, 1, 10, 200],
		)
		```
	**/
	function embedPage(page:PDFPage, ?boundingBox:PageBoundingBox, ?transformationMatrix:TransformationMatrix):js.lib.Promise<PDFEmbeddedPage>;
	/**
		Embed one or more PDF pages into this document.
		
		For example:
		```js
		const pdfDoc = await PDFDocument.create()
		
		const sourcePdfUrl = 'https://pdf-lib.js.org/assets/with_large_page_count.pdf'
		const sourceBuffer = await fetch(sourcePdfUrl).then((res) => res.arrayBuffer())
		const sourcePdfDoc = await PDFDocument.load(sourceBuffer)
		
		const page1 = sourcePdfDoc.getPages()[0]
		const page2 = sourcePdfDoc.getPages()[52]
		const page3 = sourcePdfDoc.getPages()[73]
		
		const embeddedPages = await pdfDoc.embedPages([page1, page2, page3])
		```
	**/
	function embedPages(pages:Array<PDFPage>, ?boundingBoxes:Array<Null<PageBoundingBox>>, ?transformationMatrices:Array<Null<TransformationMatrix>>):js.lib.Promise<Array<PDFEmbeddedPage>>;
	/**
		> **NOTE:** You shouldn't need to call this method directly. The [[save]]
		> and [[saveAsBase64]] methods will automatically ensure that all embedded
		> assets are flushed before serializing the document.
		
		Flush all embedded fonts, PDF pages, and images to this document's
		[[context]].
	**/
	function flush():js.lib.Promise<ts.Undefined>;
	/**
		Serialize this document to an array of bytes making up a PDF file.
		For example:
		```js
		const pdfBytes = await pdfDoc.save()
		```
		
		There are a number of things you can do with the serialized document,
		depending on the JavaScript environment you're running in:
		* Write it to a file in Node or React Native
		* Download it as a Blob in the browser
		* Render it in an `iframe`
	**/
	function save(?options:SaveOptions):js.lib.Promise<js.lib.Uint8Array>;
	/**
		Serialize this document to a base64 encoded string or data URI making up a
		PDF file. For example:
		```js
		const base64String = await pdfDoc.saveAsBase64()
		base64String // => 'JVBERi0xLjcKJYGBgYEKC...'
		
		const base64DataUri = await pdfDoc.saveAsBase64({ dataUri: true })
		base64DataUri // => 'data:application/pdf;base64,JVBERi0xLjcKJYGBgYEKC...'
		```
	**/
	function saveAsBase64(?options:Base64SaveOptions):js.lib.Promise<String>;
	function findPageForAnnotationRef(ref:PDFRef):Null<PDFPage>;
	private var embedAll : Dynamic;
	private var updateInfoDict : Dynamic;
	private var getInfoDict : Dynamic;
	private var assertFontkit : Dynamic;
	private var computePages : Dynamic;
	private var getOrCreateForm : Dynamic;
	static var prototype : PDFDocument;
	/**
		Load an existing [[PDFDocument]]. The input data can be provided in
		multiple formats:
		
		| Type          | Contents                                               |
		| ------------- | ------------------------------------------------------ |
		| `string`      | A base64 encoded string (or data URI) containing a PDF |
		| `Uint8Array`  | The raw bytes of a PDF                                 |
		| `ArrayBuffer` | The raw bytes of a PDF                                 |
		
		For example:
		```js
		import { PDFDocument } from 'pdf-lib'
		
		// pdf=string
		const base64 =
		  'JVBERi0xLjcKJYGBgYEKCjUgMCBvYmoKPDwKL0ZpbHRlciAvRmxhdGVEZWNvZGUKL0xlbm' +
		  'd0aCAxMDQKPj4Kc3RyZWFtCniccwrhMlAAwaJ0Ln2P1Jyy1JLM5ERdc0MjCwUjE4WQNC4Q' +
		  '6cNlCFZkqGCqYGSqEJLLZWNuYGZiZmbkYuZsZmlmZGRgZmluDCQNzc3NTM2NzdzMXMxMjQ' +
		  'ztFEKyuEK0uFxDuAAOERdVCmVuZHN0cmVhbQplbmRvYmoKCjYgMCBvYmoKPDwKL0ZpbHRl' +
		  'ciAvRmxhdGVEZWNvZGUKL1R5cGUgL09ialN0bQovTiA0Ci9GaXJzdCAyMAovTGVuZ3RoID' +
		  'IxNQo+PgpzdHJlYW0KeJxVj9GqwjAMhu/zFHkBzTo3nCCCiiKIHPEICuJF3cKoSCu2E8/b' +
		  '20wPIr1p8v9/8kVhgilmGfawX2CGaVrgcAi0/bsy0lrX7IGWpvJ4iJYEN3gEmrrGBlQwGs' +
		  'HHO9VBX1wNrxAqMX87RBD5xpJuddqwd82tjAHxzV1U5LPgy52DKXWnr1Lheg+j/c/pzGVr' +
		  'iqV0VlwZPXGPCJjElw/ybkwUmeoWgxesDXGhHJC/D/iikp1Av80ptKU0FdBEe25pPihAM1' +
		  'u6ytgaaWfs2Hrz35CJT1+EWmAKZW5kc3RyZWFtCmVuZG9iagoKNyAwIG9iago8PAovU2l6' +
		  'ZSA4Ci9Sb290IDIgMCBSCi9GaWx0ZXIgL0ZsYXRlRGVjb2RlCi9UeXBlIC9YUmVmCi9MZW' +
		  '5ndGggMzgKL1cgWyAxIDIgMiBdCi9JbmRleCBbIDAgOCBdCj4+CnN0cmVhbQp4nBXEwREA' +
		  'EBAEsCwz3vrvRmOOyyOoGhZdutHN2MT55fIAVocD+AplbmRzdHJlYW0KZW5kb2JqCgpzdG' +
		  'FydHhyZWYKNTEwCiUlRU9G'
		
		const dataUri = 'data:application/pdf;base64,' + base64
		
		const pdfDoc1 = await PDFDocument.load(base64)
		const pdfDoc2 = await PDFDocument.load(dataUri)
		
		// pdf=Uint8Array
		import fs from 'fs'
		const uint8Array = fs.readFileSync('with_update_sections.pdf')
		const pdfDoc3 = await PDFDocument.load(uint8Array)
		
		// pdf=ArrayBuffer
		const url = 'https://pdf-lib.js.org/assets/with_update_sections.pdf'
		const arrayBuffer = await fetch(url).then(res => res.arrayBuffer())
		const pdfDoc4 = await PDFDocument.load(arrayBuffer)
		
		```
	**/
	static function load(pdf:ts.AnyOf3<String, js.lib.Uint8Array, js.lib.ArrayBuffer>, ?options:LoadOptions):js.lib.Promise<PDFDocument>;
	/**
		Create a new [[PDFDocument]].
	**/
	static function create(?options:CreateOptions):js.lib.Promise<PDFDocument>;
}