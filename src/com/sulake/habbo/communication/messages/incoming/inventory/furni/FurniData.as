package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1415:String;
      
      private var var_1048:String;
      
      private var var_2222:Boolean;
      
      private var var_1486:int;
      
      private var var_1725:int;
      
      private var var_2223:Boolean;
      
      private var var_1467:String = "";
      
      private var var_1745:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1351:int;
      
      private var var_1744:Boolean;
      
      private var var_1747:int = -1;
      
      private var var_1749:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1725 = param1;
         var_1048 = param2;
         _objId = param3;
         var_1351 = param4;
         _category = param5;
         var_1415 = param6;
         var_2222 = param7;
         var_1745 = param8;
         var_1744 = param9;
         var_2223 = param10;
         var_1749 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1467;
      }
      
      public function get extra() : int
      {
         return var_1486;
      }
      
      public function get classId() : int
      {
         return var_1351;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_2223;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_2222;
      }
      
      public function get stripId() : int
      {
         return var_1725;
      }
      
      public function get stuffData() : String
      {
         return var_1415;
      }
      
      public function get songId() : int
      {
         return var_1747;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1467 = param1;
         var_1486 = param2;
      }
      
      public function get itemType() : String
      {
         return var_1048;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1749;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1744;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1745;
      }
   }
}
