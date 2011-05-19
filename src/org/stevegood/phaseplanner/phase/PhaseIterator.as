package org.stevegood.phaseplanner.phase
{
	
	import org.stevegood.phaseplanner.core.BaseIterator;
	
	public class PhaseIterator extends BaseIterator	{
		
		public function PhaseIterator(items:Vector.<Phase>=null){
			if (items != null){
				super(new Array(items));
			}
		}
		
	}
}