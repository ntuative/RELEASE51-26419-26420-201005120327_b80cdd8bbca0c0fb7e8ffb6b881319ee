package com.sulake.habbo.room.utils
{
   public class PublicRoomWorldData
   {
       
      
      private var var_1870:Number = 1;
      
      private var var_186:Number = 1;
      
      private var var_2199:String = "";
      
      public function PublicRoomWorldData(param1:String, param2:Number, param3:Number)
      {
         super();
         var_2199 = param1;
         var_186 = param2;
         var_1870 = param3;
      }
      
      public function get scale() : Number
      {
         return var_186;
      }
      
      public function get heightScale() : Number
      {
         return var_1870;
      }
   }
}
