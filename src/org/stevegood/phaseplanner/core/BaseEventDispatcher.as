package org.stevegood.phaseplanner.core
{
	import com.asfusion.mate.events.Dispatcher;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	public class BaseEventDispatcher extends EventDispatcher
	{
		protected var dispatcher:Dispatcher = new Dispatcher();
		
		public function BaseEventDispatcher(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		override public function dispatchEvent(event:Event):Boolean{
			return super.dispatchEvent(event) && dispatcher.dispatchEvent(event);
		}
	}
}