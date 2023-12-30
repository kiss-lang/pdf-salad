package pdf_lib;

/**
	Represents a check box field of a [[PDFForm]].
	
	[[PDFCheckBox]] fields are interactive boxes that users can click with their
	mouse. This type of [[PDFField]] has two states: `on` and `off`. The purpose
	of a check box is to enable users to select from one or more options, where
	each option is represented by a single check box. Check boxes are typically
	square in shape and display a check mark when they are in the `on` state.
**/
@:jsRequire("pdf-lib", "PDFCheckBox") extern class PDFCheckBox extends PDFField {
	private function new();
	/**
		Mark this check box. This operation is analogous to a human user clicking
		a check box to fill it in a PDF reader. This method will update the
		underlying state of the check box field to indicate it has been selected.
		PDF libraries and readers will be able to extract this value from the
		saved document and determine that it was selected.
		
		For example:
		```js
		const checkBox = form.getCheckBox('some.checkBox.field')
		checkBox.check()
		```
		
		This method will mark this check box as dirty, causing its appearance
		streams to be updated when either [[PDFDocument.save]] or
		[[PDFForm.updateFieldAppearances]] is called. The updated appearance
		streams will display a check mark inside the widgets of this check box
		field.
	**/
	function check():Void;
	/**
		Clears this check box. This operation is analogous to a human user clicking
		a check box to unmark it in a PDF reader. This method will update the
		underlying state of the check box field to indicate it has been deselected.
		PDF libraries and readers will be able to extract this value from the
		saved document and determine that it was not selected.
		
		For example:
		```js
		const checkBox = form.getCheckBox('some.checkBox.field')
		checkBox.uncheck()
		```
		
		This method will mark this check box as dirty. See [[PDFCheckBox.check]]
		for more details about what this means.
	**/
	function uncheck():Void;
	/**
		Returns `true` if this check box is selected (either by a human user via
		a PDF reader, or else programmatically via software). For example:
		```js
		const checkBox = form.getCheckBox('some.checkBox.field')
		if (checkBox.isChecked()) console.log('check box is selected')
		```
	**/
	function isChecked():Bool;
	/**
		Show this check box on the specified page. For example:
		```js
		const helvetica = await pdfDoc.embedFont(StandardFonts.Helvetica)
		const page = pdfDoc.addPage()
		
		const form = pdfDoc.getForm()
		const checkBox = form.createCheckBox('some.checkBox.field')
		
		checkBox.addToPage(page, {
		   x: 50,
		   y: 75,
		   width: 25,
		   height: 25,
		   textColor: rgb(1, 0, 0),
		   backgroundColor: rgb(0, 1, 0),
		   borderColor: rgb(0, 0, 1),
		   borderWidth: 2,
		   rotate: degrees(90),
		})
		```
		This will create a new widget for this check box field.
	**/
	function addToPage(page:PDFPage, ?options:pdf_lib.cjs.api.form.pdffield.FieldAppearanceOptions):Void;
	/**
		Update the appearance streams for each of this check box's widgets using
		the default appearance provider for check boxes. For example:
		```js
		const checkBox = form.getCheckBox('some.checkBox.field')
		checkBox.defaultUpdateAppearances()
		```
	**/
	function defaultUpdateAppearances():Void;
	/**
		Update the appearance streams for each of this check box's widgets using
		the given appearance provider. If no `provider` is passed, the default
		appearance provider for check boxs will be used. For example:
		```js
		const checkBox = form.getCheckBox('some.checkBox.field')
		checkBox.updateAppearances((field, widget) => {
		   ...
		   return {
		     normal: { on: drawCheckBox(...), off: drawCheckBox(...) },
		     down: { on: drawCheckBox(...), off: drawCheckBox(...) },
		   }
		})
		```
	**/
	function updateAppearances(?provider:CheckBoxAppearanceProvider):Void;
	private var updateWidgetAppearance : Dynamic;
	static var prototype : PDFCheckBox;
	/**
		> **NOTE:** You probably don't want to call this method directly. Instead,
		> consider using the [[PDFForm.getCheckBox]] method, which will create an
		> instance of [[PDFCheckBox]] for you.
		
		Create an instance of [[PDFCheckBox]] from an existing acroCheckBox and ref
	**/
	static dynamic function of(acroCheckBox:PDFAcroCheckBox, ref:PDFRef, doc:PDFDocument):PDFCheckBox;
}