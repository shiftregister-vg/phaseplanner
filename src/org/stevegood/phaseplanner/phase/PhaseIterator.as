package org.stevegood.phaseplanner.phase
{
	
	import org.stevegood.phaseplanner.core.BaseIterator;
	import org.stevegood.phaseplanner.core.Utils;
	
	public class PhaseIterator extends BaseIterator	{
		
		public function PhaseIterator(items:Vector.<Phase>=null){
			if (items != null){
				super(Utils.vectorToArray(items));
			}
		}
		
	}
}