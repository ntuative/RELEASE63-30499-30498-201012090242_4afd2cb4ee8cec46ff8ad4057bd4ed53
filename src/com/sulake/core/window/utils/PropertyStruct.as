package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_174:String = "hex";
      
      public static const const_53:String = "int";
      
      public static const const_308:String = "uint";
      
      public static const const_203:String = "Number";
      
      public static const const_50:String = "Boolean";
      
      public static const const_88:String = "String";
      
      public static const const_252:String = "Point";
      
      public static const const_253:String = "Rectangle";
      
      public static const const_145:String = "Array";
      
      public static const const_245:String = "Map";
       
      
      private var var_575:String;
      
      private var var_163:Object;
      
      private var _type:String;
      
      private var var_2416:Boolean;
      
      private var var_2640:Boolean;
      
      private var var_2417:Array;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean, param5:Array = null)
      {
         super();
         this.var_575 = param1;
         this.var_163 = param2;
         this._type = param3;
         this.var_2416 = param4;
         this.var_2640 = param3 == const_245 || param3 == const_145 || param3 == const_252 || param3 == const_253;
         this.var_2417 = param5;
      }
      
      public function get key() : String
      {
         return this.var_575;
      }
      
      public function get value() : Object
      {
         return this.var_163;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get valid() : Boolean
      {
         return this.var_2416;
      }
      
      public function get range() : Array
      {
         return this.var_2417;
      }
      
      public function toString() : String
      {
         switch(this._type)
         {
            case const_174:
               return "0x" + uint(this.var_163).toString(16);
            case const_50:
               return Boolean(this.var_163) == true ? "true" : "false";
            case const_252:
               return "Point(" + Point(this.var_163).x + ", " + Point(this.var_163).y + ")";
            case const_253:
               return "Rectangle(" + Rectangle(this.var_163).x + ", " + Rectangle(this.var_163).y + ", " + Rectangle(this.var_163).width + ", " + Rectangle(this.var_163).height + ")";
            default:
               return String(this.value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(this._type)
         {
            case const_245:
               _loc3_ = this.var_163 as Map;
               _loc1_ = "<var key=\"" + this.var_575 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_145:
               _loc4_ = this.var_163 as Array;
               _loc1_ = "<var key=\"" + this.var_575 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_252:
               _loc5_ = this.var_163 as Point;
               _loc1_ = "<var key=\"" + this.var_575 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_53 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_53 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_253:
               _loc6_ = this.var_163 as Rectangle;
               _loc1_ = "<var key=\"" + this.var_575 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_53 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_53 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_53 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_53 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_174:
               _loc1_ = "<var key=\"" + this.var_575 + "\" value=\"" + "0x" + uint(this.var_163).toString(16) + "\" type=\"" + this._type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + this.var_575 + "\" value=\"" + this.var_163 + "\" type=\"" + this._type + "\" />";
         }
         return _loc1_;
      }
   }
}
