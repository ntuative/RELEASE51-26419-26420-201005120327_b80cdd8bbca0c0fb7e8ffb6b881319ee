package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2201:Boolean = false;
      
      private var var_2200:int = 0;
      
      private var var_1427:int = 0;
      
      private var var_2202:int = 0;
      
      private var var_1665:Boolean = false;
      
      private var var_1539:int = 0;
      
      private var var_1428:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1539 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_2200;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_2201;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_2201 = param1;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1665;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_2200 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1427 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1539;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_1665 = param1;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_2202 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1427;
      }
      
      public function get pixelBalance() : int
      {
         return var_2202;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1428 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1428;
      }
   }
}
