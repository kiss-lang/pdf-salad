package pdf_lib;

/**
	Represents the interactive form of a [[PDFDocument]].
	
	Interactive forms (sometimes called _AcroForms_) are collections of fields
	designed to gather information from a user. A PDF document may contains any
	number of fields that appear on various pages, all of which make up a single,
	global interactive form spanning the entire document. This means that
	instances of [[PDFDocument]] shall contain at most one [[PDFForm]].
	
	The fields of an interactive form are represented by [[PDFField]] instances.
**/
@:jsRequire("pdf-lib", "PDFForm") extern class PDFForm {
	private function new();
	/**
		The low-level PDFAcroForm wrapped by this form.
	**/
	final acroForm : PDFAcroForm;
	/**
		The document to which this form belongs.
	**/
	final doc : PDFDocument;
	private final dirtyFields : Dynamic;
	private final defaultFontCache : Dynamic;
	/**
		Returns `true` if this [[PDFForm]] has XFA data. Most PDFs with form
		fields do not use XFA as it is not widely supported by PDF readers.
		
		> `pdf-lib` does not support creation, modification, or reading of XFA
		> fields.
		
		For example:
		```js
		const form = pdfDoc.getForm()
		if (form.hasXFA()) console.log('PDF has XFA data')
		```
	**/
	function hasXFA():Bool;
	/**
		Disconnect the XFA data from this [[PDFForm]] (if any exists). This will
		force readers to fallback to standard fields if the [[PDFDocument]]
		contains any. For example:
		
		For example:
		```js
		const form = pdfDoc.getForm()
		form.deleteXFA()
		```
	**/
	function deleteXFA():Void;
	/**
		Get all fields contained in this [[PDFForm]]. For example:
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
	function getFields():Array<PDFField>;
	/**
		Get the field in this [[PDFForm]] with the given name. For example:
		```js
		const form = pdfDoc.getForm()
		const field = form.getFieldMaybe('Page1.Foo.Bar[0]')
		if (field) console.log('Field exists!')
		```
	**/
	function getFieldMaybe(name:String):Null<PDFField>;
	/**
		Get the field in this [[PDFForm]] with the given name. For example:
		```js
		const form = pdfDoc.getForm()
		const field = form.getField('Page1.Foo.Bar[0]')
		```
		If no field exists with the provided name, an error will be thrown.
	**/
	function getField(name:String):PDFField;
	/**
		Get the button field in this [[PDFForm]] with the given name. For example:
		```js
		const form = pdfDoc.getForm()
		const button = form.getButton('Page1.Foo.Button[0]')
		```
		An error will be thrown if no field exists with the provided name, or if
		the field exists but is not a button.
	**/
	function getButton(name:String):PDFButton;
	/**
		Get the check box field in this [[PDFForm]] with the given name.
		For example:
		```js
		const form = pdfDoc.getForm()
		const checkBox = form.getCheckBox('Page1.Foo.CheckBox[0]')
		checkBox.check()
		```
		An error will be thrown if no field exists with the provided name, or if
		the field exists but is not a check box.
	**/
	function getCheckBox(name:String):PDFCheckBox;
	/**
		Get the dropdown field in this [[PDFForm]] with the given name.
		For example:
		```js
		const form = pdfDoc.getForm()
		const dropdown = form.getDropdown('Page1.Foo.Dropdown[0]')
		const options = dropdown.getOptions()
		dropdown.select(options[0])
		```
		An error will be thrown if no field exists with the provided name, or if
		the field exists but is not a dropdown.
	**/
	function getDropdown(name:String):PDFDropdown;
	/**
		Get the option list field in this [[PDFForm]] with the given name.
		For example:
		```js
		const form = pdfDoc.getForm()
		const optionList = form.getOptionList('Page1.Foo.OptionList[0]')
		const options = optionList.getOptions()
		optionList.select(options[0])
		```
		An error will be thrown if no field exists with the provided name, or if
		the field exists but is not an option list.
	**/
	function getOptionList(name:String):PDFOptionList;
	/**
		Get the radio group field in this [[PDFForm]] with the given name.
		For example:
		```js
		const form = pdfDoc.getForm()
		const radioGroup = form.getRadioGroup('Page1.Foo.RadioGroup[0]')
		const options = radioGroup.getOptions()
		radioGroup.select(options[0])
		```
		An error will be thrown if no field exists with the provided name, or if
		the field exists but is not a radio group.
	**/
	function getRadioGroup(name:String):PDFRadioGroup;
	/**
		Get the signature field in this [[PDFForm]] with the given name.
		For example:
		```js
		const form = pdfDoc.getForm()
		const signature = form.getSignature('Page1.Foo.Signature[0]')
		```
		An error will be thrown if no field exists with the provided name, or if
		the field exists but is not a signature.
	**/
	function getSignature(name:String):PDFSignature;
	/**
		Get the text field in this [[PDFForm]] with the given name.
		For example:
		```js
		const form = pdfDoc.getForm()
		const textField = form.getTextField('Page1.Foo.TextField[0]')
		textField.setText('Are you designed to act or to be acted upon?')
		```
		An error will be thrown if no field exists with the provided name, or if
		the field exists but is not a text field.
	**/
	function getTextField(name:String):PDFTextField;
	/**
		Create a new button field in this [[PDFForm]] with the given name.
		For example:
		```js
		const font = await pdfDoc.embedFont(StandardFonts.Helvetica)
		const page = pdfDoc.addPage()
		
		const form = pdfDoc.getForm()
		const button = form.createButton('cool.new.button')
		
		button.addToPage('Do Stuff', font, page)
		```
		An error will be thrown if a field already exists with the provided name.
	**/
	function createButton(name:String):PDFButton;
	/**
		Create a new check box field in this [[PDFForm]] with the given name.
		For example:
		```js
		const font = await pdfDoc.embedFont(StandardFonts.Helvetica)
		const page = pdfDoc.addPage()
		
		const form = pdfDoc.getForm()
		const checkBox = form.createCheckBox('cool.new.checkBox')
		
		checkBox.addToPage(page)
		```
		An error will be thrown if a field already exists with the provided name.
	**/
	function createCheckBox(name:String):PDFCheckBox;
	/**
		Create a new dropdown field in this [[PDFForm]] with the given name.
		For example:
		```js
		const font = await pdfDoc.embedFont(StandardFonts.Helvetica)
		const page = pdfDoc.addPage()
		
		const form = pdfDoc.getForm()
		const dropdown = form.createDropdown('cool.new.dropdown')
		
		dropdown.addToPage(font, page)
		```
		An error will be thrown if a field already exists with the provided name.
	**/
	function createDropdown(name:String):PDFDropdown;
	/**
		Create a new option list field in this [[PDFForm]] with the given name.
		For example:
		```js
		const font = await pdfDoc.embedFont(StandardFonts.Helvetica)
		const page = pdfDoc.addPage()
		
		const form = pdfDoc.getForm()
		const optionList = form.createOptionList('cool.new.optionList')
		
		optionList.addToPage(font, page)
		```
		An error will be thrown if a field already exists with the provided name.
	**/
	function createOptionList(name:String):PDFOptionList;
	/**
		Create a new radio group field in this [[PDFForm]] with the given name.
		For example:
		```js
		const font = await pdfDoc.embedFont(StandardFonts.Helvetica)
		const page = pdfDoc.addPage()
		
		const form = pdfDoc.getForm()
		const radioGroup = form.createRadioGroup('cool.new.radioGroup')
		
		radioGroup.addOptionToPage('is-dog', page, { y: 0 })
		radioGroup.addOptionToPage('is-cat', page, { y: 75 })
		```
		An error will be thrown if a field already exists with the provided name.
	**/
	function createRadioGroup(name:String):PDFRadioGroup;
	/**
		Create a new text field in this [[PDFForm]] with the given name.
		For example:
		```js
		const font = await pdfDoc.embedFont(StandardFonts.Helvetica)
		const page = pdfDoc.addPage()
		
		const form = pdfDoc.getForm()
		const textField = form.createTextField('cool.new.textField')
		
		textField.addToPage(font, page)
		```
		An error will be thrown if a field already exists with the provided name.
	**/
	function createTextField(name:String):PDFTextField;
	/**
		Flatten all fields in this [[PDFForm]].
		
		Flattening a form field will take the current appearance for each of that
		field's widgets and make them part of their page's content stream. All form
		fields and annotations associated are then removed. Note that once a form
		has been flattened its fields can no longer be accessed or edited.
		
		This operation is often used after filling form fields to ensure a
		consistent appearance across different PDF readers and/or printers.
		Another common use case is to copy a template document with form fields
		into another document. In this scenario you would load the template
		document, fill its fields, flatten it, and then copy its pages into the
		recipient document - the filled fields will be copied over.
		
		For example:
		```js
		const form = pdfDoc.getForm();
		form.flatten();
		```
	**/
	function flatten(?options:pdf_lib.cjs.api.form.pdfform.FlattenOptions):Void;
	/**
		Remove a field from this [[PDFForm]].
		
		For example:
		```js
		const form = pdfDoc.getForm();
		const ageField = form.getFields().find(x => x.getName() === 'Age');
		form.removeField(ageField);
		```
	**/
	function removeField(field:PDFField):Void;
	/**
		Update the appearance streams for all widgets of all fields in this
		[[PDFForm]]. Appearance streams will only be created for a widget if it
		does not have any existing appearance streams, or the field's value has
		changed (e.g. by calling [[PDFTextField.setText]] or
		[[PDFDropdown.select]]).
		
		For example:
		```js
		const courier = await pdfDoc.embedFont(StandardFonts.Courier)
		const form = pdfDoc.getForm()
		form.updateFieldAppearances(courier)
		```
		
		**IMPORTANT:** The default value for the `font` parameter is
		[[StandardFonts.Helvetica]]. Note that this is a WinAnsi font. This means
		that encoding errors will be thrown if any fields contain text with
		characters outside the WinAnsi character set (the latin alphabet).
		
		Embedding a custom font and passing that as the `font`
		parameter allows you to generate appearance streams with non WinAnsi
		characters (assuming your custom font supports them).
		
		> **NOTE:** The [[PDFDocument.save]] method will call this method to
		> update appearances automatically if a form was accessed via the
		> [[PDFDocument.getForm]] method prior to saving.
	**/
	function updateFieldAppearances(?font:PDFFont):Void;
	/**
		Mark a field as dirty. This will cause its appearance streams to be
		updated by [[PDFForm.updateFieldAppearances]].
		```js
		const form = pdfDoc.getForm()
		const field = form.getField('foo.bar')
		form.markFieldAsDirty(field.ref)
		```
	**/
	function markFieldAsDirty(fieldRef:PDFRef):Void;
	/**
		Mark a field as dirty. This will cause its appearance streams to not be
		updated by [[PDFForm.updateFieldAppearances]].
		```js
		const form = pdfDoc.getForm()
		const field = form.getField('foo.bar')
		form.markFieldAsClean(field.ref)
		```
	**/
	function markFieldAsClean(fieldRef:PDFRef):Void;
	/**
		Returns `true` is the specified field has been marked as dirty.
		```js
		const form = pdfDoc.getForm()
		const field = form.getField('foo.bar')
		if (form.fieldIsDirty(field.ref)) console.log('Field is dirty')
		```
	**/
	function fieldIsDirty(fieldRef:PDFRef):Bool;
	function getDefaultFont():PDFFont;
	private var findWidgetPage : Dynamic;
	private var findWidgetAppearanceRef : Dynamic;
	private var findOrCreateNonTerminals : Dynamic;
	private var findNonTerminal : Dynamic;
	private var embedDefaultFont : Dynamic;
	static var prototype : PDFForm;
	/**
		> **NOTE:** You probably don't want to call this method directly. Instead,
		> consider using the [[PDFDocument.getForm]] method, which will create an
		> instance of [[PDFForm]] for you.
		
		Create an instance of [[PDFForm]] from an existing acroForm and embedder
	**/
	static dynamic function of(acroForm:PDFAcroForm, doc:PDFDocument):PDFForm;
}