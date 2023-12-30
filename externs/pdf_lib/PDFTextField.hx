package pdf_lib;

/**
	Represents a text field of a [[PDFForm]].
	
	[[PDFTextField]] fields are boxes that display text entered by the user. The
	purpose of a text field is to enable users to enter text or view text values
	in the document prefilled by software. Users can click on a text field and
	input text via their keyboard. Some text fields allow multiple lines of text
	to be entered (see [[PDFTextField.isMultiline]]).
**/
@:jsRequire("pdf-lib", "PDFTextField") extern class PDFTextField extends PDFField {
	private function new();
	/**
		Get the text that this field contains. This text is visible to users who
		view this field in a PDF reader.
		
		For example:
		```js
		const textField = form.getTextField('some.text.field')
		const text = textField.getText()
		console.log('Text field contents:', text)
		```
		
		Note that if this text field contains no underlying value, `undefined`
		will be returned. Text fields may also contain an underlying value that
		is simply an empty string (`''`). This detail is largely irrelevant for
		most applications. In general, you'll want to treat both cases the same
		way and simply consider the text field to be empty. In either case, the
		text field will appear empty to users when viewed in a PDF reader.
		
		An error will be thrown if this is a rich text field. `pdf-lib` does not
		support reading rich text fields. Nor do most PDF readers and writers.
		Rich text fields are based on XFA (XML Forms Architecture). Relatively few
		PDFs use rich text fields or XFA. Unlike PDF itself, XFA is not an ISO
		standard. XFA has been deprecated in PDF 2.0:
		* https://en.wikipedia.org/wiki/XFA
		* http://blog.pdfshareforms.com/pdf-2-0-release-bid-farewell-xfa-forms/
	**/
	function getText():Null<String>;
	/**
		Set the text for this field. This operation is analogous to a human user
		clicking on the text field in a PDF reader and typing in text via their
		keyboard. This method will update the underlying state of the text field
		to indicate what text has been set. PDF libraries and readers will be able
		to extract these values from the saved document and determine what text
		was set.
		
		For example:
		```js
		const textField = form.getTextField('best.superhero.text.field')
		textField.setText('One Punch Man')
		```
		
		This method will mark this text field as dirty, causing its appearance
		streams to be updated when either [[PDFDocument.save]] or
		[[PDFForm.updateFieldAppearances]] is called. The updated streams will
		display the text this field contains inside the widgets of this text
		field.
		
		**IMPORTANT:** The default font used to update appearance streams is
		[[StandardFonts.Helvetica]]. Note that this is a WinAnsi font. This means
		that encoding errors will be thrown if this field contains text outside
		the WinAnsi character set (the latin alphabet).
		
		Embedding a custom font and passing it to
		[[PDFForm.updateFieldAppearances]] or [[PDFTextField.updateAppearances]]
		allows you to generate appearance streams with characters outside the
		latin alphabet (assuming the custom font supports them).
		
		If this is a rich text field, it will be converted to a standard text
		field in order to set the text. `pdf-lib` does not support writing rich
		text strings. Nor do most PDF readers and writers. See
		[[PDFTextField.getText]] for more information about rich text fields and
		their deprecation in PDF 2.0.
	**/
	function setText(text:Null<String>):Void;
	/**
		Get the alignment for this text field. This value represents the
		justification of the text when it is displayed to the user in PDF readers.
		There are three possible alignments: left, center, and right. For example:
		```js
		const textField = form.getTextField('some.text.field')
		const alignment = textField.getAlignment()
		if (alignment === TextAlignment.Left) console.log('Text is left justified')
		if (alignment === TextAlignment.Center) console.log('Text is centered')
		if (alignment === TextAlignment.Right) console.log('Text is right justified')
		```
	**/
	function getAlignment():TextAlignment;
	/**
		Set the alignment for this text field. This will determine the
		justification of the text when it is displayed to the user in PDF readers.
		There are three possible alignments: left, center, and right. For example:
		```js
		const textField = form.getTextField('some.text.field')
		
		// Text will be left justified when displayed
		textField.setAlignment(TextAlignment.Left)
		
		// Text will be centered when displayed
		textField.setAlignment(TextAlignment.Center)
		
		// Text will be right justified when displayed
		textField.setAlignment(TextAlignment.Right)
		```
		This method will mark this text field as dirty. See
		[[PDFTextField.setText]] for more details about what this means.
	**/
	function setAlignment(alignment:TextAlignment):Void;
	/**
		Get the maximum length of this field. This value represents the maximum
		number of characters that can be typed into this field by the user. If
		this field does not have a maximum length, `undefined` is returned.
		For example:
		```js
		const textField = form.getTextField('some.text.field')
		const maxLength = textField.getMaxLength()
		if (maxLength === undefined) console.log('No max length')
		else console.log(`Max length is ${maxLength}`)
		```
	**/
	function getMaxLength():Null<Float>;
	/**
		Set the maximum length of this field. This limits the number of characters
		that can be typed into this field by the user. This also limits the length
		of the string that can be passed to [[PDFTextField.setText]]. This limit
		can be removed by passing `undefined` as `maxLength`. For example:
		```js
		const textField = form.getTextField('some.text.field')
		
		// Allow between 0 and 5 characters to be entered
		textField.setMaxLength(5)
		
		// Allow any number of characters to be entered
		textField.setMaxLength(undefined)
		```
		This method will mark this text field as dirty. See
		[[PDFTextField.setText]] for more details about what this means.
	**/
	function setMaxLength(?maxLength:Float):Void;
	/**
		Remove the maximum length for this text field. This allows any number of
		characters to be typed into this field by the user. For example:
		```js
		const textField = form.getTextField('some.text.field')
		textField.removeMaxLength()
		```
		Calling this method is equivalent to passing `undefined` to
		[[PDFTextField.setMaxLength]].
	**/
	function removeMaxLength():Void;
	/**
		Display an image inside the bounds of this text field's widgets. For example:
		```js
		const pngImage = await pdfDoc.embedPng(...)
		const textField = form.getTextField('some.text.field')
		textField.setImage(pngImage)
		```
		This will update the appearances streams for each of this text field's widgets.
	**/
	function setImage(image:PDFImage):Void;
	/**
		Set the font size for this field. Larger font sizes will result in larger
		text being displayed when PDF readers render this text field. Font sizes
		may be integer or floating point numbers. Supplying a negative font size
		will cause this method to throw an error.
		
		For example:
		```js
		const textField = form.getTextField('some.text.field')
		textField.setFontSize(4)
		textField.setFontSize(15.7)
		```
		
		> This method depends upon the existence of a default appearance
		> (`/DA`) string. If this field does not have a default appearance string,
		> or that string does not contain a font size (via the `Tf` operator),
		> then this method will throw an error.
	**/
	function setFontSize(fontSize:Float):Void;
	/**
		Returns `true` if each line of text is shown on a new line when this
		field is displayed in a PDF reader. The alternative is that all lines of
		text are merged onto a single line when displayed. See
		[[PDFTextField.enableMultiline]] and [[PDFTextField.disableMultiline]].
		For example:
		```js
		const textField = form.getTextField('some.text.field')
		if (textField.isMultiline()) console.log('Multiline is enabled')
		```
	**/
	function isMultiline():Bool;
	/**
		Display each line of text on a new line when this field is displayed in a
		PDF reader. For example:
		```js
		const textField = form.getTextField('some.text.field')
		textField.enableMultiline()
		```
		This method will mark this text field as dirty. See
		[[PDFTextField.setText]] for more details about what this means.
	**/
	function enableMultiline():Void;
	/**
		Display each line of text on the same line when this field is displayed
		in a PDF reader. For example:
		```js
		const textField = form.getTextField('some.text.field')
		textField.disableMultiline()
		```
		This method will mark this text field as dirty. See
		[[PDFTextField.setText]] for more details about what this means.
	**/
	function disableMultiline():Void;
	/**
		Returns `true` if this is a password text field. This means that the field
		is intended for storing a secure password. See
		[[PDFTextField.enablePassword]] and [[PDFTextField.disablePassword]].
		For example:
		```js
		const textField = form.getTextField('some.text.field')
		if (textField.isPassword()) console.log('Password is enabled')
		```
	**/
	function isPassword():Bool;
	/**
		Indicate that this text field is intended for storing a secure password.
		For example:
		```js
		const textField = form.getTextField('some.text.field')
		textField.enablePassword()
		```
		Values entered into password text fields should not be displayed on the
		screen by PDF readers. Most PDF readers will display the value as
		asterisks or bullets. PDF readers should never store values entered by the
		user into password text fields. Similarly, applications should not
		write data to a password text field.
		
		**Please note that this method does not cause entered values to be
		encrypted or secured in any way! It simply sets a flag that PDF software
		and readers can access to determine the _purpose_ of this field.**
	**/
	function enablePassword():Void;
	/**
		Indicate that this text field is **not** intended for storing a secure
		password. For example:
		```js
		const textField = form.getTextField('some.text.field')
		textField.disablePassword()
		```
	**/
	function disablePassword():Void;
	/**
		Returns `true` if the contents of this text field represent a file path.
		See [[PDFTextField.enableFileSelection]] and
		[[PDFTextField.disableFileSelection]]. For example:
		```js
		const textField = form.getTextField('some.text.field')
		if (textField.isFileSelector()) console.log('Is a file selector')
		```
	**/
	function isFileSelector():Bool;
	/**
		Indicate that this text field is intended to store a file path. The
		contents of the file stored at that path should be submitted as the value
		of the field. For example:
		```js
		const textField = form.getTextField('some.text.field')
		textField.enableFileSelection()
		```
	**/
	function enableFileSelection():Void;
	/**
		Indicate that this text field is **not** intended to store a file path.
		For example:
		```js
		const textField = form.getTextField('some.text.field')
		textField.disableFileSelection()
		```
	**/
	function disableFileSelection():Void;
	/**
		Returns `true` if the text entered in this field should be spell checked
		by PDF readers. See [[PDFTextField.enableSpellChecking]] and
		[[PDFTextField.disableSpellChecking]]. For example:
		```js
		const textField = form.getTextField('some.text.field')
		if (textField.isSpellChecked()) console.log('Spell checking is enabled')
		```
	**/
	function isSpellChecked():Bool;
	/**
		Allow PDF readers to spell check the text entered in this field.
		For example:
		```js
		const textField = form.getTextField('some.text.field')
		textField.enableSpellChecking()
		```
	**/
	function enableSpellChecking():Void;
	/**
		Do not allow PDF readers to spell check the text entered in this field.
		For example:
		```js
		const textField = form.getTextField('some.text.field')
		textField.disableSpellChecking()
		```
	**/
	function disableSpellChecking():Void;
	/**
		Returns `true` if PDF readers should allow the user to scroll the text
		field when its contents do not fit within the field's view bounds. See
		[[PDFTextField.enableScrolling]] and [[PDFTextField.disableScrolling]].
		For example:
		```js
		const textField = form.getTextField('some.text.field')
		if (textField.isScrollable()) console.log('Scrolling is enabled')
		```
	**/
	function isScrollable():Bool;
	/**
		Allow PDF readers to present a scroll bar to the user when the contents
		of this text field do not fit within its view bounds. For example:
		```js
		const textField = form.getTextField('some.text.field')
		textField.enableScrolling()
		```
		A horizontal scroll bar should be shown for singleline fields. A vertical
		scroll bar should be shown for multiline fields.
	**/
	function enableScrolling():Void;
	/**
		Do not allow PDF readers to present a scroll bar to the user when the
		contents of this text field do not fit within its view bounds. For example:
		```js
		const textField = form.getTextField('some.text.field')
		textField.disableScrolling()
		```
	**/
	function disableScrolling():Void;
	/**
		Returns `true` if this is a combed text field. This means that the field
		is split into `n` equal size cells with one character in each (where `n`
		is equal to the max length of the text field). The result is that all
		characters in this field are displayed an equal distance apart from one
		another. See [[PDFTextField.enableCombing]] and
		[[PDFTextField.disableCombing]]. For example:
		```js
		const textField = form.getTextField('some.text.field')
		if (textField.isCombed()) console.log('Combing is enabled')
		```
		Note that in order for a text field to be combed, the following must be
		true (in addition to enabling combing):
		* It must not be a multiline field (see [[PDFTextField.isMultiline]])
		* It must not be a password field (see [[PDFTextField.isPassword]])
		* It must not be a file selector field (see [[PDFTextField.isFileSelector]])
		* It must have a max length defined (see [[PDFTextField.setMaxLength]])
	**/
	function isCombed():Bool;
	/**
		Split this field into `n` equal size cells with one character in each
		(where `n` is equal to the max length of the text field). This will cause
		all characters in the field to be displayed an equal distance apart from
		one another. For example:
		```js
		const textField = form.getTextField('some.text.field')
		textField.enableCombing()
		```
		
		In addition to calling this method, text fields must have a max length
		defined in order to be combed (see [[PDFTextField.setMaxLength]]).
		
		This method will also call the following three methods internally:
		* [[PDFTextField.disableMultiline]]
		* [[PDFTextField.disablePassword]]
		* [[PDFTextField.disableFileSelection]]
		
		This method will mark this text field as dirty. See
		[[PDFTextField.setText]] for more details about what this means.
	**/
	function enableCombing():Void;
	/**
		Turn off combing for this text field. For example:
		```js
		const textField = form.getTextField('some.text.field')
		textField.disableCombing()
		```
		See [[PDFTextField.isCombed]] and [[PDFTextField.enableCombing]] for more
		information about what combing is.
		
		This method will mark this text field as dirty. See
		[[PDFTextField.setText]] for more details about what this means.
	**/
	function disableCombing():Void;
	/**
		Returns `true` if this text field contains rich text. See
		[[PDFTextField.enableRichFormatting]] and
		[[PDFTextField.disableRichFormatting]]. For example:
		```js
		const textField = form.getTextField('some.text.field')
		if (textField.isRichFormatted()) console.log('Rich formatting enabled')
		```
	**/
	function isRichFormatted():Bool;
	/**
		Indicate that this field contains XFA data - or rich text. For example:
		```js
		const textField = form.getTextField('some.text.field')
		textField.enableRichFormatting()
		```
		Note that `pdf-lib` does not support reading or writing rich text fields.
		Nor do most PDF readers and writers. Rich text fields are based on XFA
		(XML Forms Architecture). Relatively few PDFs use rich text fields or XFA.
		Unlike PDF itself, XFA is not an ISO standard. XFA has been deprecated in
		PDF 2.0:
		* https://en.wikipedia.org/wiki/XFA
		* http://blog.pdfshareforms.com/pdf-2-0-release-bid-farewell-xfa-forms/
	**/
	function enableRichFormatting():Void;
	/**
		Indicate that this is a standard text field that does not XFA data (rich
		text). For example:
		```js
		const textField = form.getTextField('some.text.field')
		textField.disableRichFormatting()
		```
	**/
	function disableRichFormatting():Void;
	/**
		Show this text field on the specified page. For example:
		```js
		const ubuntuFont = await pdfDoc.embedFont(ubuntuFontBytes)
		const page = pdfDoc.addPage()
		
		const form = pdfDoc.getForm()
		const textField = form.createTextField('best.gundam')
		textField.setText('Exia')
		
		textField.addToPage(page, {
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
		This will create a new widget for this text field.
	**/
	function addToPage(page:PDFPage, ?options:pdf_lib.cjs.api.form.pdffield.FieldAppearanceOptions):Void;
	/**
		Update the appearance streams for each of this text field's widgets using
		the default appearance provider for text fields. For example:
		```js
		const helvetica = await pdfDoc.embedFont(StandardFonts.Helvetica)
		const textField = form.getTextField('some.text.field')
		textField.defaultUpdateAppearances(helvetica)
		```
	**/
	function defaultUpdateAppearances(font:PDFFont):Void;
	/**
		Update the appearance streams for each of this text field's widgets using
		the given appearance provider. If no `provider` is passed, the default
		appearance provider for text fields will be used. For example:
		```js
		const helvetica = await pdfDoc.embedFont(StandardFonts.Helvetica)
		const textField = form.getTextField('some.text.field')
		textField.updateAppearances(helvetica, (field, widget, font) => {
		   ...
		   return drawTextField(...)
		})
		```
	**/
	function updateAppearances(font:PDFFont, ?provider:TextFieldAppearanceProvider):Void;
	private var updateWidgetAppearance : Dynamic;
	static var prototype : PDFTextField;
	/**
		> **NOTE:** You probably don't want to call this method directly. Instead,
		> consider using the [[PDFForm.getTextField]] method, which will create an
		> instance of [[PDFTextField]] for you.
		
		Create an instance of [[PDFTextField]] from an existing acroText and ref
	**/
	static dynamic function of(acroText:PDFAcroText, ref:PDFRef, doc:PDFDocument):PDFTextField;
}