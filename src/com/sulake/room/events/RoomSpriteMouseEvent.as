package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_2097:Boolean = false;
      
      private var var_2102:Boolean = false;
      
      private var var_2099:String = "";
      
      private var _type:String = "";
      
      private var var_2100:Boolean = false;
      
      private var var_1645:Number = 0;
      
      private var var_2098:Number = 0;
      
      private var var_2103:Number = 0;
      
      private var var_2101:String = "";
      
      private var var_1646:Number = 0;
      
      private var var_2096:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_2101 = param2;
         var_2099 = param3;
         var_2098 = param4;
         var_2103 = param5;
         var_1645 = param6;
         var_1646 = param7;
         var_2096 = param8;
         var_2102 = param9;
         var_2100 = param10;
         var_2097 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_2096;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_2097;
      }
      
      public function get localX() : Number
      {
         return var_1645;
      }
      
      public function get localY() : Number
      {
         return var_1646;
      }
      
      public function get canvasId() : String
      {
         return var_2101;
      }
      
      public function get altKey() : Boolean
      {
         return var_2102;
      }
      
      public function get spriteTag() : String
      {
         return var_2099;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_2098;
      }
      
      public function get screenY() : Number
      {
         return var_2103;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_2100;
      }
   }
}
