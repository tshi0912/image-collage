package me.shitao.imagecollage.view
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	import me.shitao.imagecollage.vo.CollageLayoutVo;
	
	import mx.collections.ArrayCollection;

	[Bindable]
	public class MainBoxPM extends EventDispatcher
	{
		private static var _instance:MainBoxPM;
		
		public static function get instance():MainBoxPM{
			if(!_instance){
				_instance = new MainBoxPM();
			}
			return _instance;
		}
		
		public function MainBoxPM()
		{
			if (_instance != null){
				throw new Error("Only one MainBoxPM instance should be instantiated.");
			}
		}
		
		public var collageLayoutVos:ArrayCollection = new ArrayCollection();
		
		private var _selectedTemplateLayout:CollageLayoutVo;
		
		[Bindable("selectedTemplateLayoutChanged")]
		public function get selectedTemplateLayout():CollageLayoutVo
		{
			return _selectedTemplateLayout;	
		}
		
		public function set selectedTemplateLayout(value:CollageLayoutVo):void
		{
			if(_selectedTemplateLayout != value)
			{
				_selectedTemplateLayout = value;
				dispatchEvent(new Event("selectedTemplateLayoutChanged"));
			}
		}
		
		public function mockLayoutVos():void
		{
			collageLayoutVos.removeAll();
			var vo:CollageLayoutVo = new CollageLayoutVo();
			vo.rects = new Array();
			var rect:Rectangle = new Rectangle();
			rect.top = 0;
			rect.left = 0;
			rect.bottom = 49;
			rect.right = 100;
			vo.rects.push(rect);
			rect = new Rectangle();
			rect.top = 51;
			rect.left = 0;
			rect.bottom = 100;
			rect.right = 100;
			vo.rects.push(rect);
			collageLayoutVos.addItem(vo);
			vo = new CollageLayoutVo();
			vo.rects = new Array();
			rect = new Rectangle();
			rect.top = 0;
			rect.left = 0;
			rect.bottom = 49;
			rect.right = 49;
			vo.rects.push(rect);
			rect = new Rectangle();
			rect.top = 51;
			rect.left = 0;
			rect.bottom = 100;
			rect.right = 49;
			vo.rects.push(rect);
			rect = new Rectangle();
			rect.top = 0;
			rect.left = 51;
			rect.bottom = 100;
			rect.right = 100;
			vo.rects.push(rect);
			collageLayoutVos.addItem(vo);
		}
	}
}