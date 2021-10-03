package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1048:String;
      
      private var var_1909:int;
      
      private var var_1910:int;
      
      private var var_1486:int;
      
      private var var_1908:int;
      
      private var _category:int;
      
      private var var_2405:int;
      
      private var var_1905:int;
      
      private var var_1904:int;
      
      private var var_1907:int;
      
      private var var_1906:int;
      
      private var var_1911:Boolean;
      
      private var var_1415:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1909 = param1;
         var_1048 = param2;
         var_1910 = param3;
         var_1907 = param4;
         _category = param5;
         var_1415 = param6;
         var_1486 = param7;
         var_1904 = param8;
         var_1905 = param9;
         var_1906 = param10;
         var_1908 = param11;
         var_1911 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_1907;
      }
      
      public function get extra() : int
      {
         return var_1486;
      }
      
      public function get stuffData() : String
      {
         return var_1415;
      }
      
      public function get groupable() : Boolean
      {
         return var_1911;
      }
      
      public function get creationMonth() : int
      {
         return var_1906;
      }
      
      public function get roomItemID() : int
      {
         return var_1910;
      }
      
      public function get itemType() : String
      {
         return var_1048;
      }
      
      public function get itemID() : int
      {
         return var_1909;
      }
      
      public function get songID() : int
      {
         return var_1486;
      }
      
      public function get timeToExpiration() : int
      {
         return var_1904;
      }
      
      public function get creationYear() : int
      {
         return var_1908;
      }
      
      public function get creationDay() : int
      {
         return var_1905;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
