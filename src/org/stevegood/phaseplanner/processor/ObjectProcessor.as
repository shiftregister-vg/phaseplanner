package org.stevegood.phaseplanner.processor
{
	import flash.events.IEventDispatcher;
	
	import org.stevegood.phaseplanner.core.BaseEventDispatcher;
	import org.stevegood.phaseplanner.plan.Plan;
	import org.stevegood.phaseplanner.plan.PlanEvent;
	
	public class ObjectProcessor extends BaseEventDispatcher{
				
		public function ObjectProcessor(target:IEventDispatcher=null){
			super(target);
		}
		
		public function processObject(object:*):void{
			// determine the object's type and dispatch the correct event
			if (object is Plan){
				var pe:PlanEvent = new PlanEvent(PlanEvent.PLAN_LOADED);
				pe.plan = object as Plan;
				dispatchEvent(pe);
			}
		}
	}
}