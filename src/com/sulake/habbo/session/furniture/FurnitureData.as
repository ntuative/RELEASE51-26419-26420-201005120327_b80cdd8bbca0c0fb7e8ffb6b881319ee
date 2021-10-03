package com.sulake.habbo.session.furniture
{
   public class FurnitureData implements IFurnitureData
   {
      
      public static const const_1599:String = "e";
      
      public static const const_1654:String = "i";
      
      public static const const_1619:String = "s";
       
      
      private var _id:int;
      
      private var var_2166:String;
      
      private var _title:String;
      
      private var _type:String;
      
      private var var_2167:int;
      
      private var var_1180:Array;
      
      private var var_2169:int;
      
      private var var_2170:int;
      
      private var var_2168:int;
      
      private var _name:String;
      
      private var var_2171:int;
      
      private var var_1140:String;
      
      public function FurnitureData(param1:String, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int, param8:int, param9:Array, param10:String, param11:String, param12:String)
      {
         super();
         _type = param1;
         _id = param2;
         _name = param3;
         var_2167 = param4;
         var_2171 = param5;
         var_2169 = param6;
         var_2170 = param7;
         var_2168 = param8;
         var_1180 = param9;
         _title = param10;
         var_1140 = param11;
         var_2166 = param12;
      }
      
      public function get tileSizeY() : int
      {
         return var_2170;
      }
      
      public function get tileSizeZ() : int
      {
         return var_2168;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get adUrl() : String
      {
         return var_2166;
      }
      
      public function get title() : String
      {
         return _title;
      }
      
      public function get revision() : int
      {
         return var_2171;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get colourIndex() : int
      {
         return var_2167;
      }
      
      public function get tileSizeX() : int
      {
         return var_2169;
      }
      
      public function get colours() : Array
      {
         return var_1180;
      }
      
      public function get description() : String
      {
         return var_1140;
      }
   }
}
