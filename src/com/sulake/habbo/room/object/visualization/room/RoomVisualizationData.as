package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_453:FloorRasterizer;
      
      private var var_918:Boolean = false;
      
      private var var_648:PlaneMaskManager;
      
      private var var_454:WallRasterizer;
      
      private var var_649:WallAdRasterizer;
      
      private var var_452:LandscapeRasterizer;
      
      public function RoomVisualizationData()
      {
         super();
         var_454 = new WallRasterizer();
         var_453 = new FloorRasterizer();
         var_649 = new WallAdRasterizer();
         var_452 = new LandscapeRasterizer();
         var_648 = new PlaneMaskManager();
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return var_454;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return var_649;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return var_453;
      }
      
      public function get initialized() : Boolean
      {
         return var_918;
      }
      
      protected function reset() : void
      {
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return var_648;
      }
      
      public function dispose() : void
      {
         if(var_454 != null)
         {
            var_454.dispose();
            var_454 = null;
         }
         if(var_453 != null)
         {
            var_453.dispose();
            var_453 = null;
         }
         if(var_649 != null)
         {
            var_649.dispose();
            var_649 = null;
         }
         if(var_452 != null)
         {
            var_452.dispose();
            var_452 = null;
         }
         if(var_648 != null)
         {
            var_648.dispose();
            var_648 = null;
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            var_454.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            var_453.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            var_649.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            var_452.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            var_648.initialize(_loc11_);
         }
         return true;
      }
      
      public function clearCache() : void
      {
         if(var_454 != null)
         {
            var_454.clearCache();
         }
         if(var_453 != null)
         {
            var_453.clearCache();
         }
         if(var_452 != null)
         {
            var_452.clearCache();
         }
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return var_452;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(var_918)
         {
            return;
         }
         var_454.initializeAssetCollection(param1);
         var_453.initializeAssetCollection(param1);
         var_649.initializeAssetCollection(param1);
         var_452.initializeAssetCollection(param1);
         var_648.initializeAssetCollection(param1);
         var_918 = true;
      }
   }
}
