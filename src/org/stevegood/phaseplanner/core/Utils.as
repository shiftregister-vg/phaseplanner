package org.stevegood.phaseplanner.core
{
	public class Utils
	{
		
		public static function vectorToArray(v:Object): Array{
			var len:int = v.length;
			var ret:Array = new Array(len);
			for (var i:int = 0; i < len; ++i)
			{
				ret[i] = v[i];
			}
			return ret;
		}
		
	}
}