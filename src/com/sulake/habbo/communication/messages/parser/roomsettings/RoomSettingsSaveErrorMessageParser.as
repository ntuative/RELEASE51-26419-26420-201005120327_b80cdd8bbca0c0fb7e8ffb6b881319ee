package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1546:int = 9;
      
      public static const const_1583:int = 4;
      
      public static const const_1556:int = 1;
      
      public static const const_1273:int = 10;
      
      public static const const_1538:int = 2;
      
      public static const const_1305:int = 7;
      
      public static const const_1172:int = 11;
      
      public static const const_1540:int = 3;
      
      public static const const_1297:int = 8;
      
      public static const const_1259:int = 5;
      
      public static const const_1581:int = 6;
      
      public static const const_1307:int = 12;
       
      
      private var var_2258:String;
      
      private var _roomId:int;
      
      private var var_1233:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_2258;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1233 = param1.readInteger();
         var_2258 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1233;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
