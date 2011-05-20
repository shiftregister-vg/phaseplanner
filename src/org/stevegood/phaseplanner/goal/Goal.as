package org.stevegood.phaseplanner.goal
{
	import flash.events.Event;
	
	import org.stevegood.phaseplanner.core.BaseBean;
	import org.stevegood.phaseplanner.phase.Phase;
	import org.stevegood.phaseplanner.step.Step;
	import org.stevegood.phaseplanner.step.StepIterator;
	
	public class Goal extends BaseBean{
		private var _steps:Vector.<Step>;
		private var _name:String;
		private var _phase:Phase;
		
		public function Goal(){
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
		
		[Bindable (event="nameChanged")]
		public function get name():String{
			return _name;
		}
		
		public function set name(value:String):void{
			_name = value;
			dispatchEvent(new Event("nameChanged"));
		}
		
		[Bindable (event="phaseChanged")]
		public function get phase():Phase{
			return _phase;
		}
		
		public function set phase(value:Phase):void{
			_phase = value;
			dispatchEvent(new Event("phaseChanged"));
		}
		
	}
}