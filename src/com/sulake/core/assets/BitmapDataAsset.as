package com.sulake.core.assets
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class BitmapDataAsset implements IAsset
   {
      
      protected static var var_662:uint = 0;
      
      protected static var var_661:uint = 0;
       
      
      private var _disposed:Boolean = false;
      
      private var var_1052:Boolean = false;
      
      private var _bitmap:BitmapData = null;
      
      private var var_1211:AssetTypeDeclaration;
      
      private var var_653:String;
      
      private var _offset:Point;
      
      private var var_1053:Boolean = false;
      
      public function BitmapDataAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         _offset = new Point(0,0);
         super();
         var_1211 = param1;
         var_653 = param2;
         ++var_662;
      }
      
      public static function get allocatedByteCount() : uint
      {
         return var_661;
      }
      
      public static function get instances() : uint
      {
         return var_662;
      }
      
      public function get flipV() : Boolean
      {
         return var_1052;
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is BitmapDataAsset)
         {
            _bitmap = BitmapDataAsset(param1)._bitmap;
            _offset = BitmapDataAsset(param1)._offset;
            return;
         }
         throw new Error("Provided asset should be of type BitmapDataAsset!");
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         var _loc2_:* = null;
         if(param1 is Class)
         {
            _loc2_ = new param1() as Bitmap;
            if(_loc2_ != null)
            {
               _bitmap = new BitmapData(_loc2_.bitmapData.width,_loc2_.bitmapData.height,_loc2_.bitmapData.transparent);
               _bitmap.copyPixels(_loc2_.bitmapData,_loc2_.bitmapData.rect,new Point(0,0),null,null,false);
               _loc2_.bitmapData.dispose();
               if(_bitmap != null)
               {
                  var_661 += 0 * 0 * 4;
                  return;
               }
               throw new Error("Failed to convert Bitmap Class to BitmapDataAsset!");
            }
            _bitmap = new param1() as BitmapData;
            if(_bitmap != null)
            {
               return;
            }
            throw new Error("Failed to convert BitmapData Class to BitmapDataAsset!");
         }
         if(param1 is Bitmap)
         {
            _bitmap = Bitmap(param1).bitmapData;
            if(_bitmap == null)
            {
               throw new Error("Failed to convert Bitmap to BitmapDataAsset!");
            }
         }
         if(param1 is BitmapData)
         {
            _bitmap = param1 as BitmapData;
            if(_bitmap != null)
            {
               return;
            }
            throw new Error("Failed to convert BitmapData to BitmapDataAsset!");
         }
         if(param1 is BitmapDataAsset)
         {
            _bitmap = BitmapDataAsset(param1)._bitmap;
            _offset = BitmapDataAsset(param1)._offset;
            var_1053 = BitmapDataAsset(param1).var_1053;
            var_1052 = BitmapDataAsset(param1).var_1052;
            if(_bitmap != null)
            {
               return;
            }
            throw new Error("Failed to read content from BitmaDataAsset!");
         }
      }
      
      public function get offset() : Point
      {
         return _offset;
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            --var_662;
            if(_bitmap)
            {
               try
               {
                  var_661 -= 0 * 0 * 4;
                  _bitmap.dispose();
               }
               catch(e:Error)
               {
               }
            }
            _bitmap = null;
            _offset = null;
            var_1211 = null;
            var_653 = null;
            _disposed = true;
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get url() : String
      {
         return var_653;
      }
      
      public function get content() : Object
      {
         return _bitmap as Object;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return var_1211;
      }
      
      public function get flipH() : Boolean
      {
         return var_1053;
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].attribute("key");
            _loc4_ = param1[_loc2_].attribute("value");
            switch(_loc3_)
            {
               case "offset":
                  _loc5_ = _loc4_.split(",");
                  _offset.x = parseInt(_loc5_[0]);
                  _offset.y = parseInt(_loc5_[1]);
                  break;
               case "flipH":
                  var_1053 = _loc4_ == "1" || _loc4_ == "true";
                  break;
               case "flipV":
                  var_1052 = _loc4_ == "1" || _loc4_ == "true";
                  break;
            }
            _loc2_++;
         }
      }
   }
}
