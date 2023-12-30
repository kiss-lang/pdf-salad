package pdf_lib;

/**
	Represents a field of a [[PDFForm]].
	
	This class is effectively abstract. All fields in a [[PDFForm]] will
	actually be an instance of a subclass of this class.
	
	Note that each field in a PDF is represented by a single field object.
	However, a given field object may be rendered at multiple locations within
	the document (across one or more pages). The rendering of a field is
	controlled by its widgets. Each widget causes its field to be displayed at a
	particular location in the document.
	
	Most of the time each field in a PDF has only a single widget, and thus is
	only rendered once. However, if a field is rendered multiple times, it will
	have multiple widgets - one for each location it is rendered.
	
	This abstraction of field objects and widgets is defined in the PDF
	specification and dictates how PDF files store fields and where they are
	to be rendered.
**/
@:jsRequire("pdf-lib", "PDFField") extern class PDFField {
	private function new(acroField:PDFAcroTerminal, ref:PDFRef, doc:PDFDocument);
	/**
		The low-level PDFAcroTerminal wrapped by this field.
	**/
	final acroField : PDFAcroTerminal;
	/**
		The unique reference assigned to this field within the document.
	**/
	final ref : PDFRef;
	/**
		The document to which this field belongs.
	**/
	final doc : PDFDocument;
	/**
		Get the fully qualified name of this field. For example:
		```js
		const fields = form.getFields()
		fields.forEach(field => {
		   const name = field.getName()
		   console.log('Field name:', name)
		})
		```
		Note that PDF fields are structured as a tree. Each field is the
		descendent of a series of ancestor nodes all the way up to the form node,
		which is always the root of the tree. Each node in the tree (except for
		the form node) has a partial name. Partial names can be composed of any
		unicode characters except a period (`.`). The fully qualified name of a
		field is composed of the partial names of all its ancestors joined
		with periods. This means that splitting the fully qualified name on
		periods and taking the last element of the resulting array will give you
		the partial name of a specific field.
	**/
	function getName():String;
	/**
		Returns `true` if this field is read only. This means that PDF readers
		will not allow users to interact with the field or change its value. See
		[[PDFField.enableReadOnly]] and [[PDFField.disableReadOnly]].
		For example:
		```js
		const field = form.getField('some.field')
		if (field.isReadOnly()) console.log('Read only is enabled')
		```
	**/
	function isReadOnly():Bool;
	/**
		Prevent PDF readers from allowing users to interact with this field or
		change its value. The field will not respond to mouse or keyboard input.
		For example:
		```js
		const field = form.getField('some.field')
		field.enableReadOnly()
		```
		Useful for fields whose values are computed, imported from a database, or
		prefilled by software before being displayed to the user.
	**/
	function enableReadOnly():Void;
	/**
		Allow users to interact with this field and change its value in PDF
		readers via mouse and keyboard input. For example:
		```js
		const field = form.getField('some.field')
		field.disableReadOnly()
		```
	**/
	function disableReadOnly():Void;
	/**
		Returns `true` if this field must have a value when the form is submitted.
		See [[PDFField.enableRequired]] and [[PDFField.disableRequired]].
		For example:
		```js
		const field = form.getField('some.field')
		if (field.isRequired()) console.log('Field is required')
		```
	**/
	function isRequired():Bool;
	/**
		Require this field to have a value when the form is submitted.
		For example:
		```js
		const field = form.getField('some.field')
		field.enableRequired()
		```
	**/
	function enableRequired():Void;
	/**
		Do not require this field to have a value when the form is submitted.
		For example:
		```js
		const field = form.getField('some.field')
		field.disableRequired()
		```
	**/
	function disableRequired():Void;
	/**
		Returns `true` if this field's value should be exported when the form is
		submitted. See [[PDFField.enableExporting]] and
		[[PDFField.disableExporting]].
		For example:
		```js
		const field = form.getField('some.field')
		if (field.isExported()) console.log('Exporting is enabled')
		```
	**/
	function isExported():Bool;
	/**
		Indicate that this field's value should be exported when the form is
		submitted in a PDF reader. For example:
		```js
		const field = form.getField('some.field')
		field.enableExporting()
		```
	**/
	function enableExporting():Void;
	/**
		Indicate that this field's value should **not** be exported when the form
		is submitted in a PDF reader. For example:
		```js
		const field = form.getField('some.field')
		field.disableExporting()
		```
	**/
	function disableExporting():Void;
	function needsAppearancesUpdate():Bool;
	function defaultUpdateAppearances(_font:PDFFont):Void;
	private function markAsDirty():Void;
	private function markAsClean():Void;
	private function isDirty():Bool;
	private function createWidget(options:{ var x : Float; var y : Float; var width : Float; var height : Float; @:optional var textColor : Color; @:optional var backgroundColor : Color; @:optional var borderColor : Color; var borderWidth : Float; var rotate : Rotation; @:optional var caption : String; @:optional var hidden : Bool; @:optional var page : PDFRef; }):PDFWidgetAnnotation;
	private function updateWidgetAppearanceWithFont(widget:PDFWidgetAnnotation, font:PDFFont, __2:AppearanceMapping<Array<PDFOperator>>):Void;
	private function updateOnOffWidgetAppearance(widget:PDFWidgetAnnotation, onValue:PDFName, __2:AppearanceMapping<{ var on : Array<PDFOperator>; var off : Array<PDFOperator>; }>):Void;
	private function updateWidgetAppearances(widget:PDFWidgetAnnotation, __1:AppearanceMapping<ts.AnyOf2<PDFRef, PDFDict>>):Void;
	private var createAppearanceStream : Dynamic;
	/**
		Create a FormXObject of the supplied image and add it to context.
		The FormXObject size is calculated based on the widget (including
		the alignment).
	**/
	private function createImageAppearanceStream(widget:PDFWidgetAnnotation, image:PDFImage, alignment:ImageAlignment):PDFRef;
	private var createAppearanceDict : Dynamic;
	static var prototype : PDFField;
}