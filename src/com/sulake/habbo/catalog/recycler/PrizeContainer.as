package com.sulake.habbo.catalog.recycler
{
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   
   public class PrizeContainer extends PrizeGridItem
   {
       
      
      private var var_2085:String;
      
      private var var_1527:int;
      
      private var var_2084:int;
      
      private var _furnitureData:IFurnitureData;
      
      private var var_2625:PrizeGridItem;
      
      public function PrizeContainer(param1:String, param2:int, param3:IFurnitureData, param4:int)
      {
         super();
         this.var_2085 = param1;
         this.var_1527 = param2;
         this._furnitureData = param3;
         this.var_2084 = param4;
      }
      
      public function setIcon(param1:IRoomEngine) : void
      {
         initProductIcon(param1,this._furnitureData.type,this.var_1527);
      }
      
      public function get productItemType() : String
      {
         return this.var_2085;
      }
      
      public function get productItemTypeId() : int
      {
         return this.var_1527;
      }
      
      public function get gridItem() : PrizeGridItem
      {
         return this.var_2625;
      }
      
      public function get oddsLevelId() : int
      {
         return this.var_2084;
      }
      
      public function get title() : String
      {
         if(this._furnitureData == null)
         {
            return "";
         }
         return this._furnitureData.title;
      }
   }
}
