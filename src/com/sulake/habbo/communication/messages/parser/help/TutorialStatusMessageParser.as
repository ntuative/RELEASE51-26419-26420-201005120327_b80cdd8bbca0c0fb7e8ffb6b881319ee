package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1010:Boolean;
      
      private var var_1012:Boolean;
      
      private var var_1011:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_1010;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_1012;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1011 = param1.readBoolean();
         var_1012 = param1.readBoolean();
         var_1010 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_1011;
      }
      
      public function flush() : Boolean
      {
         var_1011 = false;
         var_1012 = false;
         var_1010 = false;
         return true;
      }
   }
}
