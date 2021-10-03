package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1331:int;
      
      private var var_1233:int;
      
      private var var_1330:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function get messageId() : int
      {
         return var_1331;
      }
      
      public function flush() : Boolean
      {
         var_1233 = 0;
         var_1331 = 0;
         var_1330 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1233;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1331 = param1.readInteger();
         var_1233 = param1.readInteger();
         var_1330 = param1.readString();
         return true;
      }
      
      public function get timestamp() : String
      {
         return var_1330;
      }
   }
}
