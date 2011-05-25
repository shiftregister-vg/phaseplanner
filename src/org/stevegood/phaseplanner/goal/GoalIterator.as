package org.stevegood.phaseplanner.goal
{
	import org.stevegood.phaseplanner.core.BaseIterator;
	import org.stevegood.phaseplanner.core.Utils;
	
	public class GoalIterator extends BaseIterator{
		
		public function GoalIterator(items:Vector.<Goal>){
			super(Utils.vectorToArray(items));
		}
		
	}
}