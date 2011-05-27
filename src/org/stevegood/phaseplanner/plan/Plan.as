package org.stevegood.phaseplanner.plan
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	
	import org.stevegood.phaseplanner.core.BaseBean;
	import org.stevegood.phaseplanner.phase.Phase;
	import org.stevegood.phaseplanner.phase.PhaseIterator;
	
	[RemoteClass('org.stevegood.phaseplanner.plan.Plan')]
	public class Plan extends BaseBean{
		[Bindable] public var phases:ArrayCollection = new ArrayCollection();
		[Bindable] public var name:String;
		
		public function Plan()
		{
			super();
		}
		
		public function addPhase(phase:Phase):void{
			if (phases == null){
				phases = new ArrayCollection();
			}
			phases.addItem(phase);
			dispatchEvent(new Event("phaseChange"));
		}
		
		public function getPhaseIterator():PhaseIterator{
			return new PhaseIterator(phases);
		}
		
		public function getFirstIncompletePhase():Phase{
			var it:PhaseIterator = getPhaseIterator();
			while (it.hasNext()){
				var phase:Phase = it.next() as Phase;
				if (!phase.isComplete()){
					return phase;
				}
			}
			return null;
		}
		
	}
}