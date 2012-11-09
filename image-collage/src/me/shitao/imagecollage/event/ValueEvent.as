package me.shitao.imagecollage.event
{
	import flash.events.DataEvent;
	import flash.events.Event;
	
	public class ValueEvent extends Event
	{
		public var data:Object;
		
		public function ValueEvent(type:String, data:Object, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.data = data;
		}
		
		override public function clone():Event
		{
			return new ValueEvent(type, data, bubbles, cancelable);
		}
	}
}