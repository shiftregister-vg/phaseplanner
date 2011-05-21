package org.stevegood.phaseplanner.processor
{
	import flash.events.Event;
	
	public class ObjectProcessorEvent extends Event
	{
		public static const PROCESS_OBJECT:String = "ProcessObjectObjectProcessorEvent";
		
		public var object:*;
		
		public function ObjectProcessorEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}