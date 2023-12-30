package pdf_lib;

@:jsRequire("@pdf-lib/standard-fonts") @valueModuleOnly extern class StandardFonts {
	static final Encodings : {
		var Symbol : pdf_lib.standard_fonts.Encoding;
		var ZapfDingbats : pdf_lib.standard_fonts.Encoding;
		var WinAnsi : pdf_lib.standard_fonts.Encoding;
	};
}