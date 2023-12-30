@:jsRequire("pdf-lib") @valueModuleOnly extern class PdfLib {
	/**
		******************* Appearance Provider Functions *************************
	**/
	static function normalizeAppearance<T>(appearance:ts.AnyOf2<pdf_lib.AppearanceMapping<T>, T>):pdf_lib.AppearanceMapping<T>;
	static function defaultCheckBoxAppearanceProvider(checkBox:pdf_lib.PDFCheckBox, widget:pdf_lib.PDFWidgetAnnotation):pdf_lib.AppearanceOrMapping<{
		var on : Array<pdf_lib.PDFOperator>;
		var off : Array<pdf_lib.PDFOperator>;
	}>;
	static function defaultRadioGroupAppearanceProvider(radioGroup:pdf_lib.PDFRadioGroup, widget:pdf_lib.PDFWidgetAnnotation):pdf_lib.AppearanceOrMapping<{
		var on : Array<pdf_lib.PDFOperator>;
		var off : Array<pdf_lib.PDFOperator>;
	}>;
	static function defaultButtonAppearanceProvider(button:pdf_lib.PDFButton, widget:pdf_lib.PDFWidgetAnnotation, font:pdf_lib.PDFFont):pdf_lib.AppearanceOrMapping<Array<pdf_lib.PDFOperator>>;
	static function defaultTextFieldAppearanceProvider(textField:pdf_lib.PDFTextField, widget:pdf_lib.PDFWidgetAnnotation, font:pdf_lib.PDFFont):pdf_lib.AppearanceOrMapping<Array<pdf_lib.PDFOperator>>;
	static function defaultDropdownAppearanceProvider(dropdown:pdf_lib.PDFDropdown, widget:pdf_lib.PDFWidgetAnnotation, font:pdf_lib.PDFFont):pdf_lib.AppearanceOrMapping<Array<pdf_lib.PDFOperator>>;
	static function defaultOptionListAppearanceProvider(optionList:pdf_lib.PDFOptionList, widget:pdf_lib.PDFWidgetAnnotation, font:pdf_lib.PDFFont):pdf_lib.AppearanceOrMapping<Array<pdf_lib.PDFOperator>>;
	static function layoutMultilineText(text:String, __1:pdf_lib.LayoutTextOptions):pdf_lib.MultilineTextLayout;
	static function layoutCombedText(text:String, __1:pdf_lib.LayoutCombedTextOptions):pdf_lib.CombedTextLayout;
	static function layoutSinglelineText(text:String, __1:pdf_lib.LayoutSinglelineTextOptions):pdf_lib.SinglelineTextLayout;
	static function grayscale(gray:Float):pdf_lib.Grayscale;
	static function rgb(red:Float, green:Float, blue:Float):pdf_lib.RGB;
	static function cmyk(cyan:Float, magenta:Float, yellow:Float, key:Float):pdf_lib.CMYK;
	static function setFillingColor(color:pdf_lib.Color):pdf_lib.PDFOperator;
	static function setStrokingColor(color:pdf_lib.Color):pdf_lib.PDFOperator;
	static function componentsToColor(?comps:Array<Float>, ?scale:Float):Null<pdf_lib.Color>;
	static function colorToComponents(color:pdf_lib.Color):Array<Float>;
	static function asPDFName(name:ts.AnyOf2<String, pdf_lib.PDFName>):pdf_lib.PDFName;
	static function asPDFNumber(num:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFNumber;
	static function asNumber(num:ts.AnyOf2<Float, pdf_lib.PDFNumber>):Float;
	static function drawText(line:pdf_lib.PDFHexString, options:pdf_lib.DrawTextOptions):Array<pdf_lib.PDFOperator>;
	static function drawLinesOfText(lines:Array<pdf_lib.PDFHexString>, options:pdf_lib.DrawLinesOfTextOptions):Array<pdf_lib.PDFOperator>;
	static function drawImage(name:ts.AnyOf2<String, pdf_lib.PDFName>, options:{ var x : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var y : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var width : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var height : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var rotate : pdf_lib.Rotation; var xSkew : pdf_lib.Rotation; var ySkew : pdf_lib.Rotation; @:optional var graphicsState : ts.AnyOf2<String, pdf_lib.PDFName>; }):Array<pdf_lib.PDFOperator>;
	static function drawPage(name:ts.AnyOf2<String, pdf_lib.PDFName>, options:{ var x : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var y : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var xScale : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var yScale : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var rotate : pdf_lib.Rotation; var xSkew : pdf_lib.Rotation; var ySkew : pdf_lib.Rotation; @:optional var graphicsState : ts.AnyOf2<String, pdf_lib.PDFName>; }):Array<pdf_lib.PDFOperator>;
	static function drawLine(options:{ var start : { var x : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var y : ts.AnyOf2<Float, pdf_lib.PDFNumber>; }; var end : { var x : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var y : ts.AnyOf2<Float, pdf_lib.PDFNumber>; }; var thickness : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var color : Null<pdf_lib.Color>; @:optional var dashArray : Array<ts.AnyOf2<Float, pdf_lib.PDFNumber>>; @:optional var dashPhase : ts.AnyOf2<Float, pdf_lib.PDFNumber>; @:optional var lineCap : pdf_lib.LineCapStyle; @:optional var graphicsState : ts.AnyOf2<String, pdf_lib.PDFName>; }):Array<pdf_lib.PDFOperator>;
	static function drawRectangle(options:{ var x : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var y : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var width : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var height : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var borderWidth : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var color : Null<pdf_lib.Color>; var borderColor : Null<pdf_lib.Color>; var rotate : pdf_lib.Rotation; var xSkew : pdf_lib.Rotation; var ySkew : pdf_lib.Rotation; @:optional var borderLineCap : pdf_lib.LineCapStyle; @:optional var borderDashArray : Array<ts.AnyOf2<Float, pdf_lib.PDFNumber>>; @:optional var borderDashPhase : ts.AnyOf2<Float, pdf_lib.PDFNumber>; @:optional var graphicsState : ts.AnyOf2<String, pdf_lib.PDFName>; }):Array<pdf_lib.PDFOperator>;
	static function drawEllipsePath(config:{ var x : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var y : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var xScale : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var yScale : ts.AnyOf2<Float, pdf_lib.PDFNumber>; }):Array<pdf_lib.PDFOperator>;
	static function drawEllipse(options:{ var x : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var y : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var xScale : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var yScale : ts.AnyOf2<Float, pdf_lib.PDFNumber>; @:optional var rotate : pdf_lib.Rotation; var color : Null<pdf_lib.Color>; var borderColor : Null<pdf_lib.Color>; var borderWidth : ts.AnyOf2<Float, pdf_lib.PDFNumber>; @:optional var borderDashArray : Array<ts.AnyOf2<Float, pdf_lib.PDFNumber>>; @:optional var borderDashPhase : ts.AnyOf2<Float, pdf_lib.PDFNumber>; @:optional var graphicsState : ts.AnyOf2<String, pdf_lib.PDFName>; @:optional var borderLineCap : pdf_lib.LineCapStyle; }):Array<pdf_lib.PDFOperator>;
	static function drawSvgPath(path:String, options:{ var x : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var y : ts.AnyOf2<Float, pdf_lib.PDFNumber>; @:optional var rotate : pdf_lib.Rotation; var scale : Null<ts.AnyOf2<Float, pdf_lib.PDFNumber>>; var color : Null<pdf_lib.Color>; var borderColor : Null<pdf_lib.Color>; var borderWidth : ts.AnyOf2<Float, pdf_lib.PDFNumber>; @:optional var borderDashArray : Array<ts.AnyOf2<Float, pdf_lib.PDFNumber>>; @:optional var borderDashPhase : ts.AnyOf2<Float, pdf_lib.PDFNumber>; @:optional var borderLineCap : pdf_lib.LineCapStyle; @:optional var graphicsState : ts.AnyOf2<String, pdf_lib.PDFName>; }):Array<pdf_lib.PDFOperator>;
	static function drawCheckMark(options:{ var x : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var y : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var size : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var thickness : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var color : Null<pdf_lib.Color>; }):Array<pdf_lib.PDFOperator>;
	static function rotateInPlace(options:{ var width : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var height : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var rotation : Int; }):Array<pdf_lib.PDFOperator>;
	static function drawCheckBox(options:{ var x : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var y : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var width : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var height : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var thickness : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var borderWidth : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var markColor : Null<pdf_lib.Color>; var color : Null<pdf_lib.Color>; var borderColor : Null<pdf_lib.Color>; var filled : Bool; }):Array<pdf_lib.PDFOperator>;
	static function drawRadioButton(options:{ var x : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var y : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var width : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var height : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var borderWidth : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var dotColor : Null<pdf_lib.Color>; var color : Null<pdf_lib.Color>; var borderColor : Null<pdf_lib.Color>; var filled : Bool; }):Array<pdf_lib.PDFOperator>;
	static function drawButton(options:{ var x : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var y : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var width : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var height : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var borderWidth : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var color : Null<pdf_lib.Color>; var borderColor : Null<pdf_lib.Color>; var textLines : Array<{ var encoded : pdf_lib.PDFHexString; var x : Float; var y : Float; }>; var textColor : pdf_lib.Color; var font : ts.AnyOf2<String, pdf_lib.PDFName>; var fontSize : ts.AnyOf2<Float, pdf_lib.PDFNumber>; }):Array<pdf_lib.PDFOperator>;
	static function drawTextLines(lines:Array<{ var encoded : pdf_lib.PDFHexString; var x : Float; var y : Float; }>, options:pdf_lib.DrawTextLinesOptions):Array<pdf_lib.PDFOperator>;
	static function drawTextField(options:{ var x : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var y : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var width : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var height : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var borderWidth : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var color : Null<pdf_lib.Color>; var borderColor : Null<pdf_lib.Color>; var textLines : Array<{ var encoded : pdf_lib.PDFHexString; var x : Float; var y : Float; }>; var textColor : pdf_lib.Color; var font : ts.AnyOf2<String, pdf_lib.PDFName>; var fontSize : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var padding : ts.AnyOf2<Float, pdf_lib.PDFNumber>; }):Array<pdf_lib.PDFOperator>;
	static function drawOptionList(options:{ var x : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var y : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var width : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var height : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var borderWidth : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var color : Null<pdf_lib.Color>; var borderColor : Null<pdf_lib.Color>; var textLines : Array<{ var encoded : pdf_lib.PDFHexString; var x : Float; var y : Float; var height : Float; }>; var textColor : pdf_lib.Color; var font : ts.AnyOf2<String, pdf_lib.PDFName>; var fontSize : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var lineHeight : ts.AnyOf2<Float, pdf_lib.PDFNumber>; var selectedLines : Array<Float>; var selectedColor : pdf_lib.Color; var padding : ts.AnyOf2<Float, pdf_lib.PDFNumber>; }):Array<pdf_lib.PDFOperator>;
	static function clip():pdf_lib.PDFOperator;
	static function clipEvenOdd():pdf_lib.PDFOperator;
	static function concatTransformationMatrix(a:ts.AnyOf2<Float, pdf_lib.PDFNumber>, b:ts.AnyOf2<Float, pdf_lib.PDFNumber>, c:ts.AnyOf2<Float, pdf_lib.PDFNumber>, d:ts.AnyOf2<Float, pdf_lib.PDFNumber>, e:ts.AnyOf2<Float, pdf_lib.PDFNumber>, f:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFOperator;
	static function translate(xPos:ts.AnyOf2<Float, pdf_lib.PDFNumber>, yPos:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFOperator;
	static function scale(xPos:ts.AnyOf2<Float, pdf_lib.PDFNumber>, yPos:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFOperator;
	static function rotateRadians(angle:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFOperator;
	static function rotateDegrees(angle:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFOperator;
	static function skewRadians(xSkewAngle:ts.AnyOf2<Float, pdf_lib.PDFNumber>, ySkewAngle:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFOperator;
	static function skewDegrees(xSkewAngle:ts.AnyOf2<Float, pdf_lib.PDFNumber>, ySkewAngle:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFOperator;
	static function setDashPattern(dashArray:Array<ts.AnyOf2<Float, pdf_lib.PDFNumber>>, dashPhase:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFOperator;
	static function restoreDashPattern():pdf_lib.PDFOperator;
	static function setLineCap(style:pdf_lib.LineCapStyle):pdf_lib.PDFOperator;
	static function setLineJoin(style:pdf_lib.LineJoinStyle):pdf_lib.PDFOperator;
	static function setGraphicsState(state:ts.AnyOf2<String, pdf_lib.PDFName>):pdf_lib.PDFOperator;
	static function pushGraphicsState():pdf_lib.PDFOperator;
	static function popGraphicsState():pdf_lib.PDFOperator;
	static function setLineWidth(width:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFOperator;
	static function appendBezierCurve(x1:ts.AnyOf2<Float, pdf_lib.PDFNumber>, y1:ts.AnyOf2<Float, pdf_lib.PDFNumber>, x2:ts.AnyOf2<Float, pdf_lib.PDFNumber>, y2:ts.AnyOf2<Float, pdf_lib.PDFNumber>, x3:ts.AnyOf2<Float, pdf_lib.PDFNumber>, y3:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFOperator;
	static function appendQuadraticCurve(x1:ts.AnyOf2<Float, pdf_lib.PDFNumber>, y1:ts.AnyOf2<Float, pdf_lib.PDFNumber>, x2:ts.AnyOf2<Float, pdf_lib.PDFNumber>, y2:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFOperator;
	static function closePath():pdf_lib.PDFOperator;
	static function moveTo(xPos:ts.AnyOf2<Float, pdf_lib.PDFNumber>, yPos:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFOperator;
	static function lineTo(xPos:ts.AnyOf2<Float, pdf_lib.PDFNumber>, yPos:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFOperator;
	static function rectangle(xPos:ts.AnyOf2<Float, pdf_lib.PDFNumber>, yPos:ts.AnyOf2<Float, pdf_lib.PDFNumber>, width:ts.AnyOf2<Float, pdf_lib.PDFNumber>, height:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFOperator;
	static function square(xPos:Float, yPos:Float, size:Float):pdf_lib.PDFOperator;
	static function stroke():pdf_lib.PDFOperator;
	static function fill():pdf_lib.PDFOperator;
	static function fillAndStroke():pdf_lib.PDFOperator;
	static function endPath():pdf_lib.PDFOperator;
	static function nextLine():pdf_lib.PDFOperator;
	static function moveText(x:ts.AnyOf2<Float, pdf_lib.PDFNumber>, y:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFOperator;
	static function showText(text:pdf_lib.PDFHexString):pdf_lib.PDFOperator;
	static function beginText():pdf_lib.PDFOperator;
	static function endText():pdf_lib.PDFOperator;
	static function setFontAndSize(name:ts.AnyOf2<String, pdf_lib.PDFName>, size:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFOperator;
	static function setCharacterSpacing(spacing:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFOperator;
	static function setWordSpacing(spacing:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFOperator;
	static function setCharacterSqueeze(squeeze:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFOperator;
	static function setLineHeight(lineHeight:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFOperator;
	static function setTextRise(rise:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFOperator;
	static function setTextRenderingMode(mode:pdf_lib.TextRenderingMode):pdf_lib.PDFOperator;
	static function setTextMatrix(a:ts.AnyOf2<Float, pdf_lib.PDFNumber>, b:ts.AnyOf2<Float, pdf_lib.PDFNumber>, c:ts.AnyOf2<Float, pdf_lib.PDFNumber>, d:ts.AnyOf2<Float, pdf_lib.PDFNumber>, e:ts.AnyOf2<Float, pdf_lib.PDFNumber>, f:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFOperator;
	static function rotateAndSkewTextRadiansAndTranslate(rotationAngle:ts.AnyOf2<Float, pdf_lib.PDFNumber>, xSkewAngle:ts.AnyOf2<Float, pdf_lib.PDFNumber>, ySkewAngle:ts.AnyOf2<Float, pdf_lib.PDFNumber>, x:ts.AnyOf2<Float, pdf_lib.PDFNumber>, y:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFOperator;
	static function rotateAndSkewTextDegreesAndTranslate(rotationAngle:ts.AnyOf2<Float, pdf_lib.PDFNumber>, xSkewAngle:ts.AnyOf2<Float, pdf_lib.PDFNumber>, ySkewAngle:ts.AnyOf2<Float, pdf_lib.PDFNumber>, x:ts.AnyOf2<Float, pdf_lib.PDFNumber>, y:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFOperator;
	static function drawObject(name:ts.AnyOf2<String, pdf_lib.PDFName>):pdf_lib.PDFOperator;
	static function setFillingGrayscaleColor(gray:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFOperator;
	static function setStrokingGrayscaleColor(gray:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFOperator;
	static function setFillingRgbColor(red:ts.AnyOf2<Float, pdf_lib.PDFNumber>, green:ts.AnyOf2<Float, pdf_lib.PDFNumber>, blue:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFOperator;
	static function setStrokingRgbColor(red:ts.AnyOf2<Float, pdf_lib.PDFNumber>, green:ts.AnyOf2<Float, pdf_lib.PDFNumber>, blue:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFOperator;
	static function setFillingCmykColor(cyan:ts.AnyOf2<Float, pdf_lib.PDFNumber>, magenta:ts.AnyOf2<Float, pdf_lib.PDFNumber>, yellow:ts.AnyOf2<Float, pdf_lib.PDFNumber>, key:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFOperator;
	static function setStrokingCmykColor(cyan:ts.AnyOf2<Float, pdf_lib.PDFNumber>, magenta:ts.AnyOf2<Float, pdf_lib.PDFNumber>, yellow:ts.AnyOf2<Float, pdf_lib.PDFNumber>, key:ts.AnyOf2<Float, pdf_lib.PDFNumber>):pdf_lib.PDFOperator;
	static function beginMarkedContent(tag:ts.AnyOf2<String, pdf_lib.PDFName>):pdf_lib.PDFOperator;
	static function endMarkedContent():pdf_lib.PDFOperator;
	static function radians(radianAngle:Float):pdf_lib.Radians;
	static function degrees(degreeAngle:Float):pdf_lib.Degrees;
	static function degreesToRadians(degree:Float):Float;
	static function radiansToDegrees(radian:Float):Float;
	static function toRadians(rotation:pdf_lib.Rotation):Float;
	static function toDegrees(rotation:pdf_lib.Rotation):Float;
	static function reduceRotation(?degreeAngle:Float):Int;
	static function adjustDimsForRotation(dims:{ var width : Float; var height : Float; }, ?degreeAngle:Float):{
		var width : Float;
		var height : Float;
	};
	static function rotateRectangle(rectangle:{ var x : Float; var y : Float; var width : Float; var height : Float; }, ?borderWidth:Float, ?degreeAngle:Float):{
		var x : Float;
		var y : Float;
		var width : Float;
		var height : Float;
	};
	static final PageSizes : {
		@:native("4A0")
		var FourA0 : ts.Tuple2<Float, Float>;
		@:native("2A0")
		var TwoA0 : ts.Tuple2<Float, Float>;
		var A0 : ts.Tuple2<Float, Float>;
		var A1 : ts.Tuple2<Float, Float>;
		var A2 : ts.Tuple2<Float, Float>;
		var A3 : ts.Tuple2<Float, Float>;
		var A4 : ts.Tuple2<Float, Float>;
		var A5 : ts.Tuple2<Float, Float>;
		var A6 : ts.Tuple2<Float, Float>;
		var A7 : ts.Tuple2<Float, Float>;
		var A8 : ts.Tuple2<Float, Float>;
		var A9 : ts.Tuple2<Float, Float>;
		var A10 : ts.Tuple2<Float, Float>;
		var B0 : ts.Tuple2<Float, Float>;
		var B1 : ts.Tuple2<Float, Float>;
		var B2 : ts.Tuple2<Float, Float>;
		var B3 : ts.Tuple2<Float, Float>;
		var B4 : ts.Tuple2<Float, Float>;
		var B5 : ts.Tuple2<Float, Float>;
		var B6 : ts.Tuple2<Float, Float>;
		var B7 : ts.Tuple2<Float, Float>;
		var B8 : ts.Tuple2<Float, Float>;
		var B9 : ts.Tuple2<Float, Float>;
		var B10 : ts.Tuple2<Float, Float>;
		var C0 : ts.Tuple2<Float, Float>;
		var C1 : ts.Tuple2<Float, Float>;
		var C2 : ts.Tuple2<Float, Float>;
		var C3 : ts.Tuple2<Float, Float>;
		var C4 : ts.Tuple2<Float, Float>;
		var C5 : ts.Tuple2<Float, Float>;
		var C6 : ts.Tuple2<Float, Float>;
		var C7 : ts.Tuple2<Float, Float>;
		var C8 : ts.Tuple2<Float, Float>;
		var C9 : ts.Tuple2<Float, Float>;
		var C10 : ts.Tuple2<Float, Float>;
		var RA0 : ts.Tuple2<Float, Float>;
		var RA1 : ts.Tuple2<Float, Float>;
		var RA2 : ts.Tuple2<Float, Float>;
		var RA3 : ts.Tuple2<Float, Float>;
		var RA4 : ts.Tuple2<Float, Float>;
		var SRA0 : ts.Tuple2<Float, Float>;
		var SRA1 : ts.Tuple2<Float, Float>;
		var SRA2 : ts.Tuple2<Float, Float>;
		var SRA3 : ts.Tuple2<Float, Float>;
		var SRA4 : ts.Tuple2<Float, Float>;
		var Executive : ts.Tuple2<Float, Float>;
		var Folio : ts.Tuple2<Float, Float>;
		var Legal : ts.Tuple2<Float, Float>;
		var Letter : ts.Tuple2<Float, Float>;
		var Tabloid : ts.Tuple2<Float, Float>;
	};
	static final PDFNull : pdf_lib.PDFNull;
	static function decodePDFRawStream(__0:pdf_lib.PDFRawStream):pdf_lib.cjs.core.streams.stream.StreamType;
	static function createPDFAcroFields(?kidDicts:pdf_lib.PDFArray):Array<ts.Tuple2<pdf_lib.PDFAcroField, pdf_lib.PDFRef>>;
	static function createPDFAcroField(dict:pdf_lib.PDFDict, ref:pdf_lib.PDFRef):pdf_lib.PDFAcroField;
	static function last<T>(array:Array<T>):T;
	static function typedArrayFor(value:ts.AnyOf2<String, js.lib.Uint8Array>):js.lib.Uint8Array;
	static function mergeIntoTypedArray(arrays:haxe.extern.Rest<ts.AnyOf2<String, js.lib.Uint8Array>>):js.lib.Uint8Array;
	static function mergeUint8Arrays(arrays:Array<js.lib.Uint8Array>):js.lib.Uint8Array;
	static function arrayAsString(array:ts.AnyOf2<Array<Float>, js.lib.Uint8Array>):String;
	static function byAscendingId<T>(a:T, b:T):Float;
	static function sortedUniq<T>(array:Array<T>, indexer:(elem:T) -> Dynamic):Array<T>;
	static function reverseArray(array:js.lib.Uint8Array):js.lib.Uint8Array;
	static function sum(array:ts.AnyOf2<Array<Float>, js.lib.Uint8Array>):Float;
	static function range(start:Float, end:Float):Array<Float>;
	static function pluckIndices<T>(arr:Array<T>, indices:Array<Float>):Array<T>;
	static function canBeConvertedToUint8Array(input:Dynamic):Bool;
	static function toUint8Array(input:ts.AnyOf3<String, js.lib.Uint8Array, js.lib.ArrayBuffer>):js.lib.Uint8Array;
	/**
		Returns a Promise that resolves after at least one tick of the
		Macro Task Queue occurs.
	**/
	static function waitForTick():js.lib.Promise<ts.Undefined>;
	static function toCharCode(character:String):Float;
	static function toCodePoint(character:String):Null<Float>;
	static function toHexStringOfMinLength(num:Float, minLength:Float):String;
	static function toHexString(num:Float):String;
	static function charFromCode(code:Float):String;
	static function charFromHexCode(hex:String):String;
	static function padStart(value:String, length:Float, padChar:String):String;
	static function copyStringIntoBuffer(str:String, buffer:js.lib.Uint8Array, offset:Float):Float;
	static function addRandomSuffix(prefix:String, ?suffixLength:Float):String;
	static function escapeRegExp(str:String):String;
	static function cleanText(text:String):String;
	static final escapedNewlineChars : Array<String>;
	static final newlineChars : Array<String>;
	static function isNewlineChar(text:String):Bool;
	static function lineSplit(text:String):Array<String>;
	static function mergeLines(text:String):String;
	static function charAtIndex(text:String, index:Float):ts.Tuple2<String, Float>;
	static function charSplit(text:String):Array<String>;
	static function breakTextIntoLines(text:String, wordBreaks:Array<String>, maxWidth:Float, computeWidthOfText:(t:String) -> Float):Array<String>;
	static function parseDate(dateStr:String):Null<js.lib.Date>;
	static function findLastMatch(value:String, regex:js.lib.RegExp):{
		var match : Null<js.lib.RegExpMatchArray>;
		var pos : Float;
	};
	/**
		Encodes a string to UTF-8.
	**/
	static function utf8Encode(input:String, ?byteOrderMark:Bool):js.lib.Uint8Array;
	/**
		Encodes a string to UTF-16.
	**/
	static function utf16Encode(input:String, ?byteOrderMark:Bool):js.lib.Uint16Array;
	/**
		Returns `true` if the `codePoint` is within the
		Basic Multilingual Plane (BMP). Code points inside the BMP are not encoded
		with surrogate pairs.
	**/
	static function isWithinBMP(codePoint:Float):Bool;
	/**
		Returns `true` if the given `codePoint` is valid and must be represented
		with a surrogate pair when encoded.
	**/
	static function hasSurrogates(codePoint:Float):Bool;
	static function highSurrogate(codePoint:Float):Float;
	static function lowSurrogate(codePoint:Float):Float;
	/**
		Decodes a Uint8Array of data to a string using UTF-16.
		
		Note that this function attempts to recover from erronous input by
		inserting the replacement character (�) to mark invalid code points
		and surrogate pairs.
	**/
	static function utf16Decode(input:js.lib.Uint8Array, ?byteOrderMark:Bool):String;
	static function hasUtf16BOM(bytes:js.lib.Uint8Array):Bool;
	/**
		Converts a number to its string representation in decimal. This function
		differs from simply converting a number to a string with `.toString()`
		because this function's output string will **not** contain exponential
		notation.
		
		Credit: https://stackoverflow.com/a/46545519
	**/
	static function numberToString(num:Float):String;
	static function sizeInBytes(n:Float):Float;
	/**
		Converts a number into its constituent bytes and returns them as
		a number[].
		
		Returns most significant byte as first element in array. It may be necessary
		to call .reverse() to get the bits in the desired order.
		
		Example:
		   bytesFor(0x02A41E) => [ 0b10, 0b10100100, 0b11110 ]
		
		Credit for algorithm: https://stackoverflow.com/a/1936865
	**/
	static function bytesFor(n:Float):js.lib.Uint8Array;
	static function error(msg:String):Any;
	static function encodeToBase64(bytes:js.lib.Uint8Array):String;
	static function decodeFromBase64(base64:String):js.lib.Uint8Array;
	/**
		If the `dataUri` input is a data URI, then the data URI prefix must not be
		longer than 100 characters, or this function will fail to decode it.
	**/
	static function decodeFromBase64DataUri(dataUri:String):js.lib.Uint8Array;
	static function values(obj:Dynamic):Array<Dynamic>;
	static final StandardFontValues : Array<Dynamic>;
	static function isStandardFont(input:Dynamic):Bool;
	static function rectanglesAreEqual(a:{ var x : Float; var y : Float; var width : Float; var height : Float; }, b:{ var x : Float; var y : Float; var width : Float; var height : Float; }):Bool;
	static function backtick(val:Dynamic):String;
	static function singleQuote(val:Dynamic):String;
	static function createValueErrorMsg(value:Dynamic, valueName:String, values:Array<pdf_lib.Primitive>):String;
	static function assertIsOneOf(value:Dynamic, valueName:String, allowedValues:ts.AnyOf2<Array<pdf_lib.Primitive>, haxe.DynamicAccess<pdf_lib.Primitive>>):Void;
	static function assertIsOneOfOrUndefined(value:Dynamic, valueName:String, allowedValues:ts.AnyOf2<Array<pdf_lib.Primitive>, haxe.DynamicAccess<pdf_lib.Primitive>>):Void;
	static function assertIsSubset(values:Array<Dynamic>, valueName:String, allowedValues:ts.AnyOf2<Array<pdf_lib.Primitive>, haxe.DynamicAccess<pdf_lib.Primitive>>):Void;
	static function getType(val:Dynamic):Dynamic;
	static function isType(value:Dynamic, type:pdf_lib.TypeDescriptor):Bool;
	static function createTypeErrorMsg(value:Dynamic, valueName:String, types:Array<pdf_lib.TypeDescriptor>):String;
	static function assertIs(value:Dynamic, valueName:String, types:Array<pdf_lib.TypeDescriptor>):Void;
	static function assertOrUndefined(value:Dynamic, valueName:String, types:Array<pdf_lib.TypeDescriptor>):Void;
	static function assertEachIs(values:Array<Dynamic>, valueName:String, types:Array<pdf_lib.TypeDescriptor>):Void;
	static function assertRange(value:Dynamic, valueName:String, min:Float, max:Float):Void;
	static function assertRangeOrUndefined(value:Dynamic, valueName:String, min:Float, max:Float):Void;
	static function assertMultiple(value:Dynamic, valueName:String, multiplier:Float):Void;
	static function assertInteger(value:Dynamic, valueName:String):Void;
	static function assertPositive(value:Float, valueName:String):Void;
	/**
		Decode a byte array into a string using PDFDocEncoding.
	**/
	static function pdfDocEncodingDecode(bytes:js.lib.Uint8Array):String;
}