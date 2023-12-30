package pdf_lib;

@:jsRequire("pdf-lib", "PDFPageTree") extern class PDFPageTree extends PDFDict {
	function Parent():Null<PDFPageTree>;
	function Kids():PDFArray;
	function Count():PDFNumber;
	function pushTreeNode(treeRef:PDFRef):Void;
	function pushLeafNode(leafRef:PDFRef):Void;
	/**
		Inserts the given ref as a leaf node of this page tree at the specified
		index (zero-based). Also increments the `Count` of each page tree in the
		hierarchy to accomodate the new page.
		
		Returns the ref of the PDFPageTree node into which `leafRef` was inserted,
		or `undefined` if it was inserted into the root node (the PDFPageTree upon
		which the method was first called).
	**/
	function insertLeafNode(leafRef:PDFRef, targetIndex:Float):Null<PDFRef>;
	/**
		Removes the leaf node at the specified index (zero-based) from this page
		tree. Also decrements the `Count` of each page tree in the hierarchy to
		account for the removed page.
		
		If `prune` is true, then intermediate tree nodes will be removed from the
		tree if they contain 0 children after the leaf node is removed.
	**/
	function removeLeafNode(targetIndex:Float, ?prune:Bool):Void;
	function ascend(visitor:(node:PDFPageTree) -> Dynamic):Void;
	/**
		Performs a Post-Order traversal of this page tree
	**/
	function traverse(visitor:(node:pdf_lib.cjs.core.structures.pdfpagetree.TreeNode, ref:PDFRef) -> Dynamic):Void;
	private var insertLeafKid : Dynamic;
	private var removeKid : Dynamic;
	static var prototype : PDFPageTree;
	static dynamic function withContext(context:PDFContext, ?parent:PDFRef):PDFPageTree;
	static dynamic function fromMapWithContext(map:pdf_lib.cjs.core.objects.pdfdict.DictMap, context:PDFContext):PDFPageTree;
}