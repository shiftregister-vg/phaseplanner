package org.stevegood.phaseplanner.plan
{
	import flash.events.Event;
	
	public class PlanEvent extends Event
	{
		public static const PLAN_LOADED:String = "PlanLoadedPlanEvent";
		
		public var plan:Plan;
		
		public function PlanEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}