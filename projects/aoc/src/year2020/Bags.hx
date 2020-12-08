package year2020;

import kiss.Prelude;
import year2020.Util;

using StringTools;

// Color CONTAINS quantities of child colors
typedef ParentMap = Map<String, Map<String, Int>>;

// Color IS CONTAINED IN these colors
typedef ChildMap = Map<String, Array<String>>;

@:build(kiss.Kiss.build("src/year2020/Bags.kiss"))
class Bags {}
