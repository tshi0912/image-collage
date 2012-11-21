package me.shitao.imagecollage.view
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import mx.collections.ArrayCollection;
	import me.shitao.imagecollage.vo.CollageLayoutVo;

	[Bindable]
	public class MainBoxPM extends EventDispatcher
	{
		private static var _instance:MainBoxPM;

		public static function get instance():MainBoxPM
		{
			if (!_instance)
			{
				_instance=new MainBoxPM();
			}
			return _instance;
		}

		public function MainBoxPM()
		{
			if (_instance != null)
			{
				throw new Error("Only one MainBoxPM instance should be instantiated.");
			}
		}

		public var collageLayoutVos:ArrayCollection=new ArrayCollection();

		private var _selectedTemplateLayout:CollageLayoutVo;

		public function mockLayoutVos():void
		{
			collageLayoutVos.removeAll();
			var vo:CollageLayoutVo=new CollageLayoutVo();
			vo.rects=new Array();
			var rect:Rectangle=new Rectangle();
			rect.top=2;
			rect.left=10;
			rect.bottom=49;
			rect.right=90;
			vo.rects.push(rect);
			rect=new Rectangle();
			rect.top=51;
			rect.left=10;
			rect.bottom=98;
			rect.right=90;
			vo.rects.push(rect);
			collageLayoutVos.addItem(vo);

			vo=new CollageLayoutVo();
			vo.rects=new Array();
			rect=new Rectangle();
			rect.top=2;
			rect.left=2;
			rect.bottom=49;
			rect.right=49;
			vo.rects.push(rect);
			rect=new Rectangle();
			rect.top=51;
			rect.left=2;
			rect.bottom=98;
			rect.right=49;
			vo.rects.push(rect);
			rect=new Rectangle();
			rect.top=2;
			rect.left=51;
			rect.bottom=98;
			rect.right=98;
			vo.rects.push(rect);
			collageLayoutVos.addItem(vo);

			vo=new CollageLayoutVo();
			vo.rects=new Array();
			rect=new Rectangle();
			rect.top=2;
			rect.left=2;
			rect.bottom=49;
			rect.right=49;
			vo.rects.push(rect);
			rect=new Rectangle();
			rect.top=2;
			rect.left=51;
			rect.bottom=49;
			rect.right=98;
			vo.rects.push(rect);
			rect=new Rectangle();
			rect.top=51;
			rect.left=2;
			rect.bottom=98;
			rect.right=98;
			vo.rects.push(rect);
			collageLayoutVos.addItem(vo);

			vo=new CollageLayoutVo();
			vo.rects=new Array();
			rect=new Rectangle();
			rect.top=2;
			rect.left=20;
			rect.bottom=26;
			rect.right=80;
			vo.rects.push(rect);
			rect=new Rectangle();
			rect.top=27;
			rect.left=20;
			rect.bottom=50;
			rect.right=80;
			vo.rects.push(rect);
			rect=new Rectangle();
			rect.top=51;
			rect.left=20;
			rect.bottom=75;
			rect.right=80;
			vo.rects.push(rect);
			rect=new Rectangle();
			rect.top=76;
			rect.left=20;
			rect.bottom=98;
			rect.right=80;
			vo.rects.push(rect);
			collageLayoutVos.addItem(vo);

			vo=new CollageLayoutVo();
			vo.rects=new Array();
			rect=new Rectangle();
			rect.top=2;
			rect.left=2;
			rect.bottom=24.5;
			rect.right=24.5;
			vo.rects.push(rect);
			rect=new Rectangle();
			rect.top=26.5;
			rect.left=2;
			rect.bottom=49;
			rect.right=24.5;
			vo.rects.push(rect);
			rect=new Rectangle();
			rect.top=51;
			rect.left=2;
			rect.bottom=73.5;
			rect.right=24.5;
			vo.rects.push(rect);
			rect=new Rectangle();
			rect.top=75.5;
			rect.left=2;
			rect.bottom=98;
			rect.right=24.5;
			vo.rects.push(rect);
			rect=new Rectangle();
			rect.top=75.5;
			rect.left=26.5;
			rect.bottom=98;
			rect.right=49;
			vo.rects.push(rect);
			rect=new Rectangle();
			rect.top=75.5;
			rect.left=51;
			rect.bottom=98;
			rect.right=73.5;
			vo.rects.push(rect);
			rect=new Rectangle();
			rect.top=75.5;
			rect.left=75.5;
			rect.bottom=98;
			rect.right=98;
			vo.rects.push(rect);
			rect=new Rectangle();
			rect.top=2;
			rect.left=26.5;
			rect.bottom=73.5;
			rect.right=98;
			vo.rects.push(rect);
			collageLayoutVos.addItem(vo);
		}

		[Bindable("selectedTemplateLayoutChanged")]
		public function get selectedTemplateLayout():CollageLayoutVo
		{
			return _selectedTemplateLayout;
		}

		public function set selectedTemplateLayout(value:CollageLayoutVo):void
		{
			if (_selectedTemplateLayout != value)
			{
				_selectedTemplateLayout=value;
				dispatchEvent(new Event("selectedTemplateLayoutChanged"));
			}
		}
	}
}
