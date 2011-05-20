package org.stevegood.phaseplanner.phase
{
	import flash.events.Event;
	
	import org.stevegood.phaseplanner.core.BaseBean;
	import org.stevegood.phaseplanner.goal.Goal;
	import org.stevegood.phaseplanner.goal.GoalIterator;
	import org.stevegood.phaseplanner.plan.Plan;
	
	public class Phase extends BaseBean{
		private var _goals:Vector.<Goal>;
		private var _name:String;
		private var _plan:Plan;
		
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
		
		[Bindable (event="nameChanged")]
		public function get name():String{
			return _name;
		}
		
		public function set name(value:String):void{
			_name = value;
			dispatchEvent(new Event("nameChanged"));
		}
		
		[Bindable (event="planChanged")]
		public function get plan():Plan{
			return _plan;
		}
		
		public function set plan(value:Plan):void{
			_plan = value;
			dispatchEvent(new Event("planChanged"));
		}
		
	}
}