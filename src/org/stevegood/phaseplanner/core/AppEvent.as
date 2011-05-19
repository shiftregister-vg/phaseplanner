package org.stevegood.phaseplanner.core
{
	import flash.events.Event;
	
	public class AppEvent extends Event
	{
		
		public static const APPLICATION_CREATION_COMPLETE:String = "ApplicationCreationCompleteAppEvent";
		
		public function AppEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}