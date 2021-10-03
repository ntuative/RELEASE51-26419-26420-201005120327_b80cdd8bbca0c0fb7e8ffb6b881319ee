package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_521:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_1915:int;
      
      private var var_1918:int;
      
      private var var_1957:Boolean;
      
      private var var_1083:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_521);
         var_1918 = param1;
         var_1915 = param2;
         _color = param3;
         var_1083 = param4;
         var_1957 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_1915;
      }
      
      public function get presetNumber() : int
      {
         return var_1918;
      }
      
      public function get brightness() : int
      {
         return var_1083;
      }
      
      public function get apply() : Boolean
      {
         return var_1957;
      }
   }
}
