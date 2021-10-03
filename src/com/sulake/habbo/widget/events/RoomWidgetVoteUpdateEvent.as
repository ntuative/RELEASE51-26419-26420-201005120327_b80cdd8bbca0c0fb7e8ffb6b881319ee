package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_139:String = "RWPUE_VOTE_RESULT";
      
      public static const const_132:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1198:int;
      
      private var var_999:String;
      
      private var var_668:Array;
      
      private var var_1006:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_999 = param2;
         var_1006 = param3;
         var_668 = param4;
         if(var_668 == null)
         {
            var_668 = [];
         }
         var_1198 = param5;
      }
      
      public function get votes() : Array
      {
         return var_668.slice();
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
   }
}
