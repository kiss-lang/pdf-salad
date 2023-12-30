package pdf_lib.cjs.api;

@:jsRequire("pdf-lib/cjs/api/rotations") @valueModuleOnly extern class Rotations {
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
}