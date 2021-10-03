package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_903:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_903 = new Array();
         var_903.push(param1.length);
         var_903 = var_903.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_903;
      }
   }
}
