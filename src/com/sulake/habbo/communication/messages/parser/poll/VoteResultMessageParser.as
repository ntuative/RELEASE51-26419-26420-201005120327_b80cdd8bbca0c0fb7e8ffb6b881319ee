package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1198:int;
      
      private var var_999:String;
      
      private var var_668:Array;
      
      private var var_1006:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_668.slice();
      }
      
      public function flush() : Boolean
      {
         var_999 = "";
         var_1006 = [];
         var_668 = [];
         var_1198 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1198;
      }
      
      public function get question() : String
      {
         return var_999;
      }
      
      public function get choices() : Array
      {
         return var_1006.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_999 = param1.readString();
         var_1006 = [];
         var_668 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_1006.push(param1.readString());
            var_668.push(param1.readInteger());
            _loc3_++;
         }
         var_1198 = param1.readInteger();
         return true;
      }
   }
}
