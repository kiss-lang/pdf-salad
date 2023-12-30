package pdf_lib.standard_fonts;

@:jsRequire("@pdf-lib/standard-fonts", "FontNames") @:enum extern abstract FontNames(String) from String to String {
	var Courier;
	var CourierBold;
	var CourierOblique;
	var CourierBoldOblique;
	var Helvetica;
	var HelveticaBold;
	var HelveticaOblique;
	var HelveticaBoldOblique;
	var TimesRoman;
	var TimesRomanBold;
	var TimesRomanItalic;
	var TimesRomanBoldItalic;
	var Symbol;
	var ZapfDingbats;
}