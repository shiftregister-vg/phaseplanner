package org.stevegood.phaseplanner.goal
{
	import flash.events.Event;
	
	import org.stevegood.phaseplanner.core.BaseBean;
	import org.stevegood.phaseplanner.phase.Phase;
	import org.stevegood.phaseplanner.step.Step;
	import org.stevegood.phaseplanner.step.StepIterator;
	
	[RemoteClass('org.stevegood.phaseplanner.goal.Goal')]
	public class Goal extends BaseBean{
		
		[Bindable] public var steps:Vector.<Step> = new Vector.<Step>;
		[Bindable] public var name:String;
		
		public function Goal(){
			super();
		}
		
		public function addStep(step:Step):void{
			if (steps == null){
				steps = new Vector.<Step>;
			}
			
			steps.push(step);
		}
		
		public function getStepIterator():StepIterator{
			return new StepIterator(steps);
		}
		
		public function isComplete():Boolean{
			var it:StepIterator = getStepIterator();
			while (steps != null && steps.length > 0 && it.hasNext()){
				var step:Step = it.next() as Step;
				if (!step.isComplete()){
					return false;
				}
			}
			return true;
		}
		
	}
}