package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2434:String;
      
      private var var_2435:Class;
      
      private var var_2436:Class;
      
      private var var_1739:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2434 = param1;
         this.var_2435 = param2;
         this.var_2436 = param3;
         if(rest == null)
         {
            this.var_1739 = new Array();
         }
         else
         {
            this.var_1739 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2434;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2435;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2436;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1739;
      }
   }
}
