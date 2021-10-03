package com.sulake.habbo.widget.chooser
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.events.RoomWidgetChooserContentEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRequestWidgetMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.events.IEventDispatcher;
   
   public class FurniChooserWidget extends ChooserWidgetBase
   {
       
      
      private var var_523:ChooserView;
      
      public function FurniChooserWidget(param1:IHabboWindowManager, param2:IAssetLibrary = null, param3:IHabboLocalizationManager = null)
      {
         super(param1,param2,param3);
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetChooserContentEvent.const_530,onChooserContent);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_137,method_5);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_760,method_5);
         super.registerUpdateEvents(param1);
      }
      
      override public function dispose() : void
      {
         if(var_523 != null)
         {
            var_523.dispose();
            var_523 = null;
         }
         super.dispose();
      }
      
      private function method_5(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         if(var_523 == null || !var_523.isOpen())
         {
            return;
         }
         var _loc2_:RoomWidgetRequestWidgetMessage = new RoomWidgetRequestWidgetMessage(RoomWidgetRequestWidgetMessage.REQUEST_FURNI_CHOOSER);
         messageListener.processWidgetMessage(_loc2_);
      }
      
      private function onChooserContent(param1:RoomWidgetChooserContentEvent) : void
      {
         if(param1 == null || param1.items == null)
         {
            return;
         }
         if(var_523 == null)
         {
            var_523 = new ChooserView(this,"${widget.chooser.furni.title}");
         }
         var_523.populate(param1.items,param1.isAnyRoomController);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetChooserContentEvent.const_530,onChooserContent);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_137,method_5);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_760,method_5);
      }
   }
}
