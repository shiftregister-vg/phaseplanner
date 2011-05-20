package org.stevegood.phaseplanner.persist
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	public class DiskPersistenceService extends EventDispatcher{
		
		public static const FILE_EXTENSION:String = "bpx";
		public static const SETTINGS_FILE:String = "settings.bps";
		
		public function DiskPersistenceService(target:IEventDispatcher=null){
			super(target);
		}
		
		public function writeObjectToFile(fileName:String,object:Object):void{
			
		}
		
		public function deleteObjectFile(fileName:String):void{
			
		}
		
		public function readObjectFromFile(fileName:String):Object{
			return null;
		}
		
	}
}