package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitMessageParser implements IMessageParser
   {
       
      
      private var _roomMessageTemplates:Array;
      
      private var var_1715:Boolean;
      
      private var var_1436:Array;
      
      private var var_1719:Boolean;
      
      private var var_1718:Boolean;
      
      private var var_1716:Boolean;
      
      private var var_149:Array;
      
      private var var_1721:Boolean;
      
      private var var_1722:Boolean;
      
      private var var_1437:Array;
      
      private var var_1720:Boolean;
      
      private var var_1717:Boolean;
      
      public function ModeratorInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get banPermission() : Boolean
      {
         return var_1717;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_1715;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_1719;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_1721;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return _roomMessageTemplates;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_1722;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1436;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_149 = [];
         var_1436 = [];
         _roomMessageTemplates = [];
         var_1437 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(!_loc2_.parse(param1))
            {
               return false;
            }
            var_149.push(_loc2_.issueData);
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1436.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1437.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_1721 = param1.readBoolean();
         var_1716 = param1.readBoolean();
         var_1719 = param1.readBoolean();
         var_1718 = param1.readBoolean();
         var_1717 = param1.readBoolean();
         var_1722 = param1.readBoolean();
         var_1715 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _roomMessageTemplates.push(param1.readString());
            _loc4_++;
         }
         var_1720 = param1.readBoolean();
         return true;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_1718;
      }
      
      public function get offenceCategories() : Array
      {
         return var_1437;
      }
      
      public function get issues() : Array
      {
         return var_149;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_1720;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_1716;
      }
   }
}
