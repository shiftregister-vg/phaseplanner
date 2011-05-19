package org.stevegood.phaseplanner.core
{	
	public interface IIterator
	{
		/** 
		 * @return <code>true</code> if the iteration has more elements, false otherwise.
		 */
		function hasNext():Boolean;	
		
		/** 
		 * @return The next element in the iteration. 
		 */
		function next():*;
	}
}