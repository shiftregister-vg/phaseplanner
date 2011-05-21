package org.stevegood.phaseplanner.persist
{
	import flash.events.Event;
	
	public class PersistenceEvent extends Event{
		
		public static const OBJECT_SAVED:String = "ObjectSavedPersistenceEvent";
		public static const SAVE_OBJECT:String = "SaveObjectPersistenceEvent";
		public static const DELETE_OBJECT:String = "DeleteObjectPersistenceEvent";
		public static const LOAD_OBJECT:String = "OpenObjectPersistenceEvent";
		
		public var fileName:String;
		public var object:*;
		
		public function PersistenceEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false){
			super(type, bubbles, cancelable);
		}
	}
}