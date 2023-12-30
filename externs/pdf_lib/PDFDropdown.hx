package pdf_lib;

/**
	Represents a dropdown field of a [[PDFForm]].
	
	[[PDFDropdown]] fields are interactive text boxes that display a single
	element (the currently selected value). The purpose of a dropdown is to
	enable users to select a single option from a set of possible options. Users
	can click on a dropdown to view the full list of options it provides.
	Clicking on an option in the list will cause it to be selected and displayed
	in the dropdown's text box. Some dropdowns allow users to enter text
	directly into the box from their keyboard, rather than only being allowed to
	choose an option from the list (see [[PDFDropdown.isEditable]]).
**/
@:jsRequire("pdf-lib", "PDFDropdown") extern class PDFDropdown extends PDFField {
	private function new();
	/**
		Get the list of available options for this dropdown. These options will be
		displayed to users who click on this dropdown in a PDF reader.
		For example:
		```js
		const dropdown = form.getDropdown('some.dropdown.field')
		const options = dropdown.getOptions()
		console.log('Dropdown options:', options)
		```
	**/
	function getOptions():Array<String>;
	/**
		Get the selected options for this dropdown. These are the values that were
		selected by a human user via a PDF reader, or programatically via
		software.
		For example:
		```js
		const dropdown = form.getDropdown('some.dropdown.field')
		const selections = dropdown.getSelected()
		console.log('Dropdown selections:', selections)
		```
		> **NOTE:** Note that PDF readers only display one selected option when
		> rendering dropdowns. However, the PDF specification does allow for
		> multiple values to be selected in a dropdown. As such, the `pdf-lib`
		> API supports this. However, in most cases the array returned by this
		> method will contain only a single element (or no elements).
	**/
	function getSelected():Array<String>;
	/**
		Set the list of options that are available for this dropdown. These are
		the values that will be available for users to select when they view this
		dropdown in a PDF reader. Note that preexisting options for this dropdown
		will be removed. Only the values passed as `options` will be available to
		select.
		For example:
		```js
		const dropdown = form.getDropdown('planets.dropdown')
		dropdown.setOptions(['Earth', 'Mars', 'Pluto', 'Venus'])
		```
	**/
	function setOptions(options:Array<String>):Void;
	/**
		Add to the list of options that are available for this dropdown. Users
		will be able to select these values in a PDF reader. In addition to the
		values passed as `options`, any preexisting options for this dropdown will
		still be available for users to select.
		For example:
		```js
		const dropdown = form.getDropdown('rockets.dropdown')
		dropdown.addOptions(['Saturn IV', 'Falcon Heavy'])
		```
	**/
	function addOptions(options:ts.AnyOf2<String, Array<String>>):Void;
	/**
		Select one or more values for this dropdown. This operation is analogous
		to a human user opening the dropdown in a PDF reader and clicking on a
		value to select it. This method will update the underlying state of the
		dropdown to indicate which values have been selected. PDF libraries and
		readers will be able to extract these values from the saved document and
		determine which values were selected.
		
		For example:
		```js
		const dropdown = form.getDropdown('best.superhero.dropdown')
		dropdown.select('One Punch Man')
		```
		
		This method will mark this dropdown as dirty, causing its appearance
		streams to be updated when either [[PDFDocument.save]] or
		[[PDFForm.updateFieldAppearances]] is called. The updated streams will
		display the selected option inside the widgets of this dropdown.
		
		**IMPORTANT:** The default font used to update appearance streams is
		[[StandardFonts.Helvetica]]. Note that this is a WinAnsi font. This means
		that encoding errors will be thrown if the selected option for this field
		contains characters outside the WinAnsi character set (the latin alphabet).
		
		Embedding a custom font and passing it to
		[[PDFForm.updateFieldAppearances]] or [[PDFDropdown.updateAppearances]]
		allows you to generate appearance streams with characters outside the
		latin alphabet (assuming the custom font supports them).
		
		Selecting an option that does not exist in this dropdown's option list
		(see [[PDFDropdown.getOptions]]) will enable editing on this dropdown
		(see [[PDFDropdown.enableEditing]]).
		
		> **NOTE:** PDF readers only display one selected option when rendering
		> dropdowns. However, the PDF specification does allow for multiple values
		> to be selected in a dropdown. As such, the `pdf-lib` API supports this.
		> However, it is not recommended to select more than one value with this
		> method, as only one will be visible. [[PDFOptionList]] fields are better
		> suited for displaying multiple selected values.
	**/
	function select(options:ts.AnyOf2<String, Array<String>>, ?merge:Bool):Void;
	/**
		Clear all selected values for this dropdown. This operation is equivalent
		to selecting an empty list. This method will update the underlying state
		of the dropdown to indicate that no values have been selected.
		For example:
		```js
		const dropdown = form.getDropdown('some.dropdown.field')
		dropdown.clear()
		```
		This method will mark this text field as dirty. See [[PDFDropdown.select]]
		for more details about what this means.
	**/
	function clear():Void;
	/**
		Set the font size for this field. Larger font sizes will result in larger
		text being displayed when PDF readers render this dropdown. Font sizes may
		be integer or floating point numbers. Supplying a negative font size will
		cause this method to throw an error.
		
		For example:
		```js
		const dropdown = form.getDropdown('some.dropdown.field')
		dropdown.setFontSize(4)
		dropdown.setFontSize(15.7)
		```
		
		> This method depends upon the existence of a default appearance
		> (`/DA`) string. If this field does not have a default appearance string,
		> or that string does not contain a font size (via the `Tf` operator),
		> then this method will throw an error.
	**/
	function setFontSize(fontSize:Float):Void;
	/**
		Returns `true` if users are allowed to edit the selected value of this
		dropdown directly and are not constrained by the list of available
		options. See [[PDFDropdown.enableEditing]] and
		[[PDFDropdown.disableEditing]]. For example:
		```js
		const dropdown = form.getDropdown('some.dropdown.field')
		if (dropdown.isEditable()) console.log('Editing is enabled')
		```
	**/
	function isEditable():Bool;
	/**
		Allow users to edit the selected value of this dropdown in PDF readers
		with their keyboard. This means that the selected value of this dropdown
		will not be constrained by the list of available options. However, if this
		dropdown has any available options, users will still be allowed to select
		from that list.
		For example:
		```js
		const dropdown = form.getDropdown('some.dropdown.field')
		dropdown.enableEditing()
		```
	**/
	function enableEditing():Void;
	/**
		Do not allow users to edit the selected value of this dropdown in PDF
		readers with their keyboard. This will constrain the selected value of
		this dropdown to the list of available options. Users will only be able
		to select an option from that list.
		For example:
		```js
		const dropdown = form.getDropdown('some.dropdown.field')
		dropdown.disableEditing()
		```
	**/
	function disableEditing():Void;
	/**
		Returns `true` if the option list of this dropdown is always displayed
		in alphabetical order, irrespective of the order in which the options
		were added to the dropdown. See [[PDFDropdown.enableSorting]] and
		[[PDFDropdown.disableSorting]]. For example:
		```js
		const dropdown = form.getDropdown('some.dropdown.field')
		if (dropdown.isSorted()) console.log('Sorting is enabled')
		```
	**/
	function isSorted():Bool;
	/**
		Always display the option list of this dropdown in alphabetical order,
		irrespective of the order in which the options were added to this dropdown.
		For example:
		```js
		const dropdown = form.getDropdown('some.dropdown.field')
		dropdown.enableSorting()
		```
	**/
	function enableSorting():Void;
	/**
		Do not always display the option list of this dropdown in alphabetical
		order. Instead, display the options in whichever order they were added
		to the list. For example:
		```js
		const dropdown = form.getDropdown('some.dropdown.field')
		dropdown.disableSorting()
		```
	**/
	function disableSorting():Void;
	/**
		Returns `true` if multiple options can be selected from this dropdown's
		option list. See [[PDFDropdown.enableMultiselect]] and
		[[PDFDropdown.disableMultiselect]]. For example:
		```js
		const dropdown = form.getDropdown('some.dropdown.field')
		if (dropdown.isMultiselect()) console.log('Multiselect is enabled')
		```
	**/
	function isMultiselect():Bool;
	/**
		Allow users to select more than one option from this dropdown's option
		list. For example:
		```js
		const dropdown = form.getDropdown('some.dropdown.field')
		dropdown.enableMultiselect()
		```
	**/
	function enableMultiselect():Void;
	/**
		Do not allow users to select more than one option from this dropdown's
		option list. For example:
		```js
		const dropdown = form.getDropdown('some.dropdown.field')
		dropdown.disableMultiselect()
		```
	**/
	function disableMultiselect():Void;
	/**
		Returns `true` if the selected option should be spell checked by PDF
		readers. Spell checking will only be performed if this dropdown allows
		editing (see [[PDFDropdown.isEditable]]). See
		[[PDFDropdown.enableSpellChecking]] and
		[[PDFDropdown.disableSpellChecking]]. For example:
		```js
		const dropdown = form.getDropdown('some.dropdown.field')
		if (dropdown.isSpellChecked()) console.log('Spell checking is enabled')
		```
	**/
	function isSpellChecked():Bool;
	/**
		Allow PDF readers to spell check the selected option of this dropdown.
		For example:
		```js
		const dropdown = form.getDropdown('some.dropdown.field')
		dropdown.enableSpellChecking()
		```
	**/
	function enableSpellChecking():Void;
	/**
		Do not allow PDF readers to spell check the selected option of this
		dropdown. For example:
		```js
		const dropdown = form.getDropdown('some.dropdown.field')
		dropdown.disableSpellChecking()
		```
	**/
	function disableSpellChecking():Void;
	/**
		Returns `true` if the option selected by a user is stored, or "committed",
		when the user clicks the option. The alternative is that the user's
		selection is stored when the user leaves this dropdown field (by clicking
		outside of it - on another field, for example). See
		[[PDFDropdown.enableSelectOnClick]] and
		[[PDFDropdown.disableSelectOnClick]]. For example:
		```js
		const dropdown = form.getDropdown('some.dropdown.field')
		if (dropdown.isSelectOnClick()) console.log('Select on click is enabled')
		```
	**/
	function isSelectOnClick():Bool;
	/**
		Store the option selected by a user immediately after the user clicks the
		option. Do not wait for the user to leave this dropdown field (by clicking
		outside of it - on another field, for example). For example:
		```js
		const dropdown = form.getDropdown('some.dropdown.field')
		dropdown.enableSelectOnClick()
		```
	**/
	function enableSelectOnClick():Void;
	/**
		Wait to store the option selected by a user until they leave this dropdown
		field (by clicking outside of it - on another field, for example).
		For example:
		```js
		const dropdown = form.getDropdown('some.dropdown.field')
		dropdown.disableSelectOnClick()
		```
	**/
	function disableSelectOnClick():Void;
	/**
		Show this dropdown on the specified page. For example:
		```js
		const ubuntuFont = await pdfDoc.embedFont(ubuntuFontBytes)
		const page = pdfDoc.addPage()
		
		const form = pdfDoc.getForm()
		const dropdown = form.createDropdown('best.gundam')
		dropdown.setOptions(['Exia', 'Dynames'])
		dropdown.select('Exia')
		
		dropdown.addToPage(page, {
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
		This will create a new widget for this dropdown field.
	**/
	function addToPage(page:PDFPage, ?options:pdf_lib.cjs.api.form.pdffield.FieldAppearanceOptions):Void;
	/**
		Update the appearance streams for each of this dropdown's widgets using
		the default appearance provider for dropdowns. For example:
		```js
		const helvetica = await pdfDoc.embedFont(StandardFonts.Helvetica)
		const dropdown = form.getDropdown('some.dropdown.field')
		dropdown.defaultUpdateAppearances(helvetica)
		```
	**/
	function defaultUpdateAppearances(font:PDFFont):Void;
	/**
		Update the appearance streams for each of this dropdown's widgets using
		the given appearance provider. If no `provider` is passed, the default
		appearance provider for dropdowns will be used. For example:
		```js
		const helvetica = await pdfDoc.embedFont(StandardFonts.Helvetica)
		const dropdown = form.getDropdown('some.dropdown.field')
		dropdown.updateAppearances(helvetica, (field, widget, font) => {
		   ...
		   return drawTextField(...)
		})
		```
	**/
	function updateAppearances(font:PDFFont, ?provider:DropdownAppearanceProvider):Void;
	private var updateWidgetAppearance : Dynamic;
	static var prototype : PDFDropdown;
	/**
		> **NOTE:** You probably don't want to call this method directly. Instead,
		> consider using the [[PDFForm.getDropdown]] method, which will create an
		> instance of [[PDFDropdown]] for you.
		
		Create an instance of [[PDFDropdown]] from an existing acroComboBox and ref
	**/
	static dynamic function of(acroComboBox:PDFAcroComboBox, ref:PDFRef, doc:PDFDocument):PDFDropdown;
}