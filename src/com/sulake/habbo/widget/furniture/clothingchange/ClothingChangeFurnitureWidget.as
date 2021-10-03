package com.sulake.habbo.widget.furniture.clothingchange
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetClothingChangeUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetClothingChangeMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   
   public class ClothingChangeFurnitureWidget extends RoomWidgetBase
   {
      
      private static const const_815:String = "Girl";
      
      private static const const_814:String = "Boy";
       
      
      private var _window:IWindowContainer;
      
      private var _roomCategory:int = 0;
      
      private var var_148:int = 0;
      
      private var var_772:IWindowContainer;
      
      private var _roomId:int = 0;
      
      private var var_1872:int = 0;
      
      public function ClothingChangeFurnitureWidget(param1:IHabboWindowManager, param2:IAssetLibrary = null, param3:IHabboLocalizationManager = null)
      {
         super(param1,param2,param3);
      }
      
      private function onGenderSelectionMouseEvent(param1:WindowMouseEvent) : void
      {
         var _loc2_:IWindow = param1.target as IWindow;
         var _loc3_:String = _loc2_.name;
         switch(_loc3_)
         {
            case const_814:
               requestBoyEditor();
               hideGenderSelectionInterface();
               break;
            case const_815:
               requestGirlEditor();
               hideGenderSelectionInterface();
               break;
            case "close":
            case "close_btn":
               hideGenderSelectionInterface();
         }
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetClothingChangeUpdateEvent.const_296,onUpdate);
         param1.addEventListener(RoomWidgetClothingChangeUpdateEvent.const_876,onUpdate);
         param1.addEventListener(RoomWidgetClothingChangeUpdateEvent.const_500,onUpdate);
         super.registerUpdateEvents(param1);
      }
      
      private function onUpdate(param1:RoomWidgetClothingChangeUpdateEvent) : void
      {
         switch(param1.type)
         {
            case RoomWidgetClothingChangeUpdateEvent.const_296:
               showGenderSelectionInterface(param1);
               break;
            case RoomWidgetClothingChangeUpdateEvent.const_500:
               hideEditorInterface();
         }
      }
      
      private function requestBoyEditor() : void
      {
         requestEditor(FigureData.const_78);
      }
      
      private function showGenderSelectionInterface(param1:RoomWidgetClothingChangeUpdateEvent) : void
      {
         hideGenderSelectionInterface();
         var_148 = param1.objectId;
         var_1872 = param1.objectCategory;
         _roomId = param1.roomId;
         _roomCategory = param1.roomCategory;
         var _loc2_:IAsset = assets.getAssetByName("boygirl");
         var _loc3_:XmlAsset = XmlAsset(_loc2_);
         if(_loc3_ == null)
         {
            return;
         }
         _window = windowManager.createWindow("clothing change gender selection","",HabboWindowType.const_59,HabboWindowStyle.const_40,0 | 0 | 0 | 0,new Rectangle(100,100,200,200),null,0) as IWindowContainer;
         _window.buildFromXML(XML(_loc3_.content));
         _window.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onGenderSelectionMouseEvent);
         _window.center();
         var _loc4_:IWindow = _window.findChildByTag("close");
         if(_loc4_ != null)
         {
            _loc4_.procedure = onGenderSelectionWindowClose;
         }
         _loc4_ = _window.findChildByName(const_814);
         if(_loc4_ != null)
         {
            _loc4_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onGenderSelectionMouseEvent);
         }
         _loc4_ = _window.findChildByName(const_815);
         if(_loc4_ != null)
         {
            _loc4_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onGenderSelectionMouseEvent);
         }
      }
      
      private function hideGenderSelectionInterface() : void
      {
         if(_window != null)
         {
            _window.dispose();
            _window = null;
         }
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetClothingChangeUpdateEvent.const_296,onUpdate);
         param1.removeEventListener(RoomWidgetClothingChangeUpdateEvent.const_876,onUpdate);
         param1.removeEventListener(RoomWidgetClothingChangeUpdateEvent.const_500,onUpdate);
      }
      
      override public function dispose() : void
      {
         hideGenderSelectionInterface();
         hideEditorInterface();
         super.dispose();
      }
      
      private function onGenderSelectionWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideGenderSelectionInterface();
      }
      
      private function requestGirlEditor() : void
      {
         requestEditor(FigureData.const_71);
      }
      
      private function requestEditor(param1:String) : void
      {
         hideEditorInterface();
         var _loc2_:IFrameWindow = windowManager.createWindow("HACK EDITOR","HACK EDITOR",HabboWindowType.const_208,HabboWindowStyle.const_40,0 | 0 | 0 | 0,new Rectangle(100,100,200,200),null,0) as IFrameWindow;
         var _loc3_:IWindowContainer = _loc2_.content;
         _loc3_.setParamFlag(HabboWindowParam.const_91,true);
         var_772 = _loc2_;
         var _loc4_:IWindow = var_772.findChildByTag("close");
         if(_loc4_ != null)
         {
            _loc4_.procedure = onEditorWindowClose;
         }
         var _loc5_:* = null;
         _loc5_ = new RoomWidgetClothingChangeMessage(RoomWidgetClothingChangeMessage.const_305,param1,var_148,var_1872,_roomId,_roomCategory,_loc3_);
         messageListener.processWidgetMessage(_loc5_);
      }
      
      private function hideEditorInterface() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(var_772 != null)
         {
            _loc1_ = var_772 as IFrameWindow;
            if(_loc1_ != null)
            {
               _loc2_ = _loc1_.content;
               while(_loc2_.numChildren > 0)
               {
                  _loc2_.removeChildAt(0);
               }
            }
            var_772.dispose();
            var_772 = null;
         }
      }
      
      private function onEditorWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideEditorInterface();
      }
   }
}
