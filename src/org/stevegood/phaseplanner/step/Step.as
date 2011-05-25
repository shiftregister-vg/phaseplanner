package org.stevegood.phaseplanner.step
{
	
	import org.stevegood.phaseplanner.core.BaseBean;
	
	[RemoteClass('org.stevegood.phaseplanner.step.Step')]
	public class Step extends BaseBean{
		
		[Bindable] public var name:String;
		[Bindable] public var complete:Boolean = false;
		
		public function Step(){
			super();
		}
		
		public function isComplete():Boolean{
			return complete;
		}
		
		public function closeStep():void{
			complete = true;
		}
		
		public function openStep():void{
			complete = false;
		}
		
	}
}