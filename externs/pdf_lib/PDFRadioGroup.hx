package pdf_lib;

/**
	Represents a radio group field of a [[PDFForm]].
	
	[[PDFRadioGroup]] fields are collections of radio buttons. The purpose of a
	radio group is to enable users to select one option from a set of mutually
	exclusive choices. Each choice in a radio group is represented by a radio
	button. Radio buttons each have two states: `on` and `off`. At most one
	radio button in a group may be in the `on` state at any time. Users can
	click on a radio button to select it (and thereby automatically deselect any
	other radio button that might have already been selected). Some radio
	groups allow users to toggle a selected radio button `off` by clicking on
	it (see [[PDFRadioGroup.isOffToggleable]]).
	
	Note that some radio groups allow multiple radio buttons to be in the `on`
	state at the same type **if** they represent the same underlying value (see
	[[PDFRadioGroup.isMutuallyExclusive]]).
**/
@:jsRequire("pdf-lib", "PDFRadioGroup") extern class PDFRadioGroup extends PDFField {
	private function new();
	/**
		Get the list of available options for this radio group. Each option is
		represented by a radio button. These radio buttons are displayed at
		various locations in the document, potentially on different pages (though
		typically they are stacked horizontally or vertically on the same page).
		For example:
		```js
		const radioGroup = form.getRadioGroup('some.radioGroup.field')
		const options = radioGroup.getOptions()
		console.log('Radio Group options:', options)
		```
	**/
	function getOptions():Array<String>;
	/**
		Get the selected option for this radio group. The selected option is
		represented by the radio button in this group that is turned on. At most
		one radio button in a group can be selected. If no buttons in this group
		are selected, `undefined` is returned.
		For example:
		```js
		const radioGroup = form.getRadioGroup('some.radioGroup.field')
		const selected = radioGroup.getSelected()
		console.log('Selected radio button:', selected)
		```
	**/
	function getSelected():Null<String>;
	/**
		Select an option for this radio group. This operation is analogous to a
		human user clicking one of the radio buttons in this group via a PDF
		reader to toggle it on. This method will update the underlying state of
		the radio group to indicate which option has been selected. PDF libraries
		and readers will be able to extract this value from the saved document and
		determine which option was selected.
		
		For example:
		```js
		const radioGroup = form.getRadioGroup('best.superhero.radioGroup')
		radioGroup.select('One Punch Man')
		```
		
		This method will mark this radio group as dirty, causing its appearance
		streams to be updated when either [[PDFDocument.save]] or
		[[PDFForm.updateFieldAppearances]] is called. The updated appearance
		streams will display a dot inside the widget of this check box field
		that represents the selected option.
	**/
	function select(option:String):Void;
	/**
		Clear any selected option for this dropdown. This will result in all
		radio buttons in this group being toggled off. This method will update
		the underlying state of the dropdown to indicate that no radio buttons
		have been selected.
		For example:
		```js
		const radioGroup = form.getRadioGroup('some.radioGroup.field')
		radioGroup.clear()
		```
		This method will mark this radio group as dirty. See
		[[PDFRadioGroup.select]] for more details about what this means.
	**/
	function clear():Void;
	/**
		Returns `true` if users can click on radio buttons in this group to toggle
		them off. The alternative is that once a user clicks on a radio button
		to select it, the only way to deselect it is by selecting on another radio
		button in the group. See [[PDFRadioGroup.enableOffToggling]] and
		[[PDFRadioGroup.disableOffToggling]]. For example:
		```js
		const radioGroup = form.getRadioGroup('some.radioGroup.field')
		if (radioGroup.isOffToggleable()) console.log('Off toggling is enabled')
		```
	**/
	function isOffToggleable():Bool;
	/**
		Allow users to click on selected radio buttons in this group to toggle
		them off. For example:
		```js
		const radioGroup = form.getRadioGroup('some.radioGroup.field')
		radioGroup.enableOffToggling()
		```
		> **NOTE:** This feature is documented in the PDF specification
		> (Table 226). However, most PDF readers do not respect this option and
		> prevent users from toggling radio buttons off even when it is enabled.
		> At the time of this writing (9/6/2020) Mac's Preview software did
		> respect the option. Adobe Acrobat, Foxit Reader, and Google Chrome did
		> not.
	**/
	function enableOffToggling():Void;
	/**
		Prevent users from clicking on selected radio buttons in this group to
		toggle them off. Clicking on a selected radio button will have no effect.
		The only way to deselect a selected radio button is to click on a
		different radio button in the group. For example:
		```js
		const radioGroup = form.getRadioGroup('some.radioGroup.field')
		radioGroup.disableOffToggling()
		```
	**/
	function disableOffToggling():Void;
	/**
		Returns `true` if the radio buttons in this group are mutually exclusive.
		This means that when the user selects a radio button, only that specific
		button will be turned on. Even if other radio buttons in the group
		represent the same value, they will not be enabled. The alternative to
		this is that clicking a radio button will select that button along with
		any other radio buttons in the group that share the same value. See
		[[PDFRadioGroup.enableMutualExclusion]] and
		[[PDFRadioGroup.disableMutualExclusion]].
		For example:
		```js
		const radioGroup = form.getRadioGroup('some.radioGroup.field')
		if (radioGroup.isMutuallyExclusive()) console.log('Mutual exclusion is enabled')
		```
	**/
	function isMutuallyExclusive():Bool;
	/**
		When the user clicks a radio button in this group it will be selected. In
		addition, any other radio buttons in this group that share the same
		underlying value will also be selected. For example:
		```js
		const radioGroup = form.getRadioGroup('some.radioGroup.field')
		radioGroup.enableMutualExclusion()
		```
		Note that this option must be enabled prior to adding options to the
		radio group. It does not currently apply retroactively to existing
		radio buttons in the group.
	**/
	function enableMutualExclusion():Void;
	/**
		When the user clicks a radio button in this group only it will be selected.
		No other radio buttons in the group will be selected, even if they share
		the same underlying value. For example:
		```js
		const radioGroup = form.getRadioGroup('some.radioGroup.field')
		radioGroup.disableMutualExclusion()
		```
		Note that this option must be disabled prior to adding options to the
		radio group. It does not currently apply retroactively to existing
		radio buttons in the group.
	**/
	function disableMutualExclusion():Void;
	/**
		Add a new radio button to this group on the specified page. For example:
		```js
		const page = pdfDoc.addPage()
		
		const form = pdfDoc.getForm()
		const radioGroup = form.createRadioGroup('best.gundam')
		
		const options = {
		   x: 50,
		   width: 25,
		   height: 25,
		   textColor: rgb(1, 0, 0),
		   backgroundColor: rgb(0, 1, 0),
		   borderColor: rgb(0, 0, 1),
		   borderWidth: 2,
		   rotate: degrees(90),
		}
		
		radioGroup.addOptionToPage('Exia', page, { ...options, y: 50 })
		radioGroup.addOptionToPage('Dynames', page, { ...options, y: 110 })
		```
		This will create a new radio button widget for this radio group field.
	**/
	function addOptionToPage(option:String, page:PDFPage, ?options:pdf_lib.cjs.api.form.pdffield.FieldAppearanceOptions):Void;
	/**
		Update the appearance streams for each of this group's radio button widgets
		using the default appearance provider for radio groups. For example:
		```js
		const radioGroup = form.getRadioGroup('some.radioGroup.field')
		radioGroup.defaultUpdateAppearances()
		```
	**/
	function defaultUpdateAppearances():Void;
	/**
		Update the appearance streams for each of this group's radio button widgets
		using the given appearance provider. If no `provider` is passed, the
		default appearance provider for radio groups will be used. For example:
		```js
		const radioGroup = form.getRadioGroup('some.radioGroup.field')
		radioGroup.updateAppearances((field, widget) => {
		   ...
		   return {
		     normal: { on: drawRadioButton(...), off: drawRadioButton(...) },
		     down: { on: drawRadioButton(...), off: drawRadioButton(...) },
		   }
		})
		```
	**/
	function updateAppearances(?provider:RadioGroupAppearanceProvider):Void;
	private var updateWidgetAppearance : Dynamic;
	static var prototype : PDFRadioGroup;
	/**
		> **NOTE:** You probably don't want to call this method directly. Instead,
		> consider using the [[PDFForm.getOptionList]] method, which will create an
		> instance of [[PDFOptionList]] for you.
		
		Create an instance of [[PDFOptionList]] from an existing acroRadioButton
		and ref
	**/
	static dynamic function of(acroRadioButton:PDFAcroRadioButton, ref:PDFRef, doc:PDFDocument):PDFRadioGroup;
}