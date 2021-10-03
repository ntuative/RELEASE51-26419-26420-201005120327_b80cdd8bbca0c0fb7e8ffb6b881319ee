package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_150:int = 1;
      
      public static const const_1409:int = 3;
      
      public static const const_461:int = 2;
       
      
      private var var_2060:int;
      
      private var var_1931:int;
      
      private var var_2066:int;
      
      private var var_1930:int;
      
      private var var_34:int;
      
      private var var_412:int;
      
      private var var_1197:int;
      
      private var var_1776:int;
      
      private var var_1082:int;
      
      private var _roomResources:String;
      
      private var var_2063:int;
      
      private var var_2061:int;
      
      private var var_2062:String;
      
      private var var_2059:String;
      
      private var var_2065:int = 0;
      
      private var var_1326:String;
      
      private var _message:String;
      
      private var var_1694:int;
      
      private var var_2064:String;
      
      private var var_1148:int;
      
      private var var_733:String;
      
      private var var_2067:String;
      
      private var var_1541:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_1082 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_2065 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_2061;
      }
      
      public function set roomName(param1:String) : void
      {
         var_733 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_2063 = param1;
      }
      
      public function get state() : int
      {
         return var_34;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_733;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1930 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_34 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1931;
      }
      
      public function get priority() : int
      {
         return var_2060 + var_2065;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1776 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_2059;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1541) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1148;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_2061 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1197;
      }
      
      public function set flatType(param1:String) : void
      {
         var_2062 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_2063;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1930;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_2067 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1326 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1776;
      }
      
      public function set priority(param1:int) : void
      {
         var_2060 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1931 = param1;
      }
      
      public function get flatType() : String
      {
         return var_2062;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_2066 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_2059 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1694 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1326;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1197 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_2066;
      }
      
      public function set flatId(param1:int) : void
      {
         var_412 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1148 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1541 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1694;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_2064 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1541;
      }
      
      public function get reportedUserId() : int
      {
         return var_1082;
      }
      
      public function get flatId() : int
      {
         return var_412;
      }
      
      public function get flatOwnerName() : String
      {
         return var_2067;
      }
      
      public function get reporterUserName() : String
      {
         return var_2064;
      }
   }
}
