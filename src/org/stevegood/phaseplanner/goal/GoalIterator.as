package org.stevegood.phaseplanner.goal
{
	import mx.collections.ArrayCollection;
	
	import org.stevegood.phaseplanner.core.BaseIterator;
	import org.stevegood.phaseplanner.core.Utils;
	
	public class GoalIterator extends BaseIterator{
		
		public function GoalIterator(items:ArrayCollection){
			super(items.source);
		}
		
	}
}