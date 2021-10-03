package com.sulake.habbo.avatar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import flash.display.BitmapData;
   
   public class TemporaryAvatarImage extends AvatarImage
   {
       
      
      private var _assets:IAssetLibrary;
      
      public function TemporaryAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:String, param4:String, param5:String, param6:IAssetLibrary, param7:String = null)
      {
         super(param1,param2,param3,param4,param5,param7);
         _assets = param6;
      }
      
      override public function getCroppedImage(param1:String) : BitmapData
      {
         var _loc2_:* = "pet_placeholder_";
         if(var_186 == AvatarScaleType.SMALL)
         {
            _loc2_ += "s";
         }
         _loc2_ += var_91.toString();
         _loc2_ += "_png";
         var _loc3_:BitmapDataAsset = _assets.getAssetByName(_loc2_) as BitmapDataAsset;
         var _loc4_:BitmapData = _loc3_.content as BitmapData;
         return _loc4_.clone();
      }
      
      override public function getImage(param1:String, param2:Boolean) : BitmapData
      {
         return getCroppedImage(param1);
      }
      
      override public function dispose() : void
      {
         _assets = null;
         super.dispose();
      }
   }
}
