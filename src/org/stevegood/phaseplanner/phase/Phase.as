package org.stevegood.phaseplanner.phase
{
	import flash.events.Event;
	
	import org.stevegood.phaseplanner.core.BaseBean;
	import org.stevegood.phaseplanner.goal.Goal;
	import org.stevegood.phaseplanner.goal.GoalIterator;
	import org.stevegood.phaseplanner.plan.Plan;
	
	[RemoteClass('org.stevegood.phaseplanner.phase.Phase')]
	public class Phase extends BaseBean{
		
		[Bindable] public var goals:Vector.<Goal> = new Vector.<Goal>;
		[Bindable] public var name:String;
		
		public function Phase(){
			super();
		}
		
		public function addGoal(goal:Goal):void{
			if (goals == null){
				goals = new Vector.<Goal>;
			}
			
			goals.push(goal);
		}
		
		public function getGoalIterator():GoalIterator{
			return new GoalIterator(goals);
		}
		
		public function isComplete():Boolean{
			var it:GoalIterator = getGoalIterator();
			while (goals != null && goals.length > 0 && it.hasNext()){
				var goal:Goal = it.next() as Goal;
				if (!goal.isComplete()){
					return false;
				}
			}
			return true;
		}
		
		//[Bindable (event="goalsChanged")]
		public function numGoalsIncomplete():int{
			var goalNum:int = goals == null ? 0 : goals.length;
			var it:GoalIterator = getGoalIterator();
			while (goalNum > 0 && it.hasNext()){
				var goal:Goal = it.next() as Goal;
				if (goal.isComplete()){
					goalNum--;
				}
			}
			return goalNum;
		}
		
	}
}