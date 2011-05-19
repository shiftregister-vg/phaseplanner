package org.stevegood.phaseplanner.goal
{
	import org.stevegood.phaseplanner.core.BaseIterator;
	
	public class GoalIterator extends BaseIterator{
		
		public function GoalIterator(items:Vector.<Goal>){
			super(items as Array);
		}
		
	}
}