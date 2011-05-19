package org.stevegood.phaseplanner.goal
{
	import flash.events.Event;
	
	import org.stevegood.phaseplanner.core.BaseBean;
	import org.stevegood.phaseplanner.step.Step;
	import org.stevegood.phaseplanner.step.StepIterator;
	
	public class Goal extends BaseBean
	{
		private var _steps:Vector.<Step>;
		
		public function Goal()
		{
			super();
		}
		
		[Bindable (event="stepsChanged")]
		public function get steps():Vector.<Step>{
			return _steps;
		}
		
		public function addStep(step:Step):void{
			if (_steps == null){
				_steps = new Vector.<Step>;
			}
			
			_steps.push(step);
			dispatchEvent(new Event("stepsChanged"));
		}
		
		public function getStepIterator():StepIterator{
			return new StepIterator(_steps);
		}
		
	}
}