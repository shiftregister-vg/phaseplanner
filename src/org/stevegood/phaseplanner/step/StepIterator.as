package org.stevegood.phaseplanner.step
{
	import mx.collections.ArrayCollection;
	
	import org.stevegood.phaseplanner.core.*;
	
	public class StepIterator extends BaseIterator
	{
		public function StepIterator(items:ArrayCollection)
		{
			super(items.source);
		}
	}
}