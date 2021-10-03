package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_215:String = "RWUIUE_PEER";
      
      public static const const_226:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1368:String = "BOT";
      
      public static const const_929:int = 2;
      
      public static const const_1227:int = 0;
      
      public static const const_899:int = 3;
       
      
      private var var_302:String = "";
      
      private var var_1153:String = "";
      
      private var var_1795:Boolean = false;
      
      private var var_1792:int = 0;
      
      private var var_1788:int = 0;
      
      private var var_1785:Boolean = false;
      
      private var var_1154:String = "";
      
      private var var_1793:Boolean = false;
      
      private var var_817:int = 0;
      
      private var var_1786:Boolean = true;
      
      private var var_979:int = 0;
      
      private var var_1787:Boolean = false;
      
      private var var_1365:Boolean = false;
      
      private var var_1796:Boolean = false;
      
      private var var_1784:int = 0;
      
      private var var_1783:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_289:Array;
      
      private var var_1366:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1790:int = 0;
      
      private var var_1789:Boolean = false;
      
      private var var_1794:int = 0;
      
      private var var_1791:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_289 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1788;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1788 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_1795;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_1786;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_1786 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_1793 = param1;
      }
      
      public function get motto() : String
      {
         return var_1153;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_1787 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1365;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1153 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_1789;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1791;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1365 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_1783;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1784 = param1;
      }
      
      public function get badges() : Array
      {
         return var_289;
      }
      
      public function get amIController() : Boolean
      {
         return var_1785;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_1785 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_1789 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_1794 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1791 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1154 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_1793;
      }
      
      public function set figure(param1:String) : void
      {
         var_302 = param1;
      }
      
      public function get carryItem() : int
      {
         return var_1784;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1366;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_1787;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_817 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_1794;
      }
      
      public function get realName() : String
      {
         return var_1154;
      }
      
      public function get figure() : String
      {
         return var_302;
      }
      
      public function set webID(param1:int) : void
      {
         var_1790 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_289 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_1796 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_1783 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_817;
      }
      
      public function get webID() : int
      {
         return var_1790;
      }
      
      public function set groupId(param1:int) : void
      {
         var_979 = param1;
      }
      
      public function get xp() : int
      {
         return var_1792;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_1795 = param1;
      }
      
      public function get groupId() : int
      {
         return var_979;
      }
      
      public function get canTrade() : Boolean
      {
         return var_1796;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1366 = param1;
      }
      
      public function set xp(param1:int) : void
      {
         var_1792 = param1;
      }
   }
}
