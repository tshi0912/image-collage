package me.shitao.imagecollage.event
{
	import flash.events.DataEvent;
	import flash.events.Event;

	public class ValueEvent extends Event
	{

		public static const CLOSE_IMAGE:String = "closeImage";
		
		public function ValueEvent(type:String, data:Object, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.data=data;
		}

		public var data:Object;

		override public function clone():Event
		{
			return new ValueEvent(type, data, bubbles, cancelable);
		}
	}
}
