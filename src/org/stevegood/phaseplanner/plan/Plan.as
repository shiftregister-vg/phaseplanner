package org.stevegood.phaseplanner.plan
{
	import flash.events.Event;
	
	import org.stevegood.phaseplanner.core.BaseBean;
	import org.stevegood.phaseplanner.phase.Phase;
	import org.stevegood.phaseplanner.phase.PhaseIterator;
	
	public class Plan extends BaseBean{
		private var _phases:Vector.<Phase>;
		private var _name:String;
		
		public function Plan()
		{
			super();
		}
		
		[Bindable (event="phaseChange")]
		public function get phases():Vector.<Phase>{
			return _phases;
		}

		public function addPhase(phase:Phase):void{
			if (_phases == null){
				_phases = new Vector.<Phase>;
			}
			_phases.push(phase);
			dispatchEvent(new Event("phaseChange"));
		}
		
		public function getPhaseIterator():PhaseIterator{
			return new PhaseIterator(_phases);
		}
		
		[Bindable (event="nameChanged")]
		public function get name():String{
			return _name;
		}
		
		public function set name(value:String):void{
			_name = value;
			dispatchEvent(new Event("nameChanged"));
		}
		
	}
}