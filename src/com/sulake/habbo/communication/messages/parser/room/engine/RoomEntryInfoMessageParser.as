package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1752:int;
      
      private var var_411:Boolean;
      
      private var var_1753:Boolean;
      
      private var var_806:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1753 = param1.readBoolean();
         if(var_1753)
         {
            var_1752 = param1.readInteger();
            var_411 = param1.readBoolean();
         }
         else
         {
            var_806 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_806 != null)
         {
            var_806.dispose();
            var_806 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_1752;
      }
      
      public function get owner() : Boolean
      {
         return var_411;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_1753;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_806;
      }
   }
}
