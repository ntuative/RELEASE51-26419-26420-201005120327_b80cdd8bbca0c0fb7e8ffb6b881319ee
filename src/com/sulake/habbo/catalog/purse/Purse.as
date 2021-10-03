package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_1662:int = 0;
      
      private var var_1427:int = 0;
      
      private var var_1665:Boolean = false;
      
      private var var_1664:int = 0;
      
      private var var_1666:int = 0;
      
      private var var_1428:int = 0;
      
      private var var_1663:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get clubDays() : int
      {
         return var_1427;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1427 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_1665 = param1;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         var_1663 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return var_1427 > 0 || var_1428 > 0;
      }
      
      public function get credits() : int
      {
         return var_1664;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         var_1666 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1428;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1665;
      }
      
      public function get pastClubDays() : int
      {
         return var_1663;
      }
      
      public function get pastVipDays() : int
      {
         return var_1666;
      }
      
      public function set pixels(param1:int) : void
      {
         var_1662 = param1;
      }
      
      public function get pixels() : int
      {
         return var_1662;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1428 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1664 = param1;
      }
   }
}
