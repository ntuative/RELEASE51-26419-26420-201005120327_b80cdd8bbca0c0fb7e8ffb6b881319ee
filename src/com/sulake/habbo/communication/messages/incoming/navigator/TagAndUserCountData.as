package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class TagAndUserCountData
   {
       
      
      private var var_1644:int;
      
      private var var_1667:String;
      
      public function TagAndUserCountData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1667 = param1.readString();
         this.var_1644 = param1.readInteger();
      }
      
      public function get method_2() : int
      {
         return this.var_1644;
      }
      
      public function get tag() : String
      {
         return this.var_1667;
      }
   }
}
