package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1167:int = 2;
      
      public static const const_1662:int = 1;
       
      
      private var var_2265:int;
      
      private var var_2264:int;
      
      private var var_1665:Boolean;
      
      private var var_2261:int;
      
      private var var_1360:String;
      
      private var var_2263:Boolean;
      
      private var var_1666:int;
      
      private var var_2262:int;
      
      private var var_1663:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_2264;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1665;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_2262;
      }
      
      public function get memberPeriods() : int
      {
         return var_2261;
      }
      
      public function get productName() : String
      {
         return var_1360;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_2263;
      }
      
      public function get responseType() : int
      {
         return var_2265;
      }
      
      public function get pastClubDays() : int
      {
         return var_1663;
      }
      
      public function get pastVipDays() : int
      {
         return var_1666;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1360 = param1.readString();
         var_2264 = param1.readInteger();
         var_2261 = param1.readInteger();
         var_2262 = param1.readInteger();
         var_2265 = param1.readInteger();
         var_2263 = param1.readBoolean();
         var_1665 = param1.readBoolean();
         var_1663 = param1.readInteger();
         var_1666 = param1.readInteger();
         return true;
      }
   }
}
