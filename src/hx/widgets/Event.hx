package hx.widgets;

import wx.widgets.Event in WxEvent;

class Event {
	private var _ref:WxEvent;
	
	public function new() {
		
	}
	
	public function getEventType():Int {
		return _ref.getEventType();
	}
	
	public function getId():Int {
		return _ref.getId();
	}
	
    public function skip(skip:Bool = true) {
        _ref.skip(skip);
    }

    public function convertTo<T>(clz:Class<T>):T {
		var event:T = Type.createInstance(clz, []);
		cast(event, Event)._ref = _ref;
		return event;
    }
    
	public static function fromRef(ref:WxEvent):Event {
		var event:Event = new Event();
		event._ref = ref;
		return event;
	}
}
