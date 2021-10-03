package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1513:int;
      
      private var var_2135:int;
      
      private var var_2138:int;
      
      private var var_2139:int;
      
      private var _energy:int;
      
      private var var_2133:int;
      
      private var _nutrition:int;
      
      private var var_2134:int;
      
      private var _petRespect:int;
      
      private var _name:String = "";
      
      private var var_1539:int = -1;
      
      private var _type:int;
      
      private var var_1983:int;
      
      private var var_38:BitmapData;
      
      private var var_2137:Boolean;
      
      private var var_2141:int;
      
      private var _ownerName:String;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var var_2140:int;
      
      private var var_2136:int;
      
      public function InfoStandPetData()
      {
         super();
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get id() : int
      {
         return this.var_1539;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get race() : int
      {
         return this.var_1983;
      }
      
      public function get image() : BitmapData
      {
         return this.var_38;
      }
      
      public function get isOwnPet() : Boolean
      {
         return this.var_2137;
      }
      
      public function get ownerId() : int
      {
         return this.var_2141;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return this._canOwnerBeKicked;
      }
      
      public function get age() : int
      {
         return this.var_2136;
      }
      
      public function get level() : int
      {
         return this.var_1513;
      }
      
      public function get levelMax() : int
      {
         return this.var_2135;
      }
      
      public function get experience() : int
      {
         return this.var_2138;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2139;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2133;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2134;
      }
      
      public function get petRespect() : int
      {
         return this._petRespect;
      }
      
      public function get roomIndex() : int
      {
         return this.var_2140;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         this._name = param1.name;
         this.var_1539 = param1.id;
         this._type = param1.petType;
         this.var_1983 = param1.method_11;
         this.var_38 = param1.image;
         this.var_2137 = param1.isOwnPet;
         this.var_2141 = param1.ownerId;
         this._ownerName = param1.ownerName;
         this._canOwnerBeKicked = param1.canOwnerBeKicked;
         this.var_1513 = param1.level;
         this.var_2135 = param1.levelMax;
         this.var_2138 = param1.experience;
         this.var_2139 = param1.experienceMax;
         this._energy = param1.energy;
         this.var_2133 = param1.energyMax;
         this._nutrition = param1.nutrition;
         this.var_2134 = param1.nutritionMax;
         this._petRespect = param1.petRespect;
         this.var_2140 = param1.roomIndex;
         this.var_2136 = param1.age;
      }
   }
}
