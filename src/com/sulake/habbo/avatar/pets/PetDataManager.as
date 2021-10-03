package com.sulake.habbo.avatar.pets
{
   import com.sulake.core.assets.AssetLibraryCollection;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.utils.LibraryLoader;
   import com.sulake.core.utils.LibraryLoaderEvent;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.AvatarRenderManager;
   import flash.events.Event;
   import flash.net.URLRequest;
   
   public class PetDataManager implements IPetDataManager
   {
       
      
      private var var_712:Array;
      
      private var var_547:Map;
      
      private const const_1464:int = 1;
      
      private var var_163:int;
      
      private var _assets:AssetLibraryCollection;
      
      private const const_1727:int = 0;
      
      private var _renderer:AvatarRenderManager;
      
      private const const_364:int = 2;
      
      private var var_181:Array;
      
      public function PetDataManager(param1:AssetLibraryCollection, param2:AvatarRenderManager)
      {
         super();
         var_547 = new Map();
         _assets = param1;
         var_712 = [];
         _renderer = param2;
         var_163 = const_1727;
         init();
      }
      
      private function updateQueue() : void
      {
         var _loc1_:* = null;
         if(false)
         {
            _loc1_ = _assets.loadFromFile(new URLRequest(String(var_181.pop())));
            _loc1_.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,onLoaderComplete);
         }
         else
         {
            var_163 = const_364;
            _renderer.petDataReady();
            notifyListeners();
         }
      }
      
      public function init() : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc1_:Array = _assets.getAssetsByName("petData");
         for each(_loc2_ in _loc1_)
         {
            if(_loc2_ != null)
            {
               _loc3_ = _loc2_.content as XML;
               _loc4_ = int(_loc3_.@species);
               var_547.add(_loc4_,new PetData(_loc3_));
            }
         }
      }
      
      public function dispose() : void
      {
         _assets = null;
         _renderer = null;
         var_712 = null;
         var_547 = null;
      }
      
      public function assetsReady(param1:int, param2:IPetDataListener) : Boolean
      {
         if(var_163 == const_364)
         {
            return true;
         }
         addListener(param2);
         if(var_163 == const_1464)
         {
            return false;
         }
         var_181 = [];
         var_181.push("pets_palettes.swf");
         var_181.push("h_dog.swf");
         var_181.push("h_cat.swf");
         var_181.push("h_croco.swf");
         var_181.push("h_terrier.swf");
         var_181.push("h_bear.swf");
         var_181.push("h_pig.swf");
         var_181.push("sh_dog.swf");
         var_181.push("sh_cat.swf");
         var_181.push("sh_croco.swf");
         var_181.push("sh_terrier.swf");
         var_181.push("sh_bear.swf");
         var_181.push("sh_pig.swf");
         var_163 = const_1464;
         updateQueue();
         return false;
      }
      
      public function createAvatarFigureString(param1:int, param2:int, param3:uint) : String
      {
         var _loc4_:PetData = var_547.getValue(param1);
         if(_loc4_ == null)
         {
            Logger.log("Could not find Pet Data: " + param1);
            return "";
         }
         var _loc5_:Breed = _loc4_.findBreed(param2);
         var _loc6_:PetColor = _loc4_.findColor(param3);
         if(_loc5_ == null)
         {
            return "";
         }
         if(_loc6_ == null)
         {
            return _loc5_.avatarFigureString;
         }
         var _loc7_:Array = _loc5_.avatarFigureString.split(".");
         return _loc7_.join(_loc6_.figurePartPaletteColorId + ".");
      }
      
      private function onLoaderComplete(param1:Event) : void
      {
         updateQueue();
      }
      
      private function addListener(param1:IPetDataListener) : void
      {
         if(var_712.indexOf(param1) == -1)
         {
            var_712.push(param1);
         }
      }
      
      private function notifyListeners() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_712.pop() as IPetDataListener;
            if(_loc1_ != null)
            {
               _loc1_.petDataReady();
            }
         }
      }
      
      public function populateFigureData(param1:XML) : void
      {
         var targetSets:Array = null;
         var targetPalette:XML = null;
         var speciesKeys:Array = null;
         var key:int = 0;
         var petData:PetData = null;
         var petColorData:PetColor = null;
         var breed:Breed = null;
         var colorValue:String = null;
         var color:XML = null;
         var colorId:int = 0;
         var avatarFigureString:String = null;
         var targetSetName:String = null;
         var figureTargetSet:XML = null;
         var figurePart:XML = null;
         var setId:int = 0;
         var figureSet:XML = null;
         var figureData:XML = param1;
         targetSets = ["pbd","phd","ptl"];
         targetPalette = figureData.colors.palette.(@id == "1")[0];
         speciesKeys = var_547.getKeys();
         for each(key in speciesKeys)
         {
            petData = var_547.getValue(key);
            if(petData != null)
            {
               for each(petColorData in petData.colors)
               {
                  colorValue = petColorData.rgb.toString(16);
                  color = targetPalette.color.(text() == colorValue)[0];
                  if(color == null)
                  {
                     colorId = targetPalette.children().length() + 1;
                     color = <color id="{colorId}" index="{colorId}" club="0" selectable="1">{colorValue}</color>;
                     targetPalette.appendChild(color);
                  }
                  petColorData.figurePartPaletteColorId = parseInt(color.@id);
               }
               for each(breed in petData.breeds)
               {
                  avatarFigureString = "";
                  for each(targetSetName in targetSets)
                  {
                     figureTargetSet = figureData.sets.settype.(@type == targetSetName)[0];
                     if(figureTargetSet == null)
                     {
                        Logger.log("Could not find Figure Target Set for populating Pet Data: " + targetSetName);
                     }
                     else
                     {
                        figurePart = figureTargetSet.method_9.part.(@id == petData.species).(hasOwnProperty("palettemapid") && @palettemapid == breed.patternId)[0];
                        if(figurePart == null)
                        {
                        }
                        setId = figureTargetSet.children().length() + 1;
                        figureSet = <set id="{setId}" gender="U" club="0" colorable="1" selectable="1"/>;
                        figurePart = <part id="{petData.species}" breed="{breed.id}" type="{targetSetName}" colorable="1" colorindex="1" index="1"/>;
                        if(breed.patternId >= 0)
                        {
                           figurePart.@palettemapid = breed.patternId;
                        }
                        figureSet.appendChild(figurePart);
                        figureTargetSet.appendChild(figureSet);
                        avatarFigureString += targetSetName + "-" + setId + "-" + ".";
                     }
                  }
                  breed.avatarFigureString = avatarFigureString;
               }
            }
         }
      }
      
      public function getPetData(param1:int, param2:IPetDataListener = null) : IPetData
      {
         var _loc3_:IPetData = var_547.getValue(param1) as IPetData;
         assetsReady(param1,param2);
         return _loc3_;
      }
      
      public function get species() : Map
      {
         return var_547;
      }
   }
}
