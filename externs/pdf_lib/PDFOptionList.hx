package pdf_lib;

/**
	Represents an option list field of a [[PDFForm]].
	
	[[PDFOptionList]] fields are interactive lists of options. The purpose of an
	option list is to enable users to select one or more options from a set of
	possible options. Users are able to see the full set of options without
	first having to click on the field (though scrolling may be necessary).
	Clicking an option in the list will cause it to be selected and displayed
	with a highlighted background. Some option lists allow users to select
	more than one option (see [[PDFOptionList.isMultiselect]]).
**/
@:jsRequire("pdf-lib", "PDFOptionList") extern class PDFOptionList extends PDFField {
	private function new();
	/**
		Get the list of available options for this option list. These options will
		be displayed to users who view this option list in a PDF reader.
		For example:
		```js
		const optionList = form.getOptionList('some.optionList.field')
		const options = optionList.getOptions()
		console.log('Option List options:', options)
		```
	**/
	function getOptions():Array<String>;
	/**
		Get the selected options for this option list. These are the values that
		were selected by a human user via a PDF reader, or programatically via
		software.
		For example:
		```js
		const optionList = form.getOptionList('some.optionList.field')
		const selections = optionList.getSelected()
		console.log('Option List selections:', selections)
		```
	**/
	function getSelected():Array<String>;
	/**
		Set the list of options that are available for this option list. These are
		the values that will be available for users to select when they view this
		option list in a PDF reader. Note that preexisting options for this
		option list will be removed. Only the values passed as `options` will be
		available to select.
		
		For example:
		```js
		const optionList = form.getOptionList('planets.optionList')
		optionList.setOptions(['Earth', 'Mars', 'Pluto', 'Venus'])
		```
		
		This method will mark this option list as dirty, causing its appearance
		streams to be updated when either [[PDFDocument.save]] or
		[[PDFForm.updateFieldAppearances]] is called. The updated streams will
		display the options this field contains inside the widgets of this text
		field (with selected options highlighted).
		
		**IMPORTANT:** The default font used to update appearance streams is
		[[StandardFonts.Helvetica]]. Note that this is a WinAnsi font. This means
		that encoding errors will be thrown if this field contains any options
		with characters outside the WinAnsi character set (the latin alphabet).
		
		Embedding a custom font and passing it to
		[[PDFForm.updateFieldAppearances]] or [[PDFOptionList.updateAppearances]]
		allows you to generate appearance streams with characters outside the
		latin alphabet (assuming the custom font supports them).
	**/
	function setOptions(options:Array<String>):Void;
	/**
		Add to the list of options that are available for this option list. Users
		will be able to select these values in a PDF reader. In addition to the
		values passed as `options`, any preexisting options for this option list
		will still be available for users to select.
		For example:
		```js
		const optionList = form.getOptionList('rockets.optionList')
		optionList.addOptions(['Saturn IV', 'Falcon Heavy'])
		```
		This method will mark this option list as dirty. See
		[[PDFOptionList.setOptions]] for more details about what this means.
	**/
	function addOptions(options:ts.AnyOf2<String, Array<String>>):Void;
	/**
		Select one or more values for this option list. This operation is analogous
		to a human user opening the option list in a PDF reader and clicking on one
		or more values to select them. This method will update the underlying state
		of the option list to indicate which values have been selected. PDF
		libraries and readers will be able to extract these values from the saved
		document and determine which values were selected.
		For example:
		```js
		const optionList = form.getOptionList('best.superheroes.optionList')
		optionList.select(['One Punch Man', 'Iron Man'])
		```
		This method will mark this option list as dirty. See
		[[PDFOptionList.setOptions]] for more details about what this means.
	**/
	function select(options:ts.AnyOf2<String, Array<String>>, ?merge:Bool):Void;
	/**
		Clear all selected values for this option list. This operation is
		equivalent to selecting an empty list. This method will update the
		underlying state of the option list to indicate that no values have been
		selected.
		For example:
		```js
		const optionList = form.getOptionList('some.optionList.field')
		optionList.clear()
		```
		This method will mark this option list as dirty. See
		[[PDFOptionList.setOptions]] for more details about what this means.
	**/
	function clear():Void;
	/**
		Set the font size for this field. Larger font sizes will result in larger
		text being displayed when PDF readers render this option list. Font sizes
		may be integer or floating point numbers. Supplying a negative font size
		will cause this method to throw an error.
		
		For example:
		```js
		const optionList = form.getOptionList('some.optionList.field')
		optionList.setFontSize(4)
		optionList.setFontSize(15.7)
		```
		
		> This method depends upon the existence of a default appearance
		> (`/DA`) string. If this field does not have a default appearance string,
		> or that string does not contain a font size (via the `Tf` operator),
		> then this method will throw an error.
	**/
	function setFontSize(fontSize:Float):Void;
	/**
		Returns `true` if the options of this option list are always displayed
		in alphabetical order, irrespective of the order in which the options
		were added to the option list. See [[PDFOptionList.enableSorting]] and
		[[PDFOptionList.disableSorting]]. For example:
		```js
		const optionList = form.getOptionList('some.optionList.field')
		if (optionList.isSorted()) console.log('Sorting is enabled')
		```
	**/
	function isSorted():Bool;
	/**
		Always display the options of this option list in alphabetical order,
		irrespective of the order in which the options were added to this option
		list.
		For example:
		```js
		const optionList = form.getOptionList('some.optionList.field')
		optionList.enableSorting()
		```
	**/
	function enableSorting():Void;
	/**
		Do not always display the options of this option list in alphabetical
		order. Instead, display the options in whichever order they were added
		to this option list. For example:
		```js
		const optionList = form.getOptionList('some.optionList.field')
		optionList.disableSorting()
		```
	**/
	function disableSorting():Void;
	/**
		Returns `true` if multiple options can be selected from this option list.
		See [[PDFOptionList.enableMultiselect]] and
		[[PDFOptionList.disableMultiselect]]. For example:
		```js
		const optionList = form.getOptionList('some.optionList.field')
		if (optionList.isMultiselect()) console.log('Multiselect is enabled')
		```
	**/
	function isMultiselect():Bool;
	/**
		Allow users to select more than one option from this option list.
		For example:
		```js
		const optionList = form.getOptionList('some.optionList.field')
		optionList.enableMultiselect()
		```
	**/
	function enableMultiselect():Void;
	/**
		Do not allow users to select more than one option from this option list.
		For example:
		```js
		const optionList = form.getOptionList('some.optionList.field')
		optionList.disableMultiselect()
		```
	**/
	function disableMultiselect():Void;
	/**
		Returns `true` if the option selected by a user is stored, or "committed",
		when the user clicks the option. The alternative is that the user's
		selection is stored when the user leaves this option list field (by
		clicking outside of it - on another field, for example). See
		[[PDFOptionList.enableSelectOnClick]] and
		[[PDFOptionList.disableSelectOnClick]]. For example:
		```js
		const optionList = form.getOptionList('some.optionList.field')
		if (optionList.isSelectOnClick()) console.log('Select on click is enabled')
		```
	**/
	function isSelectOnClick():Bool;
	/**
		Store the option selected by a user immediately after the user clicks the
		option. Do not wait for the user to leave this option list field (by
		clicking outside of it - on another field, for example). For example:
		```js
		const optionList = form.getOptionList('some.optionList.field')
		optionList.enableSelectOnClick()
		```
	**/
	function enableSelectOnClick():Void;
	/**
		Wait to store the option selected by a user until they leave this option
		list field (by clicking outside of it - on another field, for example).
		For example:
		```js
		const optionList = form.getOptionList('some.optionList.field')
		optionList.disableSelectOnClick()
		```
	**/
	function disableSelectOnClick():Void;
	/**
		Show this option list on the specified page. For example:
		```js
		const ubuntuFont = await pdfDoc.embedFont(ubuntuFontBytes)
		const page = pdfDoc.addPage()
		
		const form = pdfDoc.getForm()
		const optionList = form.createOptionList('best.gundams')
		optionList.setOptions(['Exia', 'Dynames', 'Kyrios', 'Virtue'])
		optionList.select(['Exia', 'Virtue'])
		
		optionList.addToPage(page, {
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
		This will create a new widget for this option list field.
	**/
	function addToPage(page:PDFPage, ?options:pdf_lib.cjs.api.form.pdffield.FieldAppearanceOptions):Void;
	/**
		Update the appearance streams for each of this option list's widgets using
		the default appearance provider for option lists. For example:
		```js
		const helvetica = await pdfDoc.embedFont(StandardFonts.Helvetica)
		const optionList = form.getOptionList('some.optionList.field')
		optionList.defaultUpdateAppearances(helvetica)
		```
	**/
	function defaultUpdateAppearances(font:PDFFont):Void;
	/**
		Update the appearance streams for each of this option list's widgets using
		the given appearance provider. If no `provider` is passed, the default
		appearance provider for option lists will be used. For example:
		```js
		const helvetica = await pdfDoc.embedFont(StandardFonts.Helvetica)
		const optionList = form.getOptionList('some.optionList.field')
		optionList.updateAppearances(helvetica, (field, widget, font) => {
		   ...
		   return drawOptionList(...)
		})
		```
	**/
	function updateAppearances(font:PDFFont, ?provider:OptionListAppearanceProvider):Void;
	private var updateWidgetAppearance : Dynamic;
	static var prototype : PDFOptionList;
	/**
		> **NOTE:** You probably don't want to call this method directly. Instead,
		> consider using the [[PDFForm.getOptionList]] method, which will create
		> an instance of [[PDFOptionList]] for you.
		
		Create an instance of [[PDFOptionList]] from an existing acroListBox and
		ref
	**/
	static dynamic function of(acroListBox:PDFAcroListBox, ref:PDFRef, doc:PDFDocument):PDFOptionList;
}