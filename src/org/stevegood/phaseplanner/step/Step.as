package org.stevegood.phaseplanner.step
{
	import flash.events.Event;
	
	import org.stevegood.phaseplanner.core.BaseBean;
	import org.stevegood.phaseplanner.goal.Goal;
	
	public class Step extends BaseBean{
		private var _name:String;
		private var _goal:Goal;
		
		public function Step(){
			super();
		}
		
		[Bindable (event="nameChanged")]
		public function get name():String{
			return _name;
		}
		
		public function set name(value:String):void{
			_name = value;
			dispatchEvent(new Event("nameChanged"));
		}
		
		[Bindable (event="goalChanged")]
		public function get goal():Goal{
			return _goal;
		}
		
		public function set goal(value:Goal):void{
			_goal = value;
			dispatchEvent(new Event("goalChanged"));
		}
	}
}