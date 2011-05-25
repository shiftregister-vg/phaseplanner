package org.stevegood.phaseplanner.test
{
	import flash.events.IEventDispatcher;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	import org.stevegood.phaseplanner.core.BaseEventDispatcher;
	import org.stevegood.phaseplanner.goal.Goal;
	import org.stevegood.phaseplanner.persist.DiskPersistenceService;
	import org.stevegood.phaseplanner.persist.PersistenceEvent;
	import org.stevegood.phaseplanner.phase.Phase;
	import org.stevegood.phaseplanner.plan.Plan;
	import org.stevegood.phaseplanner.step.Step;
	
	public class TestDataBuilder extends BaseEventDispatcher
	{
		public function TestDataBuilder(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		public function buildTestData():void{
			var plan:Plan = new Plan();
			plan.name = "Test Plan";
			
			// phase 1
			var phase:Phase = new Phase();
			phase.name = "Test Phase";
			plan.addPhase(phase);
			
			var goal:Goal = new Goal();
			goal.name = "Test Goal 1a";
			phase.addGoal(goal);
			
			var step:Step = new Step();
			step.name = "Test Step 1a1";
			step.closeStep();
			goal.addStep(step);
			
			var step2:Step = new Step();
			step2.name = "Test Step 1a2";
			step2.closeStep();
			goal.addStep(step2);
			
			var goal2:Goal = new Goal();
			goal2.name = "Test Goal 1b";
			phase.addGoal(goal2);
			
			// phase 2
			var phase2:Phase = new Phase();
			phase2.name = "Test Phase 2";
			plan.addPhase(phase2);
			
			var goal3:Goal = new Goal();
			goal3.name = "Test Goal 2a";
			phase2.addGoal(goal3);
			
			var step3:Step = new Step();
			step3.name = "Test Step 2a1";
			goal3.addStep(step3);
			
			var e:PersistenceEvent = new PersistenceEvent(PersistenceEvent.SAVE_OBJECT);
			e.fileName = plan.name + "." + DiskPersistenceService.FILE_EXTENSION;
			e.object = plan;
			dispatchEvent(e);
			
			// use a timer to read the test data.  This should prevent stale data being read before the new data is written
			var timer:Timer = new Timer(500,1);
			timer.addEventListener(TimerEvent.TIMER_COMPLETE,function(event:TimerEvent):void{
				e = new PersistenceEvent(PersistenceEvent.LOAD_OBJECT);
				e.fileName = plan.name + "." + DiskPersistenceService.FILE_EXTENSION;
				dispatchEvent(e);
			});
			timer.start();
		}
		
	}
}