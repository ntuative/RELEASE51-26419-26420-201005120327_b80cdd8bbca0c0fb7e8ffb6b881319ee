package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1736:int;
      
      private var var_302:String;
      
      private var var_1670:int;
      
      private var var_1739:int;
      
      private var var_1737:int;
      
      private var var_1762:int;
      
      private var _nutrition:int;
      
      private var var_1183:int;
      
      private var var_1763:int;
      
      private var var_1764:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1738:int;
      
      private var var_1765:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1670;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_1762;
      }
      
      public function flush() : Boolean
      {
         var_1183 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_1763;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_1764;
      }
      
      public function get maxNutrition() : int
      {
         return var_1765;
      }
      
      public function get figure() : String
      {
         return var_302;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1739;
      }
      
      public function get petId() : int
      {
         return var_1183;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1183 = param1.readInteger();
         _name = param1.readString();
         var_1670 = param1.readInteger();
         var_1763 = param1.readInteger();
         var_1737 = param1.readInteger();
         var_1764 = param1.readInteger();
         _energy = param1.readInteger();
         var_1762 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_1765 = param1.readInteger();
         var_302 = param1.readString();
         var_1739 = param1.readInteger();
         var_1738 = param1.readInteger();
         var_1736 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1737;
      }
      
      public function get ownerId() : int
      {
         return var_1738;
      }
      
      public function get age() : int
      {
         return var_1736;
      }
   }
}
