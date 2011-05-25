package org.stevegood.phaseplanner.step
{
	import org.stevegood.phaseplanner.core.*;
	
	public class StepIterator extends BaseIterator
	{
		public function StepIterator(items:Vector.<Step>)
		{
			super(Utils.vectorToArray(items));
		}
	}
}