package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_1005:String = "inventory_badges";
      
      public static const const_1214:String = "inventory_clothes";
      
      public static const const_1377:String = "inventory_furniture";
      
      public static const const_603:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_989:String = "inventory_effects";
       
      
      private var var_1659:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_603);
         var_1659 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_1659;
      }
   }
}
