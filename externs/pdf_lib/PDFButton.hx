package pdf_lib;

/**
	Represents a button field of a [[PDFForm]].
	
	[[PDFButton]] fields are interactive controls that users can click with their
	mouse. This type of [[PDFField]] is not stateful. The purpose of a button
	is to perform an action when the user clicks on it, such as opening a print
	modal or resetting the form. Buttons are typically rectangular in shape and
	have a text label describing the action that they perform when clicked.
**/
@:jsRequire("pdf-lib", "PDFButton") extern class PDFButton extends PDFField {
	private function new();
	/**
		Display an image inside the bounds of this button's widgets. For example:
		```js
		const pngImage = await pdfDoc.embedPng(...)
		const button = form.getButton('some.button.field')
		button.setImage(pngImage, ImageAlignment.Center)
		```
		This will update the appearances streams for each of this button's widgets.
	**/
	function setImage(image:PDFImage, ?alignment:ImageAlignment):Void;
	/**
		Set the font size for this field. Larger font sizes will result in larger
		text being displayed when PDF readers render this button. Font sizes may
		be integer or floating point numbers. Supplying a negative font size will
		cause this method to throw an error.
		
		For example:
		```js
		const button = form.getButton('some.button.field')
		button.setFontSize(4)
		button.setFontSize(15.7)
		```
		
		> This method depends upon the existence of a default appearance
		> (`/DA`) string. If this field does not have a default appearance string,
		> or that string does not contain a font size (via the `Tf` operator),
		> then this method will throw an error.
	**/
	function setFontSize(fontSize:Float):Void;
	/**
		Show this button on the specified page with the given text. For example:
		```js
		const ubuntuFont = await pdfDoc.embedFont(ubuntuFontBytes)
		const page = pdfDoc.addPage()
		
		const form = pdfDoc.getForm()
		const button = form.createButton('some.button.field')
		
		button.addToPage('Do Stuff', page, {
		   x: 50,
		   y: 75,
		   width: 200,
		   height: 100,
		   textColor: rgb(1, 0, 0),
		   backgroundColor: rgb(0, 1, 0),
		   borderColor: rgb(0, 0, 1),
		   borderWidth: 2,
		   rotate: degrees(90),
		   font: ubuntuFont,
		})
		```
		This will create a new widget for this button field.
	**/
	function addToPage(text:String, page:PDFPage, ?options:pdf_lib.cjs.api.form.pdffield.FieldAppearanceOptions):Void;
	/**
		Update the appearance streams for each of this button's widgets using
		the default appearance provider for buttons. For example:
		```js
		const helvetica = await pdfDoc.embedFont(StandardFonts.Helvetica)
		const button = form.getButton('some.button.field')
		button.defaultUpdateAppearances(helvetica)
		```
	**/
	function defaultUpdateAppearances(font:PDFFont):Void;
	/**
		Update the appearance streams for each of this button's widgets using
		the given appearance provider. If no `provider` is passed, the default
		appearance provider for buttons will be used. For example:
		```js
		const helvetica = await pdfDoc.embedFont(StandardFonts.Helvetica)
		const button = form.getButton('some.button.field')
		button.updateAppearances(helvetica, (field, widget, font) => {
		   ...
		   return {
		     normal: drawButton(...),
		     down: drawButton(...),
		   }
		})
		```
	**/
	function updateAppearances(font:PDFFont, ?provider:ButtonAppearanceProvider):Void;
	private var updateWidgetAppearance : Dynamic;
	static var prototype : PDFButton;
	/**
		> **NOTE:** You probably don't want to call this method directly. Instead,
		> consider using the [[PDFForm.getButton]] method, which will create an
		> instance of [[PDFButton]] for you.
		
		Create an instance of [[PDFButton]] from an existing acroPushButton and ref
	**/
	static dynamic function of(acroPushButton:PDFAcroPushButton, ref:PDFRef, doc:PDFDocument):PDFButton;
}