package com.sulake.habbo.widget.events
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomWidgetRoomViewUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_753:String = "RWRVUE_ROOM_VIEW_POSITION_CHANGED";
      
      public static const const_743:String = "RWRVUE_ROOM_VIEW_SCALE_CHANGED";
      
      public static const const_245:String = "RWRVUE_ROOM_VIEW_SIZE_CHANGED";
       
      
      private var var_1424:Point;
      
      private var var_1425:Rectangle;
      
      private var var_186:Number = 0;
      
      public function RoomWidgetRoomViewUpdateEvent(param1:String, param2:Rectangle = null, param3:Point = null, param4:Number = 0, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         var_1425 = param2;
         var_1424 = param3;
         var_186 = param4;
      }
      
      public function get rect() : Rectangle
      {
         if(var_1425 != null)
         {
            return var_1425.clone();
         }
         return null;
      }
      
      public function get scale() : Number
      {
         return var_186;
      }
      
      public function get positionDelta() : Point
      {
         if(var_1424 != null)
         {
            return var_1424.clone();
         }
         return null;
      }
   }
}
