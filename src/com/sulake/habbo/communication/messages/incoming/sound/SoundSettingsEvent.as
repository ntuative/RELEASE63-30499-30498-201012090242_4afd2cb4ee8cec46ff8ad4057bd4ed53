package com.sulake.habbo.communication.messages.incoming.sound
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.sound.SoundSettingsParser;
   
   public class SoundSettingsEvent extends MessageEvent implements IMessageEvent
   {
       
      
      public function SoundSettingsEvent(param1:Function)
      {
         super(param1,SoundSettingsParser);
      }
      
      public function getParser() : SoundSettingsParser
      {
         return this.var_10 as SoundSettingsParser;
      }
   }
}
