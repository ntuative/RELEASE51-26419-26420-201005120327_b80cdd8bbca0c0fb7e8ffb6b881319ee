package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_1915:int;
      
      private var var_1918:int;
      
      private var var_1916:Boolean;
      
      private var var_1919:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1917:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_1918 = param1;
         var_1915 = param2;
         var_1919 = param3;
         var_1917 = param4;
         var_1916 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1918,var_1915,var_1919,var_1917,int(var_1916)];
      }
      
      public function dispose() : void
      {
      }
   }
}
