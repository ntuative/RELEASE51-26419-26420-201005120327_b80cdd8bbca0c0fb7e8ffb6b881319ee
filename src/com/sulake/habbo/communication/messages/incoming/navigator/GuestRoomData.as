package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1644:int;
      
      private var var_2112:String;
      
      private var var_2116:int;
      
      private var var_2111:int;
      
      private var var_735:Boolean;
      
      private var var_2026:Boolean;
      
      private var var_412:int;
      
      private var var_1140:String;
      
      private var var_2029:int;
      
      private var var_1148:int;
      
      private var _ownerName:String;
      
      private var var_733:String;
      
      private var var_2115:int;
      
      private var var_2113:RoomThumbnailData;
      
      private var var_2114:Boolean;
      
      private var var_656:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_656 = new Array();
         super();
         var_412 = param1.readInteger();
         var_735 = param1.readBoolean();
         var_733 = param1.readString();
         _ownerName = param1.readString();
         var_2029 = param1.readInteger();
         var_1644 = param1.readInteger();
         var_2115 = param1.readInteger();
         var_1140 = param1.readString();
         var_2116 = param1.readInteger();
         var_2114 = param1.readBoolean();
         var_2111 = param1.readInteger();
         var_1148 = param1.readInteger();
         var_2112 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_656.push(_loc4_);
            _loc3_++;
         }
         var_2113 = new RoomThumbnailData(param1);
         var_2026 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_2115;
      }
      
      public function get roomName() : String
      {
         return var_733;
      }
      
      public function get method_2() : int
      {
         return var_1644;
      }
      
      public function get score() : int
      {
         return var_2111;
      }
      
      public function get eventCreationTime() : String
      {
         return var_2112;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_2114;
      }
      
      public function get tags() : Array
      {
         return var_656;
      }
      
      public function get allowPets() : Boolean
      {
         return var_2026;
      }
      
      public function get event() : Boolean
      {
         return var_735;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_656 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1148;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_2116;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_2113;
      }
      
      public function get doorMode() : int
      {
         return var_2029;
      }
      
      public function get flatId() : int
      {
         return var_412;
      }
      
      public function get description() : String
      {
         return var_1140;
      }
   }
}
