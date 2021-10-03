package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_337:Boolean;
      
      private var var_1212:int;
      
      private var var_1584:String;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         var_1212 = param1.readInteger();
         var_1584 = param1.readString();
         var_337 = param1.readBoolean();
      }
      
      public function get visible() : Boolean
      {
         return var_337;
      }
      
      public function get nodeName() : String
      {
         return var_1584;
      }
      
      public function get nodeId() : int
      {
         return var_1212;
      }
   }
}
