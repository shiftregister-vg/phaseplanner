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
			
		}
		
		private function createDb():void{
			
		}
		
	}
}