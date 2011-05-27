package org.stevegood.phaseplanner.phase
{
	
	import mx.collections.ArrayCollection;
	
	import org.stevegood.phaseplanner.core.BaseIterator;
	import org.stevegood.phaseplanner.core.Utils;
	
	public class PhaseIterator extends BaseIterator	{
		
		public function PhaseIterator(items:ArrayCollection=null){
			if (items != null){
				super(items.source);
			}
		}
		
	}
}