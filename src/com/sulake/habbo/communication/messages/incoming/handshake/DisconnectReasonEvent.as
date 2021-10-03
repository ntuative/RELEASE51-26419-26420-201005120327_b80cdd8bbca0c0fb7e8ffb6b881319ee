package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1503:int = 5;
      
      public static const const_1609:int = 113;
      
      public static const const_1668:int = 29;
      
      public static const const_1610:int = 0;
      
      public static const const_1527:int = 102;
      
      public static const const_1597:int = 25;
      
      public static const const_1557:int = 20;
      
      public static const const_1542:int = 116;
      
      public static const const_1524:int = 114;
      
      public static const const_1566:int = 101;
      
      public static const const_1627:int = 108;
      
      public static const const_1651:int = 112;
      
      public static const const_1626:int = 100;
      
      public static const const_1584:int = 24;
      
      public static const const_1395:int = 10;
      
      public static const const_1653:int = 111;
      
      public static const const_1642:int = 23;
      
      public static const const_1675:int = 26;
      
      public static const const_1376:int = 2;
      
      public static const const_1657:int = 22;
      
      public static const const_1541:int = 17;
      
      public static const const_1571:int = 18;
      
      public static const const_1471:int = 3;
      
      public static const const_1499:int = 109;
      
      public static const const_1183:int = 1;
      
      public static const const_1530:int = 103;
      
      public static const const_1683:int = 11;
      
      public static const const_1570:int = 28;
      
      public static const const_1555:int = 104;
      
      public static const const_1522:int = 13;
      
      public static const const_1666:int = 107;
      
      public static const const_1509:int = 27;
      
      public static const const_1622:int = 118;
      
      public static const const_1486:int = 115;
      
      public static const const_1495:int = 16;
      
      public static const const_1605:int = 19;
      
      public static const const_1671:int = 4;
      
      public static const const_1568:int = 105;
      
      public static const const_1551:int = 117;
      
      public static const const_1649:int = 119;
      
      public static const const_1682:int = 106;
      
      public static const const_1579:int = 12;
      
      public static const const_1647:int = 110;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_7 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(reason)
         {
            case const_1183:
            case const_1395:
               return "banned";
            case const_1376:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
