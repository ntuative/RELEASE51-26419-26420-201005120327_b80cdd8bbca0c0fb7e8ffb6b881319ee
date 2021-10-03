package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1656:Date;
      
      private var var_1149:Boolean = false;
      
      private var _type:int;
      
      private var var_383:BitmapData;
      
      private var var_268:Boolean = false;
      
      private var var_1210:int;
      
      private var var_563:int = 1;
      
      private var var_981:int;
      
      public function Effect()
      {
         super();
      }
      
      public function get icon() : BitmapData
      {
         return var_383;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --var_563;
         if(var_563 < 0)
         {
            var_563 = 0;
         }
         var_981 = var_1210;
         var_268 = false;
         var_1149 = false;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         var_981 = param1;
      }
      
      public function get isActive() : Boolean
      {
         return var_268;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         var_383 = param1;
      }
      
      public function get duration() : int
      {
         return var_1210;
      }
      
      public function get isInUse() : Boolean
      {
         return var_1149;
      }
      
      public function get effectsInInventory() : int
      {
         return var_563;
      }
      
      public function get iconImage() : BitmapData
      {
         return var_383;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !var_268)
         {
            var_1656 = new Date();
         }
         var_268 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         var_563 = param1;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(var_268)
         {
            _loc1_ = var_981 - (new Date().valueOf() - var_1656.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return var_981;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         var_1149 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1210 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
