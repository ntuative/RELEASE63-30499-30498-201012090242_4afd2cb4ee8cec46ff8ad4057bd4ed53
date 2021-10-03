package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2426:int;
      
      private var var_1817:String;
      
      private var var_2494:String;
      
      private var var_2493:Boolean;
      
      private var var_2496:Boolean;
      
      private var var_2492:int;
      
      private var var_2491:String;
      
      private var var_2495:String;
      
      private var var_1610:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2426 = param1.readInteger();
         this.var_1817 = param1.readString();
         this.var_2494 = param1.readString();
         this.var_2493 = param1.readBoolean();
         this.var_2496 = param1.readBoolean();
         param1.readString();
         this.var_2492 = param1.readInteger();
         this.var_2491 = param1.readString();
         this.var_2495 = param1.readString();
         this.var_1610 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2426;
      }
      
      public function get avatarName() : String
      {
         return this.var_1817;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2494;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2493;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2496;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2492;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2491;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2495;
      }
      
      public function get realName() : String
      {
         return this.var_1610;
      }
   }
}
