package org.stevegood.phaseplanner.phase
{
	import flash.events.Event;
	
	import org.stevegood.phaseplanner.core.BaseBean;
	import org.stevegood.phaseplanner.goal.Goal;
	import org.stevegood.phaseplanner.goal.GoalIterator;
	
	public class Phase extends BaseBean
	{
		private var _goals:Vector.<Goal>;
		
		public function Phase(){
			super();
		}
		
		[Bindable (event="goalsChanged")]
		public function get goals():Vector.<Goal>{
			return _goals;
		}
		
		public function addGoal(goal:Goal):void{
			if (_goals == null){
				_goals = new Vector.<Goal>;
			}
			
			_goals.push(goal);
			dispatchEvent(new Event("goalsChanged"));
		}
		
		public function getGoalIterator():GoalIterator{
			return new GoalIterator(_goals);
		}
		
	}
}