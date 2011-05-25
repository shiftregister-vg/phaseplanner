package org.stevegood.phaseplanner.plan
{
	import flash.events.Event;
	
	import org.stevegood.phaseplanner.core.BaseBean;
	import org.stevegood.phaseplanner.phase.Phase;
	import org.stevegood.phaseplanner.phase.PhaseIterator;
	
	[RemoteClass('org.stevegood.phaseplanner.plan.Plan')]
	public class Plan extends BaseBean{
		private var _phases:Vector.<Phase> = new Vector.<Phase>;
		
		[Bindable] public var name:String;
		
		public function Plan()
		{
			super();
		}
		
		[Bindable (event="phaseChange")]
		public function get phases():Vector.<Phase>{
			return _phases;
		}
		
		public function set phases(value:Vector.<Phase>):void{
			_phases = value;
			dispatchEvent(new Event("phaseChange"));
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
		
	}
}