package org.stevegood.phaseplanner.db
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	public class DatabaseService extends EventDispatcher
	{
		private static const DBNAME:String = "phase_planner_db";
		
		public function DatabaseService(target:IEventDispatcher=null){
			super(target);
		}
		
		public function initDb():void{
			// TODO: this is called after the app has launched to get the DB ready for quieries
		}
		
		private function createDb():void{
			// TODO: this is called if the DB does not already exist
		}
		
		public function executeQuery(query:String):void{
			// TODO: handle query execution
		}
		
	}
}