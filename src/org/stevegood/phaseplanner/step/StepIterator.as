package org.stevegood.phaseplanner.step
{
	import org.stevegood.phaseplanner.core.BaseIterator;
	
	public class StepIterator extends BaseIterator
	{
		public function StepIterator(items:Vector.<Step>)
		{
			super(items as Array);
		}
	}
}