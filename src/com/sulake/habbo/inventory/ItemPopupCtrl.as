package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      private static const const_1073:int = 100;
      
      private static const const_1072:int = 200;
      
      private static const const_1075:int = 180;
      
      public static const const_845:int = 1;
      
      public static const const_482:int = 2;
      
      private static const const_1074:int = 250;
      
      private static const const_776:int = 5;
       
      
      private var var_571:BitmapData;
      
      private var var_299:Timer;
      
      private var var_9:IWindowContainer;
      
      private var var_679:BitmapData;
      
      private var var_298:Timer;
      
      private var var_71:IWindowContainer;
      
      private var var_1444:int = 2;
      
      private var _assets:IAssetLibrary;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         var_298 = new Timer(const_1074,1);
         var_299 = new Timer(const_1073,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         var_71 = param1;
         var_71.visible = false;
         _assets = param2;
         var_298.addEventListener(TimerEvent.TIMER,onDisplayTimer);
         var_299.addEventListener(TimerEvent.TIMER,onHideTimer);
         var _loc3_:BitmapDataAsset = _assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_679 = _loc3_.content as BitmapData;
         }
         _loc3_ = _assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_571 = _loc3_.content as BitmapData;
         }
      }
      
      public function hide() : void
      {
         var_71.visible = false;
         var_299.reset();
         var_298.reset();
         if(var_9 != null)
         {
            var_9.removeChild(var_71);
         }
      }
      
      public function hideDelayed() : void
      {
         var_299.reset();
         var_298.reset();
         var_299.start();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         hide();
      }
      
      public function dispose() : void
      {
         if(var_298 != null)
         {
            var_298.removeEventListener(TimerEvent.TIMER,onDisplayTimer);
            var_298.stop();
            var_298 = null;
         }
         if(var_299 != null)
         {
            var_299.removeEventListener(TimerEvent.TIMER,onHideTimer);
            var_299.stop();
            var_299 = null;
         }
         _assets = null;
         var_71 = null;
         var_9 = null;
         var_571 = null;
         var_679 = null;
      }
      
      public function showDelayed() : void
      {
         var_299.reset();
         var_298.reset();
         var_298.start();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         show();
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(var_71 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(var_9 != null)
         {
            var_9.removeChild(var_71);
         }
         var_9 = param1;
         var_1444 = param4;
         var _loc5_:ITextWindow = ITextWindow(var_71.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = var_71.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1075,param3.width),Math.min(const_1072,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (0 - _loc6_.width) / 2;
            var_71.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(var_71 == null || false)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(var_71.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_845:
               _loc2_.bitmap = var_679.clone();
               _loc2_.width = var_679.width;
               _loc2_.height = var_679.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = -1;
               break;
            case const_482:
               _loc2_.bitmap = var_571.clone();
               _loc2_.width = var_571.width;
               _loc2_.height = var_571.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = 1;
         }
         _loc2_.invalidate();
      }
      
      public function show() : void
      {
         var_299.reset();
         var_298.reset();
         if(var_9 == null)
         {
            return;
         }
         var_71.visible = true;
         var_9.addChild(var_71);
         refreshArrow(var_1444);
         switch(var_1444)
         {
            case const_845:
               var_71.x = 0 - const_776;
               break;
            case const_482:
               var_71.x = var_9.width + const_776;
         }
         var_71.y = (0 - 0) / 2;
      }
   }
}
