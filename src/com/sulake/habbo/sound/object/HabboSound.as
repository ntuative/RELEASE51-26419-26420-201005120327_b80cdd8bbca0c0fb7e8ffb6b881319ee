package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1020:SoundChannel = null;
      
      private var var_827:Boolean;
      
      private var var_1021:Sound = null;
      
      private var var_702:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_1021 = param1;
         var_1021.addEventListener(Event.COMPLETE,onComplete);
         var_702 = 1;
         var_827 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_827;
      }
      
      public function stop() : Boolean
      {
         var_1020.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_827 = false;
         var_1020 = var_1021.play(0);
         this.volume = var_702;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_702;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_1020.position;
      }
      
      public function get length() : Number
      {
         return var_1021.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_702 = param1;
         if(var_1020 != null)
         {
            var_1020.soundTransform = new SoundTransform(var_702);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_827 = true;
      }
   }
}
