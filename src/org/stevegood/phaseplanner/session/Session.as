package org.stevegood.phaseplanner.session
{
	import flash.events.Event;
	
	import org.stevegood.phaseplanner.core.BaseBean;
	import org.stevegood.phaseplanner.plan.Plan;
	
	public class Session extends BaseBean
	{
		private var _plan:Plan;
		
		public function Session(){
			super();
		}
		
		[Bindable (event="planSet")]
		public function get plan():Plan{
			return _plan;
		}
		
		public function setPlan(plan:Plan):void{
			_plan = plan;
			dispatchEvent(new Event("planSet"));
		}
	}
}