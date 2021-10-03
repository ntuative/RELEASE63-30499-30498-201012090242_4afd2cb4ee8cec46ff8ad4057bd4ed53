package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_1974:Boolean;
      
      private var var_1975:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         this.var_1974 = Boolean(parseInt(param1.@club));
         this.var_1975 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return this.var_1974;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_1975;
      }
   }
}
