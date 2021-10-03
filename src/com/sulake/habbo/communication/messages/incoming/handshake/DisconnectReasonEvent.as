package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1758:int = 0;
      
      public static const const_1397:int = 1;
      
      public static const const_1491:int = 2;
      
      public static const const_1700:int = 3;
      
      public static const const_1755:int = 4;
      
      public static const const_1651:int = 5;
      
      public static const const_1260:int = 10;
      
      public static const const_1693:int = 11;
      
      public static const const_1718:int = 12;
      
      public static const const_1681:int = 13;
      
      public static const const_1608:int = 16;
      
      public static const const_1635:int = 17;
      
      public static const const_1785:int = 18;
      
      public static const const_1603:int = 19;
      
      public static const const_1669:int = 20;
      
      public static const const_1709:int = 22;
      
      public static const const_1680:int = 23;
      
      public static const const_1677:int = 24;
      
      public static const const_1617:int = 25;
      
      public static const const_1685:int = 26;
      
      public static const const_1601:int = 27;
      
      public static const const_1679:int = 28;
      
      public static const const_1714:int = 29;
      
      public static const const_1784:int = 100;
      
      public static const const_1775:int = 101;
      
      public static const const_1641:int = 102;
      
      public static const const_1673:int = 103;
      
      public static const const_1793:int = 104;
      
      public static const const_1761:int = 105;
      
      public static const const_1747:int = 106;
      
      public static const const_1686:int = 107;
      
      public static const const_1655:int = 108;
      
      public static const const_1737:int = 109;
      
      public static const const_1613:int = 110;
      
      public static const const_1666:int = 111;
      
      public static const const_1584:int = 112;
      
      public static const const_1689:int = 113;
      
      public static const const_1698:int = 114;
      
      public static const const_1706:int = 115;
      
      public static const const_1582:int = 116;
      
      public static const const_1622:int = 117;
      
      public static const const_1645:int = 118;
      
      public static const const_1599:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1397:
            case const_1260:
               return "banned";
            case const_1491:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
