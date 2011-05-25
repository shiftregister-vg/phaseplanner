package org.stevegood.phaseplanner.persist
{
	import flash.events.Event;
	import flash.events.IEventDispatcher;
	import flash.events.TimerEvent;
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;
	import flash.utils.ByteArray;
	import flash.utils.Timer;
	
	import org.stevegood.phaseplanner.core.BaseEventDispatcher;
	import org.stevegood.phaseplanner.processor.ObjectProcessorEvent;
	
	public class DiskPersistenceService extends BaseEventDispatcher{
		
		public static const FILE_EXTENSION:String = "bpx";
		public static const SETTINGS_FILE:String = "settings.bps";
		
		public function DiskPersistenceService(target:IEventDispatcher=null){
			super(target);
		}
		
		public function writeObjectToFile(fileName:String,object:*):void{
			var file:File = File.applicationStorageDirectory.resolvePath(fileName);
			trace(file.nativePath);
			var fileStream:FileStream = new FileStream();
			var byteArray:ByteArray = new ByteArray();
			byteArray.writeObject(object);
			fileStream.open(file, FileMode.WRITE);
			fileStream.writeBytes( byteArray );
			fileStream.close();
		}
		
		public function deleteObjectFile(fileName:String):void{
			var file:File = File.applicationStorageDirectory.resolvePath(fileName);
			if (file.exists){
				file.deleteFile();
			}
		}
		
		public function readObjectFromFile(fileName:String):void{
			var object:*;
			var file:File = File.applicationStorageDirectory.resolvePath(fileName);
			if (file.exists){
				var fileStream:FileStream = new FileStream();
				fileStream.open(file, FileMode.READ);
				object = fileStream.readObject();
				fileStream.close();
				
				var e:ObjectProcessorEvent = new ObjectProcessorEvent(ObjectProcessorEvent.PROCESS_OBJECT);
				e.object = object;
				dispatchEvent(e);
			}
		}
		
	}
}