package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PopularTagData
   {
       
      
      private var var_1644:int;
      
      private var var_1972:String;
      
      public function PopularTagData(param1:IMessageDataWrapper)
      {
         super();
         var_1972 = param1.readString();
         var_1644 = param1.readInteger();
      }
      
      public function get tagName() : String
      {
         return var_1972;
      }
      
      public function get method_2() : int
      {
         return var_1644;
      }
   }
}
