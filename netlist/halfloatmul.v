/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP4
// Date      : Mon Dec  2 14:41:02 2019
/////////////////////////////////////////////////////////////


module compute_DW01_add_1 ( A, B, CI, SUM, CO );
  input [5:0] A;
  input [5:0] B;
  output [5:0] SUM;
  input CI;
  output CO;
  wire   n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253;

  XNOR2X1_RVT U52 ( .A1(n253), .A2(n249), .Y(SUM[4]) );
  INVX0_HVT U53 ( .A(n250), .Y(n251) );
  AO21X1_RVT U54 ( .A1(n248), .A2(n247), .A3(n246), .Y(n253) );
  NAND2X0_RVT U55 ( .A1(B[4]), .A2(A[4]), .Y(n250) );
  NAND2X0_HVT U57 ( .A1(B[3]), .A2(A[3]), .Y(n243) );
  NAND2X0_HVT U58 ( .A1(n252), .A2(n250), .Y(n249) );
  NOR2X0_HVT U59 ( .A1(n244), .A2(n242), .Y(n247) );
  OAI21X1_HVT U60 ( .A1(n245), .A2(n244), .A3(n243), .Y(n246) );
  OR2X1_HVT U61 ( .A1(B[4]), .A2(A[4]), .Y(n252) );
  NAND2X0_RVT U62 ( .A1(A[0]), .A2(B[0]), .Y(n241) );
  NAND2X0_RVT U63 ( .A1(B[1]), .A2(A[1]), .Y(n239) );
  OAI21X1_RVT U64 ( .A1(n241), .A2(n240), .A3(n239), .Y(n248) );
  NAND2X0_RVT U67 ( .A1(B[2]), .A2(A[2]), .Y(n245) );
  AO21X1_RVT U68 ( .A1(n253), .A2(n252), .A3(n251), .Y(SUM[5]) );
  NOR2X0_RVT U56 ( .A1(B[1]), .A2(A[1]), .Y(n240) );
  NOR2X0_RVT U66 ( .A1(B[2]), .A2(A[2]), .Y(n242) );
  NOR2X0_RVT U65 ( .A1(A[3]), .A2(B[3]), .Y(n244) );
endmodule


module compute_DW01_add_2 ( A, B, CI, SUM, CO );
  input [5:0] A;
  input [5:0] B;
  output [5:0] SUM;
  input CI;
  output CO;
  wire   n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284;

  XOR3X1_RVT U67 ( .A1(B[4]), .A2(A[4]), .A3(n284), .Y(SUM[4]) );
  XOR3X1_RVT U68 ( .A1(A[3]), .A2(B[3]), .A3(n275), .Y(SUM[3]) );
  AO221X1_RVT U69 ( .A1(n280), .A2(A[2]), .A3(n280), .A4(B[2]), .A5(n279), .Y(
        n281) );
  NAND2X0_RVT U70 ( .A1(B[0]), .A2(A[0]), .Y(n277) );
  OA21X1_RVT U71 ( .A1(A[0]), .A2(B[0]), .A3(n277), .Y(SUM[0]) );
  OA22X1_RVT U72 ( .A1(A[2]), .A2(B[2]), .A3(n271), .A4(n283), .Y(n270) );
  OR2X1_HVT U73 ( .A1(A[3]), .A2(B[3]), .Y(n282) );
  AND2X1_RVT U74 ( .A1(n270), .A2(n282), .Y(n273) );
  OA22X1_RVT U75 ( .A1(A[2]), .A2(B[2]), .A3(n283), .A4(n271), .Y(n275) );
  AND2X1_RVT U76 ( .A1(B[2]), .A2(A[2]), .Y(n283) );
  AO22X1_RVT U77 ( .A1(n278), .A2(A[1]), .A3(B[1]), .A4(n272), .Y(n271) );
  OA22X1_RVT U79 ( .A1(B[4]), .A2(A[4]), .A3(n274), .A4(n273), .Y(n276) );
  AO21X1_RVT U80 ( .A1(B[4]), .A2(A[4]), .A3(n279), .Y(n274) );
  INVX1_RVT U81 ( .A(n277), .Y(n278) );
  AND2X1_RVT U82 ( .A1(A[3]), .A2(B[3]), .Y(n279) );
  HADDX1_RVT U83 ( .A0(B[5]), .B0(n276), .C1(), .SO(SUM[5]) );
  FADDX1_RVT U84 ( .A(A[1]), .B(B[1]), .CI(n278), .CO(n280), .S(SUM[1]) );
  XOR3X2_RVT U85 ( .A1(B[2]), .A2(A[2]), .A3(n280), .Y(SUM[2]) );
  OA21X1_RVT U86 ( .A1(n283), .A2(n281), .A3(n282), .Y(n284) );
  OR2X1_HVT U78 ( .A1(A[1]), .A2(n278), .Y(n272) );
endmodule


module compute_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [5:0] A;
  input [5:0] B;
  output [5:0] DIFF;
  input CI;
  output CO;
  wire   n213, n214, n215, n216, n217, n218, n219, n220, n221;

  XNOR2X1_RVT U37 ( .A1(n221), .A2(A[4]), .Y(DIFF[4]) );
  XNOR2X1_RVT U38 ( .A1(n214), .A2(n213), .Y(DIFF[1]) );
  INVX0_RVT U39 ( .A(DIFF[0]), .Y(n213) );
  INVX0_RVT U40 ( .A(A[0]), .Y(DIFF[0]) );
  INVX0_RVT U41 ( .A(A[1]), .Y(n214) );
  OR2X1_RVT U42 ( .A1(n218), .A2(n219), .Y(n215) );
  NAND2X0_RVT U44 ( .A1(A[1]), .A2(A[0]), .Y(n217) );
  INVX1_RVT U45 ( .A(n217), .Y(n216) );
  INVX1_RVT U46 ( .A(A[2]), .Y(n218) );
  INVX1_RVT U47 ( .A(A[3]), .Y(n219) );
  NOR2X0_RVT U48 ( .A1(n217), .A2(n215), .Y(n221) );
  XNOR2X2_RVT U49 ( .A1(n216), .A2(n218), .Y(DIFF[2]) );
  OR2X1_RVT U50 ( .A1(n218), .A2(n217), .Y(n220) );
  XOR2X2_RVT U51 ( .A1(n220), .A2(n219), .Y(DIFF[3]) );
  NOR2X0_RVT U43 ( .A1(A[4]), .A2(n221), .Y(DIFF[5]) );
endmodule


module compute_DW_mult_uns_0_0_0 ( a, b, product, IN0, IN1 );
  input [10:0] a;
  input [10:0] b;
  output [21:0] product;
  input IN0, IN1;
  wire   n63, n64, n65, n66, n180, n181, n192, n193, n342, n343, n345, n504,
         n516, n517, n518, n522, n523, n524, n525, n526, n530, n531, n533,
         n540, n541, n543, n550, n564, n565, n572, n573, n578, n579, n584,
         n585, n588, n619, n652, n692, n693, n694, n695, n705, n706, n707,
         n708, n718, n719, n917, n918, n931, n1128, n1129, n1130, n1134, n1138,
         n1140, n1141, n1142, n1143, n1144, n1145, n1146, n1147, n1148, n1149,
         n1150, n1151, n1153, n1154, n1155, n1156, n1157, n1158, n1159, n1160,
         n1161, n1162, n1163, n1164, n1165, n1166, n1167, n1168, n1170, n1171,
         n1172, n1173, n1174, n1175, n1176, n1177, n1178, n1179, n1180, n1181,
         n1182, n1183, n1184, n1185, n1186, n1187, n1188, n1189, n1190, n1191,
         n1192, n1193, n1194, n1196, n1197, n1198, n1200, n1201, n1202, n1203,
         n1204, n1205, n1206, n1207, n1208, n1209, n1210, n1211, n1212, n1213,
         n1214, n1215, n1216, n1217, n1218, n1219, n1220, n1221, n1222, n1223,
         n1224, n1225, n1226, n1227, n1228, n1229, n1230, n1231, n1232, n1233,
         n1234, n1235, n1236, n1237, n1238, n1239, n1240, n1241, n1242, n1243,
         n1244, n1245, n1246, n1247, n1248, n1249, n1250, n1251, n1252, n1253,
         n1254, n1255, n1256, n1257, n1258, n1259, n1260, n1261, n1262, n1263,
         n1264, n1265, n1266, n1267, n1268, n1269, n1270, n1271, n1272, n1273,
         n1274, n1275, n1276, n1277, n1278, n1279, n1280, n1281, n1282, n1283,
         n1284, n1285, n1286, n1287, n1288, n1289, n1290, n1291, n1292, n1293,
         n1294, n1295, n1296, n1297, n1298, n1299, n1300, n1301, n1302, n1303,
         n1304, n1305, n1306, n1307, n1308, n1309, n1310, n1311, n1312, n1313,
         n1314, n1315, n1316, n1317, n1318, n1319, n1320, n1321, n1322, n1323,
         n1324, n1325, n1326, n1327, n1328, n1329, n1330, n1331, n1332, n1333,
         n1334, n1335, n1336, n1337, n1338, n1339, n1340, n1341, n1342, n1343,
         n1344, n1345, n1346, n1347, n1348, n1349, n1350, n1351, n1352, n1353,
         n1354, n1355, n1356, n1357, n1358, n1359, n1360, n1361, n1362, n1363,
         n1364, n1365, n1366, n1367, n1368, n1369, n1370, n1371, n1372, n1373,
         n1374, n1375, n1376, n1377, n1378, n1379, n1380, n1381, n1382, n1383,
         n1384, n1385, n1386, n1387, n1388, n1389, n1390, n1391, n1392, n1393,
         n1394, n1395, n1396, n1397, n1398, n1399, n1400, n1401, n1402, n1403,
         n1404, n1405, n1406, n1407, n1408, n1409, n1410, n1411, n1412, n1413,
         n1414, n1415, n1416, n1417, n1418, n1419, n1420, n1421, n1422, n1423,
         n1424, n1425, n1426, n1427, n1428, n1429, n1430, n1431, n1432, n1433,
         n1434, n1435, n1436, n1437, n1438, n1439, n1440, n1441, n1442, n1443,
         n1444, n1445, n1446, n1447, n1448, n1449, n1450, n1451, n1452, n1453,
         n1454, n1455, n1456, n1457, n1458, n1459, n1460, n1461, n1462, n1463,
         n1464, n1465, n1466, n1467, n1468, n1469, n1470, n1471, n1472, n1473,
         n1474, n1475, n1476, n1477, n1478, n1479, n1480, n1481, n1482, n1483,
         n1484, n1485, n1486, n1487, n1488, n1489, n1490, n1491, n1492, n1493,
         n1494, n1495, n1496, n1497, n1498, n1499, n1500, n1501, n1502, n1503,
         n1504, n1505, n1507, n1508, n1509, n1510, n1511, n1512, n1513, n1514,
         n1515, n1516, n1517, n1518, n1519, n1520, n1521, n1522, n1523, n1524,
         n1525, n1526, n1527, n1528, n1529, n1530, n1531, n1532, n1533, n1534,
         n1535, n1536, n1537, n1538, n1539, n1540, n1541, n1542, n1543, n1544,
         n1545, n1546, n1547, n1548, n1549, n1550, n1551, n1552, n1553, n1554,
         n1555, n1556, n1557, n1558, n1559, n1560, n1561, n1562, n1563, n1564,
         n1565, n1567, n1568, n1569, n1570, n1571, n1572, n1573, n1574, n1575,
         n1576, n1577, n1578, n1579, n1580, n1581, n1582, n1583, n1584, n1585,
         n1586, n1587, n1588, n1589, n1590, n1591, n1592, n1593, n1594, n1595,
         n1596, n1597, n1598, n1599, n1600, n1601, n1602, n1603, n1604, n1605,
         n1606, n1607, n1608, n1609, n1610, n1611, n1612, n1613, n1614, n1615,
         n1616, n1617, n1618, n1619, n1620, n1621, n1622, n1623, n1624, n1625,
         n1626, n1627, n1628, n1629, n1631, n1632, n1635, n1638, n1642, n1644,
         n1651, n1661, n1662, n1663, n1664, n1665, n1666, n1667, n1668, n1669,
         n1670, n1671, n1672, n1673, n1674, n1675, n1676;

  DFFASX1_RVT R_940 ( .D(n1638), .CLK(IN0), .SETB(IN1), .Q(n1651), .QN() );
  DFFASX1_RVT R_858 ( .D(n1631), .CLK(IN0), .SETB(IN1), .Q(n694), .QN() );
  DFFASX1_RVT R_477 ( .D(n1663), .CLK(IN0), .SETB(IN1), .Q(), .QN(n1146) );
  DFFASX1_RVT R_478 ( .D(n65), .CLK(IN0), .SETB(IN1), .Q(), .QN(n1154) );
  DFFARX1_RVT R_797 ( .D(n1623), .CLK(IN0), .RSTB(IN1), .Q(n1625), .QN() );
  DFFASX1_RVT R_1232 ( .D(n1619), .CLK(IN0), .SETB(IN1), .Q(n1661), .QN() );
  DFFASX1_RVT R_924 ( .D(n1618), .CLK(IN0), .SETB(IN1), .Q(n719), .QN() );
  DFFASX1_RVT R_936 ( .D(n1617), .CLK(IN0), .SETB(IN1), .Q(n708), .QN() );
  DFFARX1_RVT R_780 ( .D(n1616), .CLK(IN0), .RSTB(IN1), .Q(), .QN(n1671) );
  DFFASX1_RVT R_935 ( .D(n1218), .CLK(IN0), .SETB(IN1), .Q(n1622), .QN(n1171)
         );
  DFFARX1_RVT R_800 ( .D(n1614), .CLK(IN0), .RSTB(IN1), .Q(n1158), .QN(n1173)
         );
  DFFARX1_RVT R_823 ( .D(n1613), .CLK(IN0), .RSTB(IN1), .Q(), .QN(n1129) );
  DFFASX1_RVT R_860 ( .D(n1612), .CLK(IN0), .SETB(IN1), .Q(n707), .QN() );
  DFFASX1_RVT R_941 ( .D(n1611), .CLK(IN0), .SETB(IN1), .Q(n718), .QN() );
  DFFASX1_RVT R_979 ( .D(n1610), .CLK(IN0), .SETB(IN1), .Q(n706), .QN() );
  DFFASX1_RVT R_987 ( .D(n1609), .CLK(IN0), .SETB(IN1), .Q(n543), .QN() );
  DFFASX1_RVT R_989 ( .D(n1608), .CLK(IN0), .SETB(IN1), .Q(n533), .QN() );
  DFFARX1_RVT R_998 ( .D(n1607), .CLK(IN0), .RSTB(IN1), .Q(n1140), .QN() );
  DFFARX1_RVT R_1020 ( .D(n1606), .CLK(IN0), .RSTB(IN1), .Q(n516), .QN() );
  DFFARX1_RVT R_1021 ( .D(n1605), .CLK(IN0), .RSTB(IN1), .Q(n517), .QN() );
  DFFARX1_RVT R_1022 ( .D(n1604), .CLK(IN0), .RSTB(IN1), .Q(n524), .QN() );
  DFFARX1_RVT R_1023 ( .D(n1603), .CLK(IN0), .RSTB(IN1), .Q(n525), .QN() );
  DFFARX1_RVT R_1024 ( .D(n1602), .CLK(IN0), .RSTB(IN1), .Q(n526), .QN() );
  DFFARX1_RVT R_1026 ( .D(n1601), .CLK(IN0), .RSTB(IN1), .Q(n530), .QN() );
  DFFARX1_RVT R_1027 ( .D(n1600), .CLK(IN0), .RSTB(IN1), .Q(n531), .QN(n1162)
         );
  DFFASX1_RVT R_1029 ( .D(n1599), .CLK(IN0), .SETB(IN1), .Q(n541), .QN() );
  DFFARX1_RVT R_1030 ( .D(n1598), .CLK(IN0), .RSTB(IN1), .Q(n550), .QN() );
  DFFARX1_RVT R_1031 ( .D(n1597), .CLK(IN0), .RSTB(IN1), .Q(n1134), .QN() );
  DFFARX1_RVT R_1032 ( .D(n1596), .CLK(IN0), .RSTB(IN1), .Q(), .QN(n1673) );
  DFFARX1_RVT R_1033 ( .D(n1595), .CLK(IN0), .RSTB(IN1), .Q(n1138), .QN() );
  DFFARX1_RVT R_1034 ( .D(n1594), .CLK(IN0), .RSTB(IN1), .Q(n564), .QN() );
  DFFARX1_RVT R_1035 ( .D(n1593), .CLK(IN0), .RSTB(IN1), .Q(n565), .QN() );
  DFFARX1_RVT R_1036 ( .D(n1592), .CLK(IN0), .RSTB(IN1), .Q(n572), .QN() );
  DFFARX1_RVT R_1037 ( .D(n1591), .CLK(IN0), .RSTB(IN1), .Q(n573), .QN() );
  DFFARX1_RVT R_1038 ( .D(n1590), .CLK(IN0), .RSTB(IN1), .Q(n578), .QN() );
  DFFARX1_RVT R_1039 ( .D(n1589), .CLK(IN0), .RSTB(IN1), .Q(n579), .QN() );
  DFFARX1_RVT R_1040 ( .D(n1588), .CLK(IN0), .RSTB(IN1), .Q(n584), .QN() );
  DFFARX1_RVT R_1041 ( .D(n1587), .CLK(IN0), .RSTB(IN1), .Q(n585), .QN() );
  DFFARX1_RVT R_1042 ( .D(n1586), .CLK(IN0), .RSTB(IN1), .Q(n588), .QN() );
  DFFASX1_RVT R_1046 ( .D(n1583), .CLK(IN0), .SETB(IN1), .Q(n652), .QN() );
  DFFARX1_RVT R_1055 ( .D(n1582), .CLK(IN0), .RSTB(IN1), .Q(n522), .QN() );
  DFFASX1_RVT R_1056 ( .D(n1581), .CLK(IN0), .SETB(IN1), .Q(n523), .QN() );
  DFFASX1_RVT R_1178 ( .D(n1662), .CLK(IN0), .SETB(IN1), .Q(n1145), .QN(n1164)
         );
  DFFASX1_RVT R_1179 ( .D(n66), .CLK(IN0), .SETB(IN1), .Q(n1149), .QN(n1165)
         );
  DFFASX1_RVT R_1203 ( .D(n1580), .CLK(IN0), .SETB(IN1), .Q(n345), .QN() );
  DFFASX1_RVT R_1209 ( .D(n193), .CLK(IN0), .SETB(IN1), .Q(n1578), .QN() );
  DFFASX1_RVT R_1214 ( .D(n180), .CLK(IN0), .SETB(IN1), .Q(n1577), .QN() );
  DFFASX1_RVT R_1215 ( .D(n181), .CLK(IN0), .SETB(IN1), .Q(n1576), .QN() );
  DFFARX1_RVT R_1220 ( .D(n1575), .CLK(IN0), .RSTB(IN1), .Q(n504), .QN(n1568)
         );
  DFFASX1_RVT R_1230 ( .D(n1574), .CLK(IN0), .SETB(IN1), .Q(n343), .QN() );
  DFFARX1_RVT R_1234 ( .D(n1573), .CLK(IN0), .RSTB(IN1), .Q(n619), .QN() );
  DFFASX1_RVT R_1233 ( .D(n1142), .CLK(IN0), .SETB(IN1), .Q(n917), .QN() );
  DFFARX1_HVT R_978_IP ( .D(b[9]), .CLK(IN0), .RSTB(IN1), .Q(), .QN(n693) );
  DFFASRX1_HVT R_590_IP ( .D(n1629), .CLK(IN0), .RSTB(1'b1), .SETB(IN1), .Q(), 
        .QN(n1626) );
  DFFARX1_RVT R_937_IP ( .D(n1627), .CLK(IN0), .RSTB(IN1), .Q(n1615), .QN(n918) );
  DFFASX1_RVT R_1028_IP ( .D(n1565), .CLK(IN0), .SETB(IN1), .Q(n1163), .QN(
        n540) );
  DFFARX1_RVT R_1225_IP ( .D(n1208), .CLK(IN0), .RSTB(IN1), .Q(n1571), .QN(
        n342) );
  DFFASX1_HVT R_939 ( .D(n1632), .CLK(IN0), .SETB(IN1), .Q(n692), .QN() );
  DFFASX1_HVT R_480 ( .D(n63), .CLK(IN0), .SETB(IN1), .Q(n1620), .QN() );
  DFFASX1_HVT R_1208 ( .D(n192), .CLK(IN0), .SETB(IN1), .Q(n1579), .QN() );
  DFFARX1_HVT R_898_IP ( .D(n1205), .CLK(IN0), .RSTB(IN1), .Q(n1570), .QN(n705) );
  DFFASX1_HVT R_1237 ( .D(n1567), .CLK(IN0), .SETB(IN1), .Q(n1572), .QN() );
  OAI22X1_HVT U521 ( .A1(n1533), .A2(n1403), .A3(n1333), .A4(n1534), .Y(n1406)
         );
  OAI22X1_HVT U522 ( .A1(n1415), .A2(n1374), .A3(n1373), .A4(n1412), .Y(n1388)
         );
  OAI21X1_RVT U523 ( .A1(n1468), .A2(n1469), .A3(a[3]), .Y(n1477) );
  XOR2X1_HVT U524 ( .A1(b[9]), .A2(n1491), .Y(n1371) );
  OAI22X1_RVT U525 ( .A1(n1218), .A2(n1378), .A3(n1295), .A4(n1377), .Y(n1441)
         );
  NAND2X1_RVT U526 ( .A1(n1223), .A2(n1533), .Y(n1534) );
  XOR2X1_HVT U527 ( .A1(b[3]), .A2(n1470), .Y(n1390) );
  XOR2X1_RVT U528 ( .A1(b[10]), .A2(n1491), .Y(n1372) );
  XNOR2X1_HVT U529 ( .A1(n1419), .A2(n1638), .Y(n1291) );
  XNOR2X1_RVT U532 ( .A1(n1318), .A2(n1620), .Y(product[21]) );
  XNOR2X1_RVT U534 ( .A1(a[3]), .A2(n1209), .Y(n1210) );
  XOR3X1_RVT U535 ( .A1(n530), .A2(n525), .A3(n523), .Y(n1519) );
  OAI22X1_RVT U536 ( .A1(n1642), .A2(n1369), .A3(n1290), .A4(n1628), .Y(n1444)
         );
  INVX1_RVT U538 ( .A(n1475), .Y(n1502) );
  XOR2X2_RVT U539 ( .A1(a[10]), .A2(a[9]), .Y(n1128) );
  FADDX1_RVT U541 ( .A(n1337), .B(n1336), .CI(n1335), .CO(n1586), .S(n1585) );
  FADDX1_RVT U542 ( .A(n1488), .B(n1487), .CI(n1486), .CO(n1484), .S(n1613) );
  INVX0_HVT U543 ( .A(n1176), .Y(n1455) );
  INVX0_RVT U544 ( .A(n1192), .Y(n1522) );
  INVX0_HVT U545 ( .A(n1425), .Y(n1365) );
  NAND2X0_RVT U547 ( .A1(n1203), .A2(n343), .Y(n1326) );
  INVX0_HVT U548 ( .A(n1356), .Y(n1310) );
  INVX0_HVT U549 ( .A(n1357), .Y(n1359) );
  INVX0_HVT U551 ( .A(n1533), .Y(n1212) );
  INVX0_HVT U552 ( .A(n1472), .Y(n1474) );
  INVX1_HVT U553 ( .A(a[0]), .Y(n1141) );
  INVX1_HVT U554 ( .A(a[4]), .Y(n1222) );
  XNOR2X1_RVT U559 ( .A1(b[5]), .A2(a[9]), .Y(n1472) );
  INVX0_HVT U561 ( .A(n1546), .Y(n1548) );
  INVX0_RVT U562 ( .A(n1309), .Y(n1355) );
  XNOR2X1_HVT U563 ( .A1(n1323), .A2(n1322), .Y(product[6]) );
  INVX0_RVT U564 ( .A(n1551), .Y(n1302) );
  INVX0_RVT U565 ( .A(n1516), .Y(n1159) );
  OAI22X1_RVT U570 ( .A1(n1332), .A2(n1619), .A3(n1419), .A4(n1142), .Y(n1380)
         );
  INVX0_RVT U573 ( .A(n1466), .Y(n1467) );
  OR2X1_RVT U574 ( .A1(n1423), .A2(n1422), .Y(n1542) );
  INVX0_RVT U576 ( .A(n1306), .Y(n1521) );
  OAI21X1_RVT U579 ( .A1(n1537), .A2(n1425), .A3(n1424), .Y(n1543) );
  FADDX1_RVT U580 ( .A(n1344), .B(n1343), .CI(n1342), .CO(n1614), .S(n1549) );
  OAI22X1_HVT U582 ( .A1(n1533), .A2(n1471), .A3(n1493), .A4(n1534), .Y(n1482)
         );
  OAI22X1_HVT U583 ( .A1(n1642), .A2(n1347), .A3(n1465), .A4(n1628), .Y(n1348)
         );
  OAI22X1_HVT U584 ( .A1(n1533), .A2(n1493), .A3(n1492), .A4(n1534), .Y(n1504)
         );
  OAI22X1_HVT U585 ( .A1(n1642), .A2(n1465), .A3(n1495), .A4(n1628), .Y(n1497)
         );
  OAI22X1_HVT U586 ( .A1(n1642), .A2(n1618), .A3(n1347), .A4(n1628), .Y(n1341)
         );
  OAI22X1_RVT U587 ( .A1(n1642), .A2(n1495), .A3(n1494), .A4(n1628), .Y(n1503)
         );
  OAI22X1_RVT U588 ( .A1(n1218), .A2(n1225), .A3(n1224), .A4(n1377), .Y(n1490)
         );
  OAI22X1_HVT U589 ( .A1(n1415), .A2(n1289), .A3(n1393), .A4(n1412), .Y(n1399)
         );
  OAI22X1_HVT U590 ( .A1(n1415), .A2(n1393), .A3(n1414), .A4(n1412), .Y(n1432)
         );
  OAI22X1_HVT U591 ( .A1(n1533), .A2(n1390), .A3(n1404), .A4(n1534), .Y(n1433)
         );
  OAI22X1_HVT U592 ( .A1(n1415), .A2(n1414), .A3(n1413), .A4(n1412), .Y(n1429)
         );
  OAI22X1_HVT U593 ( .A1(n1533), .A2(n1404), .A3(n1403), .A4(n1534), .Y(n1418)
         );
  OAI22X1_HVT U594 ( .A1(n1415), .A2(n1413), .A3(n1331), .A4(n1412), .Y(n1336)
         );
  OAI22X1_HVT U595 ( .A1(n1415), .A2(n1331), .A3(n1214), .A4(n1412), .Y(n1342)
         );
  OAI22X1_HVT U596 ( .A1(n1415), .A2(n1226), .A3(n1374), .A4(n1412), .Y(n1486)
         );
  INVX0_RVT U597 ( .A(n1320), .Y(n1313) );
  NAND2X2_RVT U598 ( .A1(n1210), .A2(n1415), .Y(n1412) );
  OAI22X1_HVT U599 ( .A1(n1411), .A2(n1389), .A3(n1410), .A4(n1408), .Y(n1434)
         );
  OAI22X1_HVT U600 ( .A1(n1141), .A2(n1410), .A3(n1409), .A4(n1408), .Y(n1430)
         );
  OAI22X1_HVT U601 ( .A1(n1411), .A2(n1297), .A3(n1389), .A4(n1408), .Y(n1394)
         );
  OAI22X1_HVT U602 ( .A1(n1141), .A2(n1371), .A3(n1297), .A4(n1408), .Y(n1440)
         );
  OAI22X1_RVT U603 ( .A1(n1218), .A2(n1617), .A3(n1338), .A4(n1377), .Y(n1340)
         );
  OAI22X1_RVT U604 ( .A1(n1218), .A2(n1338), .A3(n1472), .A4(n1377), .Y(n1476)
         );
  OAI22X1_HVT U605 ( .A1(n1141), .A2(n1330), .A3(n1213), .A4(n1408), .Y(n1343)
         );
  INVX0_RVT U609 ( .A(n1171), .Y(n1172) );
  INVX1_RVT U612 ( .A(n1129), .Y(n1130) );
  INVX2_HVT U616 ( .A(b[4]), .Y(n1392) );
  XNOR2X2_RVT U617 ( .A1(a[2]), .A2(a[1]), .Y(n1415) );
  INVX1_HVT U618 ( .A(b[9]), .Y(n1345) );
  INVX2_HVT U620 ( .A(b[1]), .Y(n1332) );
  INVX2_HVT U621 ( .A(a[7]), .Y(n1638) );
  INVX2_HVT U622 ( .A(a[7]), .Y(n1644) );
  NAND2X0_RVT U628 ( .A1(n1257), .A2(n1256), .Y(n1523) );
  OR2X1_RVT U630 ( .A1(n1555), .A2(n1544), .Y(n1545) );
  AND2X1_RVT U631 ( .A1(n1423), .A2(n1422), .Y(n1144) );
  NAND2X0_RVT U635 ( .A1(n1536), .A2(n1535), .Y(n1537) );
  XNOR2X1_RVT U636 ( .A1(n1464), .A2(n1491), .Y(n1213) );
  XNOR2X1_RVT U637 ( .A1(n1392), .A2(n1491), .Y(n1330) );
  XNOR2X1_HVT U638 ( .A1(n1392), .A2(n1391), .Y(n1414) );
  XOR2X1_HVT U639 ( .A1(b[6]), .A2(n1491), .Y(n1410) );
  XNOR2X1_HVT U640 ( .A1(n1539), .A2(n1391), .Y(n1393) );
  XOR2X1_HVT U641 ( .A1(b[7]), .A2(n1491), .Y(n1389) );
  AO22X1_RVT U642 ( .A1(n517), .A2(n522), .A3(n1252), .A4(n1245), .Y(n1259) );
  OR2X1_RVT U643 ( .A1(n517), .A2(n522), .Y(n1245) );
  NOR2X0_HVT U644 ( .A1(n1520), .A2(n1519), .Y(n1306) );
  OR2X1_HVT U646 ( .A1(b[0]), .A2(n1644), .Y(n1293) );
  XNOR2X1_RVT U647 ( .A1(n1345), .A2(n1470), .Y(n1471) );
  XNOR2X1_RVT U648 ( .A1(n1631), .A2(n1470), .Y(n1493) );
  XNOR2X1_HVT U649 ( .A1(n1635), .A2(n1470), .Y(n1492) );
  XOR2X1_RVT U650 ( .A1(a[8]), .A2(a[9]), .Y(n1217) );
  XNOR2X1_RVT U651 ( .A1(n1222), .A2(a[5]), .Y(n1223) );
  XNOR2X1_HVT U652 ( .A1(b[3]), .A2(a[9]), .Y(n1224) );
  AND2X1_HVT U653 ( .A1(b[0]), .A2(n1469), .Y(n1364) );
  INVX0_RVT U654 ( .A(n1307), .Y(n1191) );
  NAND2X0_HVT U656 ( .A1(n525), .A2(n530), .Y(n1251) );
  NAND2X0_HVT U657 ( .A1(n523), .A2(n530), .Y(n1249) );
  NAND2X0_HVT U658 ( .A1(n525), .A2(n523), .Y(n1250) );
  NAND2X0_HVT U660 ( .A1(n531), .A2(n540), .Y(n1253) );
  NAND2X0_HVT U661 ( .A1(n533), .A2(n540), .Y(n1255) );
  NAND2X0_HVT U662 ( .A1(n533), .A2(n531), .Y(n1254) );
  NOR2X0_HVT U663 ( .A1(n1356), .A2(n1357), .Y(n1272) );
  OR2X1_HVT U664 ( .A1(b[0]), .A2(n1491), .Y(n1366) );
  OAI22X1_HVT U665 ( .A1(n1141), .A2(n1367), .A3(b[0]), .A4(n1408), .Y(n1535)
         );
  XNOR2X1_RVT U666 ( .A1(n1463), .A2(n1470), .Y(n1404) );
  OAI22X1_HVT U667 ( .A1(n1334), .A2(n1533), .A3(n1470), .A4(n1534), .Y(n1405)
         );
  AND2X1_HVT U669 ( .A1(b[0]), .A2(n1407), .Y(n1431) );
  OAI22X1_RVT U670 ( .A1(n1642), .A2(n1290), .A3(n1292), .A4(n1628), .Y(n1398)
         );
  AND2X1_HVT U671 ( .A1(b[0]), .A2(n1623), .Y(n1396) );
  XOR2X1_HVT U672 ( .A1(b[9]), .A2(n1391), .Y(n1226) );
  XNOR2X1_HVT U673 ( .A1(n1631), .A2(n1391), .Y(n1374) );
  XNOR2X1_HVT U674 ( .A1(n1540), .A2(n1470), .Y(n1376) );
  NAND2X0_HVT U677 ( .A1(n1286), .A2(n1285), .Y(n1556) );
  NAND2X0_RVT U678 ( .A1(n1164), .A2(n1165), .Y(n1147) );
  NAND2X0_HVT U679 ( .A1(n1364), .A2(n1363), .Y(n1424) );
  OAI21X1_RVT U682 ( .A1(n1509), .A2(n1508), .A3(n1507), .Y(n1510) );
  NAND2X0_RVT U683 ( .A1(n1279), .A2(n1278), .Y(n1514) );
  NAND2X0_HVT U684 ( .A1(n578), .A2(n573), .Y(n1354) );
  NOR2X0_HVT U685 ( .A1(n578), .A2(n573), .Y(n1356) );
  OR2X1_HVT U686 ( .A1(n588), .A2(n585), .Y(n1321) );
  OR2X1_HVT U687 ( .A1(n1550), .A2(n1549), .Y(n1208) );
  NAND2X0_HVT U688 ( .A1(n1550), .A2(n1549), .Y(n1574) );
  OAI22X1_RVT U689 ( .A1(n1392), .A2(n1619), .A3(n1464), .A4(n1142), .Y(n1350)
         );
  OAI22X1_RVT U690 ( .A1(n1470), .A2(n1533), .A3(n1346), .A4(n1534), .Y(n1339)
         );
  XNOR2X1_RVT U691 ( .A1(b[1]), .A2(a[1]), .Y(n1367) );
  XNOR2X1_HVT U692 ( .A1(n1470), .A2(n1419), .Y(n1333) );
  XNOR2X1_HVT U693 ( .A1(n1332), .A2(n1644), .Y(n1292) );
  XOR2X1_HVT U694 ( .A1(a[3]), .A2(n1540), .Y(n1289) );
  XNOR2X1_HVT U695 ( .A1(n1463), .A2(n1638), .Y(n1290) );
  XNOR2X1_HVT U696 ( .A1(n1464), .A2(n1644), .Y(n1369) );
  XNOR2X1_HVT U697 ( .A1(n1392), .A2(n1638), .Y(n1370) );
  NOR2X1_RVT U698 ( .A1(b[0]), .A2(n1629), .Y(n1294) );
  XNOR2X1_HVT U699 ( .A1(n1392), .A2(n1470), .Y(n1296) );
  AO22X1_HVT U700 ( .A1(n1150), .A2(n1469), .A3(n1468), .A4(a[3]), .Y(n1423)
         );
  AND2X1_HVT U701 ( .A1(a[3]), .A2(n1419), .Y(n1150) );
  INVX0_RVT U702 ( .A(n1314), .Y(n1268) );
  NOR2X0_HVT U703 ( .A1(n572), .A2(n565), .Y(n1357) );
  OAI22X1_HVT U704 ( .A1(n1141), .A2(n1213), .A3(n1362), .A4(n1408), .Y(n1421)
         );
  XNOR2X1_HVT U705 ( .A1(n1391), .A2(n1419), .Y(n1211) );
  INVX0_RVT U706 ( .A(n1554), .Y(n1266) );
  NAND2X0_RVT U707 ( .A1(n1551), .A2(n1554), .Y(n1166) );
  XNOR2X1_HVT U708 ( .A1(n1539), .A2(n1491), .Y(n1409) );
  XNOR2X1_HVT U709 ( .A1(n1464), .A2(n1391), .Y(n1413) );
  OAI22X1_HVT U710 ( .A1(n1218), .A2(n1224), .A3(n1379), .A4(n1377), .Y(n1382)
         );
  XOR2X1_RVT U711 ( .A1(b[7]), .A2(n1644), .Y(n1465) );
  XNOR2X1_RVT U712 ( .A1(n1632), .A2(n1470), .Y(n1346) );
  XNOR2X1_HVT U713 ( .A1(n1631), .A2(n1644), .Y(n1347) );
  XOR2X1_HVT U714 ( .A1(b[5]), .A2(n1644), .Y(n1494) );
  XNOR2X1_RVT U715 ( .A1(n1540), .A2(n1638), .Y(n1495) );
  XNOR2X1_HVT U716 ( .A1(n1332), .A2(n1391), .Y(n1214) );
  XNOR2X1_HVT U717 ( .A1(n1463), .A2(n1391), .Y(n1331) );
  XNOR2X1_HVT U719 ( .A1(n1539), .A2(n1470), .Y(n1375) );
  XNOR2X1_RVT U720 ( .A1(n1332), .A2(n1629), .Y(n1378) );
  XNOR2X1_HVT U721 ( .A1(b[2]), .A2(a[9]), .Y(n1379) );
  OAI21X1_RVT U722 ( .A1(n1615), .A2(n1625), .A3(n1626), .Y(n1558) );
  NAND2X0_RVT U723 ( .A1(n1265), .A2(n1264), .Y(n1553) );
  AO21X1_RVT U724 ( .A1(n1572), .A2(n1577), .A3(n1576), .Y(n1318) );
  OR2X1_RVT U725 ( .A1(n1160), .A2(n1158), .Y(n1325) );
  NAND2X0_HVT U726 ( .A1(n572), .A2(n565), .Y(n1358) );
  OR2X1_RVT U727 ( .A1(n584), .A2(n579), .Y(n1315) );
  NAND2X0_HVT U728 ( .A1(n584), .A2(n579), .Y(n1314) );
  AND2X1_HVT U729 ( .A1(n1538), .A2(n1537), .Y(n1207) );
  OR2X1_HVT U730 ( .A1(n1536), .A2(n1535), .Y(n1538) );
  XOR2X1_RVT U732 ( .A1(n1632), .A2(n1629), .Y(n1205) );
  OAI22X1_RVT U733 ( .A1(n1540), .A2(n1619), .A3(n1539), .A4(n1142), .Y(n1573)
         );
  OAI22X1_RVT U734 ( .A1(n1635), .A2(n1619), .A3(n1540), .A4(n1142), .Y(n1575)
         );
  NAND2X0_HVT U735 ( .A1(n1161), .A2(n1551), .Y(n66) );
  AND2X1_HVT U736 ( .A1(b[0]), .A2(a[0]), .Y(n1584) );
  OAI22X1_HVT U737 ( .A1(n1141), .A2(n1409), .A3(n1330), .A4(n1408), .Y(n1337)
         );
  AO22X1_HVT U738 ( .A1(n1475), .A2(n1477), .A3(n1228), .A4(n1476), .Y(n1602)
         );
  OR2X1_RVT U739 ( .A1(n1477), .A2(n1475), .Y(n1228) );
  AO22X1_HVT U740 ( .A1(n1623), .A2(n1474), .A3(n1473), .A4(n1627), .Y(n1481)
         );
  XNOR2X1_RVT U741 ( .A1(n1345), .A2(n1629), .Y(n1610) );
  XNOR2X1_RVT U742 ( .A1(n1632), .A2(n1638), .Y(n1611) );
  XNOR2X1_RVT U743 ( .A1(n1631), .A2(n1629), .Y(n1612) );
  OAI22X1_RVT U744 ( .A1(n1533), .A2(n1492), .A3(n1376), .A4(n1534), .Y(n1487)
         );
  AND2X1_HVT U745 ( .A1(b[0]), .A2(n1212), .Y(n1344) );
  XNOR2X1_RVT U746 ( .A1(n1635), .A2(n1629), .Y(n1617) );
  XNOR2X1_RVT U747 ( .A1(n1345), .A2(n1638), .Y(n1618) );
  INVX1_RVT U748 ( .A(n1128), .Y(n1619) );
  NAND2X0_HVT U749 ( .A1(n1564), .A2(n1563), .Y(n63) );
  NAND2X0_HVT U750 ( .A1(n1562), .A2(n1561), .Y(n1563) );
  OR2X1_HVT U751 ( .A1(n1562), .A2(n1561), .Y(n1564) );
  OR2X1_HVT U752 ( .A1(n692), .A2(n917), .Y(n1562) );
  NAND2X0_HVT U753 ( .A1(n1554), .A2(n1553), .Y(n65) );
  NAND2X0_HVT U755 ( .A1(n1557), .A2(n1556), .Y(n64) );
  XNOR2X1_RVT U756 ( .A1(n1215), .A2(a[7]), .Y(n1216) );
  INVX1_RVT U757 ( .A(b[10]), .Y(n1632) );
  XOR2X1_RVT U758 ( .A1(n1368), .A2(n1537), .Y(product[2]) );
  NAND2X0_HVT U759 ( .A1(n1365), .A2(n1424), .Y(n1368) );
  NAND2X0_RVT U760 ( .A1(n1530), .A2(n1529), .Y(n1531) );
  XOR2X1_HVT U761 ( .A1(n1355), .A2(n1311), .Y(product[8]) );
  NAND2X0_HVT U762 ( .A1(n1310), .A2(n1354), .Y(n1311) );
  XNOR2X1_HVT U763 ( .A1(n1327), .A2(n1326), .Y(product[5]) );
  NAND2X0_RVT U764 ( .A1(n1325), .A2(n1324), .Y(n1327) );
  NAND2X0_HVT U765 ( .A1(n1192), .A2(n1523), .Y(n1524) );
  XOR2X1_HVT U766 ( .A1(n1329), .A2(n1328), .Y(product[4]) );
  NAND2X0_HVT U767 ( .A1(n1571), .A2(n343), .Y(n1329) );
  NAND2X0_HVT U768 ( .A1(n1321), .A2(n1320), .Y(n1322) );
  NAND2X0_HVT U769 ( .A1(n1521), .A2(n1307), .Y(n1308) );
  NAND2X0_HVT U770 ( .A1(n1179), .A2(n1514), .Y(n1515) );
  XNOR2X1_RVT U771 ( .A1(n1361), .A2(n1360), .Y(product[9]) );
  NAND2X0_HVT U772 ( .A1(n1359), .A2(n1358), .Y(n1360) );
  OAI21X1_RVT U773 ( .A1(n1356), .A2(n1355), .A3(n1354), .Y(n1361) );
  XNOR2X1_RVT U774 ( .A1(n1511), .A2(n1353), .Y(product[10]) );
  NAND2X0_HVT U775 ( .A1(n1456), .A2(n1455), .Y(n1353) );
  XOR2X1_RVT U776 ( .A1(n1462), .A2(n1461), .Y(product[11]) );
  NAND2X0_HVT U777 ( .A1(n1460), .A2(n1459), .Y(n1461) );
  XOR2X1_RVT U778 ( .A1(n1454), .A2(n1453), .Y(product[12]) );
  NAND2X0_HVT U779 ( .A1(n1180), .A2(n1507), .Y(n1453) );
  XOR2X1_HVT U780 ( .A1(n1317), .A2(n1316), .Y(product[7]) );
  NAND2X0_RVT U781 ( .A1(n1315), .A2(n1314), .Y(n1316) );
  AOI21X1_HVT U782 ( .A1(n1323), .A2(n1321), .A3(n1313), .Y(n1317) );
  INVX1_RVT U783 ( .A(n1351), .Y(n1511) );
  XNOR2X2_RVT U784 ( .A1(n1518), .A2(n1517), .Y(product[16]) );
  XNOR2X2_RVT U785 ( .A1(n1146), .A2(n1154), .Y(product[19]) );
  NAND2X0_RVT U786 ( .A1(n1145), .A2(n1149), .Y(n1148) );
  NAND2X0_RVT U787 ( .A1(n1148), .A2(n1147), .Y(product[18]) );
  INVX2_RVT U788 ( .A(a[3]), .Y(n1391) );
  INVX0_RVT U789 ( .A(n1179), .Y(n1513) );
  OR2X1_RVT U790 ( .A1(n1259), .A2(n1258), .Y(n1516) );
  OR2X1_RVT U792 ( .A1(n1273), .A2(n1351), .Y(n1281) );
  AND2X1_RVT U793 ( .A1(n1180), .A2(n1179), .Y(n1155) );
  NAND2X0_RVT U794 ( .A1(n1186), .A2(n1529), .Y(n1156) );
  OR2X1_RVT U795 ( .A1(n1522), .A2(n1306), .Y(n1175) );
  AND3X1_RVT U796 ( .A1(n1187), .A2(n1185), .A3(n1530), .Y(n1157) );
  AO21X1_RVT U797 ( .A1(n1177), .A2(n1526), .A3(n1186), .Y(n1206) );
  INVX0_RVT U798 ( .A(n1312), .Y(n1323) );
  XOR3X2_RVT U799 ( .A1(n1162), .A2(n1163), .A3(n533), .Y(n1278) );
  NBUFFX2_RVT U800 ( .A(n1248), .Y(n1167) );
  OR2X1_RVT U803 ( .A1(n1173), .A2(n1174), .Y(n1324) );
  AND2X1_RVT U804 ( .A1(n1274), .A2(n564), .Y(n1176) );
  NBUFFX2_RVT U805 ( .A(n518), .Y(n1178) );
  OR2X1_RVT U806 ( .A1(n1279), .A2(n1278), .Y(n1179) );
  OR2X1_RVT U807 ( .A1(n1277), .A2(n1276), .Y(n1180) );
  NAND2X0_RVT U808 ( .A1(n1183), .A2(n1181), .Y(n1525) );
  NAND2X0_RVT U809 ( .A1(n1182), .A2(n1521), .Y(n1181) );
  OA21X1_RVT U810 ( .A1(n1306), .A2(n1280), .A3(n1307), .Y(n1183) );
  AND2X1_RVT U811 ( .A1(n1184), .A2(n1189), .Y(n1280) );
  AND3X1_RVT U813 ( .A1(n1156), .A2(n1187), .A3(n1530), .Y(n1188) );
  NAND2X0_RVT U814 ( .A1(n1186), .A2(n1529), .Y(n1185) );
  NAND3X0_RVT U815 ( .A1(n1529), .A2(n1177), .A3(n1526), .Y(n1187) );
  NAND2X0_RVT U816 ( .A1(n1190), .A2(n1523), .Y(n1526) );
  NAND2X0_RVT U818 ( .A1(n1258), .A2(n1259), .Y(n1527) );
  OA21X1_RVT U819 ( .A1(n1302), .A2(n1188), .A3(n1161), .Y(n1305) );
  OA21X1_RVT U820 ( .A1(n1507), .A2(n1513), .A3(n1514), .Y(n1189) );
  NAND2X0_RVT U821 ( .A1(n1192), .A2(n1191), .Y(n1190) );
  OR2X1_RVT U822 ( .A1(n1257), .A2(n1256), .Y(n1192) );
  OAI22X1_RVT U823 ( .A1(n1669), .A2(n719), .A3(n1153), .A4(n718), .Y(n1240)
         );
  NAND2X0_RVT U824 ( .A1(n1193), .A2(n1287), .Y(n193) );
  OR2X1_RVT U825 ( .A1(n1157), .A2(n1166), .Y(n1193) );
  AND2X1_RVT U828 ( .A1(n1281), .A2(n1280), .Y(n1194) );
  INVX0_RVT U829 ( .A(n1526), .Y(n1196) );
  OR2X1_RVT U830 ( .A1(n1267), .A2(n1312), .Y(n1270) );
  NAND2X0_RVT U831 ( .A1(n1198), .A2(n1197), .Y(n1312) );
  NAND3X0_RVT U832 ( .A1(n1203), .A2(n343), .A3(n1324), .Y(n1197) );
  INVX0_RVT U834 ( .A(n1459), .Y(n1200) );
  AO21X1_RVT U835 ( .A1(n1176), .A2(n1201), .A3(n1200), .Y(n1452) );
  OR2X1_RVT U836 ( .A1(n1457), .A2(n1458), .Y(n1201) );
  OA21X1_RVT U838 ( .A1(n1157), .A2(n1545), .A3(n1288), .Y(n1202) );
  OR2X1_RVT U839 ( .A1(n342), .A2(n345), .Y(n1203) );
  AO21X1_RVT U841 ( .A1(n1512), .A2(n1511), .A3(n1510), .Y(n1204) );
  AO21X1_HVT U842 ( .A1(n1534), .A2(n1533), .A3(n1470), .Y(n1583) );
  INVX2_RVT U843 ( .A(a[0]), .Y(n1411) );
  INVX1_RVT U844 ( .A(b[3]), .Y(n1464) );
  XOR2X1_RVT U845 ( .A1(b[2]), .A2(n1491), .Y(n1362) );
  NAND2X0_RVT U846 ( .A1(a[1]), .A2(n1411), .Y(n1408) );
  OAI22X1_RVT U847 ( .A1(n1415), .A2(n1214), .A3(n1211), .A4(n1412), .Y(n1420)
         );
  XNOR2X2_RVT U848 ( .A1(a[4]), .A2(a[3]), .Y(n1533) );
  INVX1_RVT U849 ( .A(b[2]), .Y(n1463) );
  XNOR2X2_RVT U850 ( .A1(a[8]), .A2(a[7]), .Y(n1218) );
  INVX1_RVT U851 ( .A(n1218), .Y(n1623) );
  NAND2X0_RVT U852 ( .A1(n1218), .A2(n1217), .Y(n1377) );
  OAI22X1_RVT U853 ( .A1(n1642), .A2(n1494), .A3(n1370), .A4(n1628), .Y(n1381)
         );
  AND2X1_RVT U854 ( .A1(n1382), .A2(n1381), .Y(n1221) );
  AND2X1_RVT U855 ( .A1(n1382), .A2(n1380), .Y(n1220) );
  AND2X1_RVT U856 ( .A1(n1381), .A2(n1380), .Y(n1219) );
  OR3X1_RVT U857 ( .A1(n1221), .A2(n1220), .A3(n1219), .Y(n1485) );
  OAI22X1_RVT U858 ( .A1(n1411), .A2(n1491), .A3(n1372), .A4(n1408), .Y(n1488)
         );
  INVX1_RVT U859 ( .A(b[6]), .Y(n1540) );
  XOR2X1_RVT U860 ( .A1(n1392), .A2(n1629), .Y(n1473) );
  XNOR2X2_RVT U861 ( .A1(n1632), .A2(n1391), .Y(n1466) );
  OAI22X1_RVT U862 ( .A1(n1415), .A2(n1466), .A3(n1412), .A4(n1226), .Y(n1489)
         );
  INVX1_RVT U863 ( .A(b[5]), .Y(n1539) );
  INVX1_RVT U865 ( .A(n1412), .Y(n1468) );
  INVX1_RVT U866 ( .A(n1415), .Y(n1469) );
  OAI22X1_RVT U867 ( .A1(n1651), .A2(n1153), .A3(n718), .A4(n1170), .Y(n1233)
         );
  OAI22X1_RVT U868 ( .A1(n1172), .A2(n706), .A3(n707), .A4(n918), .Y(n1232) );
  OAI22X1_RVT U869 ( .A1(n694), .A2(n1661), .A3(n695), .A4(n917), .Y(n1237) );
  OAI22X1_RVT U871 ( .A1(n1172), .A2(n705), .A3(n706), .A4(n918), .Y(n1230) );
  OR2X1_RVT U872 ( .A1(n1238), .A2(n1237), .Y(n1229) );
  AO22X1_RVT U873 ( .A1(n1238), .A2(n1237), .A3(n1236), .A4(n1229), .Y(n1265)
         );
  AO22X1_RVT U874 ( .A1(n1626), .A2(n1625), .A3(n1570), .A4(n1615), .Y(n1284)
         );
  OAI22X1_RVT U875 ( .A1(n693), .A2(n1661), .A3(n694), .A4(n917), .Y(n1560) );
  INVX1_RVT U876 ( .A(n1560), .Y(n1283) );
  FADDX1_RVT U877 ( .A(n504), .B(n1231), .CI(n1230), .CO(n1282), .S(n1236) );
  OR2X1_RVT U878 ( .A1(n1265), .A2(n1264), .Y(n1554) );
  FADDX1_RVT U879 ( .A(n1568), .B(n1233), .CI(n1232), .CO(n1238), .S(n1242) );
  OAI22X1_RVT U880 ( .A1(n918), .A2(n708), .A3(n1622), .A4(n707), .Y(n1239) );
  OR2X1_RVT U881 ( .A1(n652), .A2(n1178), .Y(n1234) );
  AO22X1_RVT U882 ( .A1(n1178), .A2(n652), .A3(n1239), .A4(n1234), .Y(n1243)
         );
  AO22X1_RVT U884 ( .A1(n1242), .A2(n1243), .A3(n1244), .A4(n1235), .Y(n1263)
         );
  XOR3X2_RVT U885 ( .A1(n1238), .A2(n1237), .A3(n1236), .Y(n1262) );
  XOR3X2_RVT U886 ( .A1(n652), .A2(n518), .A3(n1239), .Y(n1248) );
  FADDX1_RVT U887 ( .A(n619), .B(n516), .CI(n1240), .CO(n1244), .S(n1246) );
  OR2X1_RVT U888 ( .A1(n1247), .A2(n1167), .Y(n1241) );
  AO22X1_RVT U889 ( .A1(n1247), .A2(n1167), .A3(n1246), .A4(n1241), .Y(n1261)
         );
  XOR3X2_RVT U890 ( .A1(n1244), .A2(n1243), .A3(n1242), .Y(n1260) );
  FADDX1_RVT U891 ( .A(n1569), .B(n526), .CI(n524), .CO(n1247), .S(n1252) );
  XOR3X2_RVT U892 ( .A1(n1248), .A2(n1247), .A3(n1246), .Y(n1258) );
  XOR3X2_RVT U893 ( .A1(n517), .A2(n522), .A3(n1252), .Y(n1256) );
  NAND2X0_RVT U894 ( .A1(n1520), .A2(n1519), .Y(n1307) );
  NAND2X0_RVT U895 ( .A1(n1262), .A2(n1263), .Y(n1552) );
  OA21X1_RVT U896 ( .A1(n1552), .A2(n1266), .A3(n1553), .Y(n1287) );
  FADDX1_RVT U897 ( .A(n543), .B(n550), .CI(n541), .CO(n1279), .S(n1276) );
  FADDX1_RVT U898 ( .A(n1130), .B(n1674), .CI(n1134), .CO(n1277), .S(n1458) );
  FADDX1_RVT U899 ( .A(n1672), .B(n1140), .CI(n1138), .CO(n1457), .S(n1274) );
  NOR2X0_RVT U901 ( .A1(n1275), .A2(n1352), .Y(n1505) );
  NAND2X0_RVT U902 ( .A1(n1505), .A2(n1155), .Y(n1273) );
  NAND2X0_RVT U903 ( .A1(n1321), .A2(n1315), .Y(n1267) );
  NAND2X0_RVT U904 ( .A1(n588), .A2(n585), .Y(n1320) );
  AOI21X1_RVT U905 ( .A1(n1315), .A2(n1313), .A3(n1268), .Y(n1269) );
  NAND2X0_RVT U906 ( .A1(n1270), .A2(n1269), .Y(n1309) );
  OAI21X1_RVT U907 ( .A1(n1354), .A2(n1357), .A3(n1358), .Y(n1271) );
  AOI21X1_RVT U908 ( .A1(n1309), .A2(n1272), .A3(n1271), .Y(n1351) );
  NAND2X0_RVT U909 ( .A1(n1457), .A2(n1458), .Y(n1459) );
  NAND2X0_RVT U910 ( .A1(n1277), .A2(n1276), .Y(n1507) );
  OAI22X1_RVT U911 ( .A1(n692), .A2(n1661), .A3(n693), .A4(n917), .Y(n1559) );
  FADDX1_RVT U912 ( .A(n1284), .B(n1283), .CI(n1282), .CO(n1285), .S(n1264) );
  OA21X1_RVT U914 ( .A1(n1555), .A2(n1287), .A3(n1556), .Y(n1288) );
  INVX1_RVT U915 ( .A(n1377), .Y(n1627) );
  OAI22X1_RVT U916 ( .A1(n1533), .A2(n1375), .A3(n1296), .A4(n1534), .Y(n1445)
         );
  OAI22X1_RVT U918 ( .A1(n1642), .A2(n1292), .A3(n1291), .A4(n1628), .Y(n1428)
         );
  OAI22X1_RVT U919 ( .A1(n1293), .A2(n1642), .A3(n1644), .A4(n1628), .Y(n1427)
         );
  XNOR2X1_RVT U920 ( .A1(n1631), .A2(n1491), .Y(n1297) );
  AO22X1_RVT U921 ( .A1(n1294), .A2(n1623), .A3(a[9]), .A4(n1627), .Y(n1442)
         );
  XNOR2X1_RVT U922 ( .A1(n1419), .A2(n1629), .Y(n1295) );
  OR2X1_RVT U924 ( .A1(n1300), .A2(n1301), .Y(n1298) );
  AO22X1_RVT U925 ( .A1(n1301), .A2(n1300), .A3(n1299), .A4(n1298), .Y(n1594)
         );
  XOR3X2_RVT U926 ( .A1(n1301), .A2(n1300), .A3(n1299), .Y(n1593) );
  OR2X1_RVT U927 ( .A1(n1303), .A2(n1546), .Y(n1304) );
  NAND2X0_RVT U928 ( .A1(n1305), .A2(n1304), .Y(n1663) );
  XNOR2X1_RVT U929 ( .A1(n1567), .A2(n1308), .Y(product[14]) );
  AO21X1_RVT U930 ( .A1(n1572), .A2(n1579), .A3(n1578), .Y(n1319) );
  XNOR2X1_RVT U931 ( .A1(n1319), .A2(n1621), .Y(product[20]) );
  FADDX1_RVT U932 ( .A(n1341), .B(n1340), .CI(n1339), .CO(n1606), .S(n1605) );
  OAI22X1_RVT U933 ( .A1(n1533), .A2(n1346), .A3(n1471), .A4(n1534), .Y(n1349)
         );
  FADDX1_RVT U934 ( .A(n1350), .B(n1349), .CI(n1348), .CO(n1604), .S(n1603) );
  OAI22X1_RVT U935 ( .A1(n1411), .A2(n1362), .A3(n1367), .A4(n1408), .Y(n1363)
         );
  NAND2X0_HVT U937 ( .A1(n1408), .A2(n1366), .Y(n1536) );
  AND2X1_RVT U938 ( .A1(b[0]), .A2(n1128), .Y(n1448) );
  OAI22X1_RVT U939 ( .A1(n1642), .A2(n1370), .A3(n1369), .A4(n1628), .Y(n1447)
         );
  OAI22X1_RVT U940 ( .A1(n1411), .A2(n1372), .A3(n1371), .A4(n1408), .Y(n1446)
         );
  OAI22X1_RVT U941 ( .A1(n1533), .A2(n1376), .A3(n1375), .A4(n1534), .Y(n1387)
         );
  XOR3X2_RVT U943 ( .A1(n1382), .A2(n1381), .A3(n1380), .Y(n1383) );
  FADDX1_RVT U944 ( .A(n1385), .B(n1384), .CI(n1383), .CO(n1598), .S(n1597) );
  FADDX1_RVT U945 ( .A(n1388), .B(n1387), .CI(n1386), .CO(n1384), .S(n1616) );
  FADDX1_RVT U946 ( .A(n1396), .B(n1395), .CI(n1394), .CO(n1438), .S(n1401) );
  FADDX1_RVT U947 ( .A(n1399), .B(n1398), .CI(n1397), .CO(n1300), .S(n1400) );
  FADDX1_RVT U948 ( .A(n1402), .B(n1401), .CI(n1400), .CO(n1592), .S(n1591) );
  HADDX1_RVT U949 ( .A0(n1406), .B0(n1405), .C1(n1417), .SO(n1335) );
  FADDX1_RVT U950 ( .A(n1418), .B(n1417), .CI(n1416), .CO(n1588), .S(n1587) );
  INVX1_RVT U951 ( .A(b[0]), .Y(n1419) );
  HADDX1_RVT U952 ( .A0(n1421), .B0(n1420), .C1(n1550), .SO(n1422) );
  NAND2X0_RVT U953 ( .A1(n1423), .A2(n1422), .Y(n1541) );
  NAND2X0_RVT U954 ( .A1(n1542), .A2(n1541), .Y(n1426) );
  XNOR2X2_RVT U955 ( .A1(n1426), .A2(n1543), .Y(product[3]) );
  HADDX1_RVT U956 ( .A0(n1428), .B0(n1427), .C1(n1397), .SO(n1437) );
  FADDX1_RVT U957 ( .A(n1431), .B(n1430), .CI(n1429), .CO(n1436), .S(n1416) );
  FADDX1_RVT U958 ( .A(n1434), .B(n1433), .CI(n1432), .CO(n1402), .S(n1435) );
  FADDX1_RVT U959 ( .A(n1437), .B(n1436), .CI(n1435), .CO(n1590), .S(n1589) );
  FADDX1_RVT U960 ( .A(n1440), .B(n1439), .CI(n1438), .CO(n1607), .S(n1299) );
  HADDX1_RVT U961 ( .A0(n1442), .B0(n1441), .C1(n1451), .SO(n1439) );
  FADDX1_RVT U962 ( .A(n1445), .B(n1444), .CI(n1443), .CO(n1450), .S(n1301) );
  FADDX1_RVT U963 ( .A(n1448), .B(n1447), .CI(n1446), .CO(n1385), .S(n1449) );
  FADDX1_RVT U964 ( .A(n1451), .B(n1450), .CI(n1449), .CO(n1596), .S(n1595) );
  AOI21X1_RVT U966 ( .A1(n1511), .A2(n1456), .A3(n1176), .Y(n1462) );
  OAI22X1_RVT U967 ( .A1(n1464), .A2(n1619), .A3(n1463), .A4(n1624), .Y(n1498)
         );
  AO22X1_RVT U968 ( .A1(a[3]), .A2(n1469), .A3(n1468), .A4(n1467), .Y(n1496)
         );
  XOR3X2_RVT U969 ( .A1(n1477), .A2(n1476), .A3(n1475), .Y(n1478) );
  FADDX1_RVT U970 ( .A(n1480), .B(n1479), .CI(n1478), .CO(n1582), .S(n1581) );
  FADDX1_RVT U971 ( .A(n1482), .B(n1481), .CI(n1502), .CO(n1479), .S(n1608) );
  FADDX1_RVT U972 ( .A(n1485), .B(n1484), .CI(n1483), .CO(n1227), .S(n1599) );
  FADDX1_RVT U973 ( .A(n1491), .B(n1490), .CI(n1489), .CO(n1501), .S(n1483) );
  FADDX1_RVT U974 ( .A(n1498), .B(n1497), .CI(n1496), .CO(n1480), .S(n1499) );
  FADDX1_RVT U975 ( .A(n1501), .B(n1500), .CI(n1499), .CO(n1601), .S(n1600) );
  FADDX1_RVT U976 ( .A(n1504), .B(n1503), .CI(n1502), .CO(n1500), .S(n1609) );
  XNOR2X2_RVT U979 ( .A1(n1525), .A2(n1524), .Y(product[15]) );
  AO21X1_RVT U981 ( .A1(n1567), .A2(n1528), .A3(n1206), .Y(n1532) );
  XNOR2X2_RVT U982 ( .A1(n1532), .A2(n1531), .Y(product[17]) );
  AOI21X1_RVT U983 ( .A1(n1543), .A2(n1542), .A3(n1144), .Y(n1580) );
  AO21X1_RVT U985 ( .A1(n1548), .A2(n1567), .A3(n1547), .Y(n1662) );
  FADDX1_RVT U986 ( .A(n1560), .B(n1559), .CI(n1558), .CO(n1561), .S(n1286) );
  DFFARX1_HVT R_1045 ( .D(n1584), .CLK(IN0), .RSTB(IN1), .Q(product[0]), .QN()
         );
  DFFARX1_HVT R_1057 ( .D(n1207), .CLK(IN0), .RSTB(IN1), .Q(product[1]), .QN()
         );
  DFFARX1_HVT R_473 ( .D(n64), .CLK(IN0), .RSTB(IN1), .Q(n1621), .QN() );
  DFFASRX1_RVT R_690 ( .D(n1644), .CLK(IN0), .RSTB(1'b1), .SETB(IN1), .Q(n931), 
        .QN() );
  DFFASRX1_RVT R_1216 ( .D(n1635), .CLK(IN0), .RSTB(1'b1), .SETB(IN1), .Q(n695), .QN() );
  DFFASX1_RVT R_923 ( .D(n1642), .CLK(IN0), .SETB(IN1), .Q(n1153), .QN(n1665)
         );
  DFFASX1_RVT R_925 ( .D(n1628), .CLK(IN0), .SETB(IN1), .Q(n1170), .QN(n1668)
         );
  DFFASX1_RVT R_1145_IP ( .D(n1151), .CLK(IN0), .SETB(IN1), .Q(n1569), .QN(
        n518) );
  DFFARX1_RVT R_1043 ( .D(n1585), .CLK(IN0), .RSTB(IN1), .Q(n1160), .QN(n1174)
         );
  INVX1_RVT U569 ( .A(n1527), .Y(n1186) );
  INVX0_RVT U791 ( .A(n1281), .Y(n1182) );
  XNOR2X2_RVT U533 ( .A1(a[6]), .A2(a[5]), .Y(n1642) );
  XNOR2X1_RVT U558 ( .A1(b[6]), .A2(a[9]), .Y(n1338) );
  INVX2_RVT U619 ( .A(a[9]), .Y(n1629) );
  INVX1_RVT U531 ( .A(b[7]), .Y(n1635) );
  INVX1_RVT U530 ( .A(b[8]), .Y(n1631) );
  NBUFFX2_HVT U610 ( .A(n345), .Y(n1328) );
  NOR2X0_RVT U936 ( .A1(n1364), .A2(n1363), .Y(n1425) );
  OR2X1_RVT U572 ( .A1(n1128), .A2(n1143), .Y(n1142) );
  INVX1_HVT U578 ( .A(n1352), .Y(n1456) );
  OAI22X1_RVT U571 ( .A1(n1463), .A2(n1619), .A3(n1332), .A4(n1142), .Y(n1475)
         );
  NOR2X0_RVT U913 ( .A1(n1286), .A2(n1285), .Y(n1555) );
  NOR2X0_RVT U980 ( .A1(n1175), .A2(n1159), .Y(n1528) );
  NOR2X0_RVT U634 ( .A1(n1166), .A2(n1546), .Y(n192) );
  INVX1_HVT U623 ( .A(a[6]), .Y(n1215) );
  INVX1_RVT U557 ( .A(a[2]), .Y(n1209) );
  INVX1_HVT U550 ( .A(n1642), .Y(n1407) );
  INVX0_HVT U606 ( .A(n1473), .Y(n1225) );
  NAND3X0_RVT U655 ( .A1(n1251), .A2(n1250), .A3(n1249), .Y(n1257) );
  NAND3X0_RVT U659 ( .A1(n1255), .A2(n1254), .A3(n1253), .Y(n1520) );
  INVX1_HVT U575 ( .A(n1180), .Y(n1509) );
  INVX4_HVT U556 ( .A(a[5]), .Y(n1470) );
  XNOR2X1_RVT U840 ( .A1(n1204), .A2(n1515), .Y(product[13]) );
  OAI22X1_RVT U537 ( .A1(n1533), .A2(n1296), .A3(n1390), .A4(n1534), .Y(n1395)
         );
  AND2X1_HVT U540 ( .A1(n1177), .A2(n1527), .Y(n1517) );
  INVX0_RVT U546 ( .A(a[10]), .Y(n1143) );
  XNOR2X1_RVT U555 ( .A1(n1635), .A2(n1391), .Y(n1373) );
  INVX0_HVT U560 ( .A(n1452), .Y(n1508) );
  NAND2X0_RVT U566 ( .A1(n1452), .A2(n1155), .Y(n1184) );
  OR2X1_RVT U567 ( .A1(n1175), .A2(n1168), .Y(n1546) );
  OR2X1_RVT U568 ( .A1(n1261), .A2(n1260), .Y(n1529) );
  INVX0_HVT U577 ( .A(n1675), .Y(n1676) );
  NOR2X0_RVT U581 ( .A1(n564), .A2(n1274), .Y(n1352) );
  INVX0_RVT U607 ( .A(n1324), .Y(n1664) );
  INVX0_HVT U608 ( .A(n1665), .Y(n1666) );
  OR2X1_HVT U611 ( .A1(b[0]), .A2(n1470), .Y(n1334) );
  OR2X1_HVT U613 ( .A1(n1128), .A2(n1143), .Y(n1624) );
  NOR2X0_HVT U614 ( .A1(n1509), .A2(n1667), .Y(n1512) );
  INVX0_HVT U615 ( .A(n1667), .Y(n1670) );
  XNOR2X1_HVT U624 ( .A1(n1332), .A2(n1470), .Y(n1403) );
  OAI22X1_HVT U625 ( .A1(n1415), .A2(n1373), .A3(n1289), .A4(n1412), .Y(n1443)
         );
  INVX2_RVT U626 ( .A(a[1]), .Y(n1491) );
  NAND2X0_HVT U627 ( .A1(n1261), .A2(n1260), .Y(n1530) );
  INVX0_HVT U629 ( .A(n1555), .Y(n1557) );
  INVX0_HVT U632 ( .A(n1157), .Y(n1547) );
  OAI22X1_HVT U633 ( .A1(n1218), .A2(n1379), .A3(n1378), .A4(n1377), .Y(n1386)
         );
  NAND2X1_RVT U645 ( .A1(n1642), .A2(n1216), .Y(n1628) );
  INVX0_HVT U668 ( .A(n1227), .Y(n1565) );
  OR2X1_RVT U675 ( .A1(n1325), .A2(n1664), .Y(n1198) );
  INVX0_RVT U676 ( .A(n1202), .Y(n181) );
  NAND2X0_RVT U680 ( .A1(n1551), .A2(n1567), .Y(n1303) );
  AO21X1_RVT U681 ( .A1(n1666), .A2(n1170), .A3(n931), .Y(n1231) );
  OR2X1_RVT U718 ( .A1(n1263), .A2(n1262), .Y(n1551) );
  NAND2X0_RVT U731 ( .A1(n1263), .A2(n1262), .Y(n1161) );
  OA21X1_RVT U754 ( .A1(n1194), .A2(n1175), .A3(n1196), .Y(n1518) );
  OR2X2_RVT U801 ( .A1(n1258), .A2(n1259), .Y(n1177) );
  OR2X1_RVT U802 ( .A1(n1243), .A2(n1242), .Y(n1235) );
  OA22X1_HVT U812 ( .A1(n1539), .A2(n1619), .A3(n1392), .A4(n1142), .Y(n1151)
         );
  OR2X1_RVT U817 ( .A1(n1352), .A2(n1275), .Y(n1667) );
  INVX1_RVT U826 ( .A(n1201), .Y(n1275) );
  INVX0_RVT U827 ( .A(n1668), .Y(n1669) );
  NOR2X0_RVT U833 ( .A1(n1545), .A2(n1546), .Y(n180) );
  AOI21X1_RVT U837 ( .A1(n1511), .A2(n1670), .A3(n1452), .Y(n1454) );
  NAND2X0_RVT U870 ( .A1(n1529), .A2(n1177), .Y(n1168) );
  NAND2X0_RVT U883 ( .A1(n1551), .A2(n1554), .Y(n1544) );
  INVX1_RVT U900 ( .A(n1671), .Y(n1672) );
  INVX1_RVT U917 ( .A(n1673), .Y(n1674) );
  INVX0_RVT U923 ( .A(n1458), .Y(n1675) );
  OR2X1_HVT U942 ( .A1(n1676), .A2(n1457), .Y(n1460) );
  INVX2_RVT U965 ( .A(n1194), .Y(n1567) );
endmodule


module compute ( A, B, sign, exp, mantissa, zero, IN0, IN1 );
  input [15:0] A;
  input [15:0] B;
  output [5:0] exp;
  output [21:0] mantissa;
  input IN0, IN1;
  output sign, zero;
  wire   n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, N5, N6,
         N17, N18, N19, N20, N21, N22, N24, N26, N27, N28, N29, N30, N31, N32,
         N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, n6,
         n19, n18, n17, n16, n15, n14, n7, n8, n9, n10, n11, n12, n13, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n39, n40, n41, n48, n49, n53, n54, n55, n56, n57, n58,
         n60, n74, n84, n97, n98, n99, n100, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4;

  DFFARX1_RVT R_2 ( .D(B[11]), .CLK(IN0), .RSTB(IN1), .Q(n95), .QN() );
  DFFARX1_RVT R_3 ( .D(B[14]), .CLK(IN0), .RSTB(IN1), .Q(n92), .QN() );
  DFFARX1_RVT R_7 ( .D(A[10]), .CLK(IN0), .RSTB(IN1), .Q(n90), .QN() );
  DFFARX1_RVT R_8 ( .D(A[11]), .CLK(IN0), .RSTB(IN1), .Q(n89), .QN() );
  DFFARX1_RVT R_55 ( .D(B[13]), .CLK(IN0), .RSTB(IN1), .Q(n93), .QN() );
  DFFARX1_RVT R_57 ( .D(B[12]), .CLK(IN0), .RSTB(IN1), .Q(n94), .QN() );
  DFFARX1_RVT R_89 ( .D(A[13]), .CLK(IN0), .RSTB(IN1), .Q(n87), .QN() );
  DFFASX1_RVT R_148 ( .D(N40), .CLK(IN0), .SETB(IN1), .Q(n58), .QN() );
  DFFARX1_RVT R_149 ( .D(n99), .CLK(IN0), .RSTB(IN1), .Q(n57), .QN() );
  DFFARX1_RVT R_162 ( .D(n100), .CLK(IN0), .RSTB(IN1), .Q(n55), .QN() );
  DFFARX1_RVT R_166 ( .D(n98), .CLK(IN0), .RSTB(IN1), .Q(n53), .QN() );
  DFFASX1_RVT R_223 ( .D(N41), .CLK(IN0), .SETB(IN1), .Q(n49), .QN() );
  DFFARX1_RVT R_224 ( .D(n99), .CLK(IN0), .RSTB(IN1), .Q(n48), .QN() );
  DFFARX1_RVT R_1236 ( .D(n37), .CLK(IN0), .RSTB(IN1), .Q(mantissa[3]), .QN()
         );
  DFFASX1_HVT R_1053 ( .D(n39), .CLK(IN0), .SETB(IN1), .Q(zero), .QN() );
  INVX1_RVT U3 ( .A(A[10]), .Y(n10) );
  INVX0_RVT U6 ( .A(A[14]), .Y(n11) );
  INVX0_HVT U7 ( .A(A[4]), .Y(n22) );
  INVX0_HVT U8 ( .A(A[8]), .Y(n21) );
  INVX0_HVT U9 ( .A(B[9]), .Y(n28) );
  INVX0_HVT U10 ( .A(B[8]), .Y(n27) );
  INVX0_HVT U11 ( .A(B[7]), .Y(n26) );
  INVX0_HVT U12 ( .A(B[0]), .Y(n25) );
  OR2X1_RVT U19 ( .A1(A[12]), .A2(n12), .Y(n60) );
  NAND4X0_RVT U20 ( .A1(n23), .A2(n7), .A3(n22), .A4(n21), .Y(n24) );
  AND2X1_RVT U21 ( .A1(N45), .A2(n54), .Y(mantissa[21]) );
  NOR3X0_HVT U24 ( .A1(B[2]), .A2(B[1]), .A3(n29), .Y(n33) );
  NAND4X0_HVT U25 ( .A1(n28), .A2(n27), .A3(n26), .A4(n25), .Y(n29) );
  OR2X1_RVT U27 ( .A1(n56), .A2(N44), .Y(mantissa[20]) );
  AND2X1_HVT U28 ( .A1(N26), .A2(n40), .Y(n41) );
  AND2X1_HVT U29 ( .A1(N32), .A2(n99), .Y(mantissa[8]) );
  AND2X1_HVT U30 ( .A1(n98), .A2(N24), .Y(mantissa[0]) );
  HADDX1_HVT U31 ( .A0(n85), .B0(n91), .C1(), .SO(sign) );
  AND2X1_HVT U32 ( .A1(N29), .A2(n99), .Y(mantissa[5]) );
  AND2X1_HVT U33 ( .A1(N28), .A2(n100), .Y(mantissa[4]) );
  AND2X1_HVT U34 ( .A1(N30), .A2(n98), .Y(mantissa[6]) );
  AND2X1_HVT U35 ( .A1(n6), .A2(n100), .Y(mantissa[1]) );
  AND2X1_HVT U37 ( .A1(N33), .A2(n99), .Y(mantissa[9]) );
  AND2X1_HVT U38 ( .A1(N34), .A2(n100), .Y(mantissa[10]) );
  AND2X1_HVT U39 ( .A1(N31), .A2(n98), .Y(mantissa[7]) );
  AND2X1_RVT U40 ( .A1(n36), .A2(N17), .Y(exp[0]) );
  AND2X1_RVT U41 ( .A1(n36), .A2(N18), .Y(exp[1]) );
  AND2X1_RVT U42 ( .A1(n36), .A2(N19), .Y(exp[2]) );
  AND2X1_RVT U43 ( .A1(n36), .A2(N20), .Y(exp[3]) );
  NAND4X0_RVT U44 ( .A1(n11), .A2(n10), .A3(n9), .A4(n8), .Y(n12) );
  OR3X1_RVT U45 ( .A1(B[10]), .A2(B[11]), .A3(B[14]), .Y(n13) );
  OR2X1_RVT U46 ( .A1(B[13]), .A2(n13), .Y(n20) );
  OR2X1_RVT U47 ( .A1(B[12]), .A2(n20), .Y(n74) );
  AND2X1_RVT U48 ( .A1(N43), .A2(n53), .Y(mantissa[19]) );
  AND2X1_RVT U49 ( .A1(N42), .A2(n55), .Y(mantissa[18]) );
  OR3X1_HVT U50 ( .A1(A[15]), .A2(n60), .A3(n24), .Y(n35) );
  AND2X1_RVT U51 ( .A1(N27), .A2(n40), .Y(n37) );
  OA21X1_RVT U52 ( .A1(N6), .A2(N5), .A3(n84), .Y(n36) );
  AND2X1_RVT U53 ( .A1(N21), .A2(n36), .Y(exp[4]) );
  AND2X1_RVT U54 ( .A1(N36), .A2(n98), .Y(mantissa[12]) );
  AND2X1_RVT U55 ( .A1(N35), .A2(n100), .Y(mantissa[11]) );
  AND2X1_RVT U56 ( .A1(N22), .A2(n36), .Y(exp[5]) );
  AND2X1_RVT U57 ( .A1(N38), .A2(n98), .Y(mantissa[14]) );
  AND2X1_RVT U58 ( .A1(N39), .A2(n100), .Y(mantissa[15]) );
  AND2X1_RVT U59 ( .A1(n58), .A2(n57), .Y(mantissa[16]) );
  AND2X1_RVT U60 ( .A1(n49), .A2(n48), .Y(mantissa[17]) );
  compute_DW01_add_1 add_x_1 ( .A({1'b0, n86, n87, n88, n89, n90}), .B({1'b0, 
        n92, n93, n94, n95, n96}), .CI(1'b0), .SUM({N6, N5, 
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, 
        SYNOPSYS_UNCONNECTED_4}), .CO() );
  compute_DW01_add_2 add_x_7 ( .A({1'b0, n92, n93, n94, n95, n96}), .B({n19, 
        n18, n17, n16, n15, n14}), .CI(1'b0), .SUM({N22, N21, N20, N19, N18, 
        N17}), .CO() );
  compute_DW01_sub_1 sub_x_6 ( .A({1'b0, n86, n87, n88, n89, n90}), .B({1'b0, 
        1'b0, 1'b1, 1'b1, 1'b1, 1'b1}), .CI(1'b0), .DIFF({n19, n18, n17, n16, 
        n15, n14}), .CO() );
  compute_DW_mult_uns_0_0_0 mult_x_4 ( .a({n60, A[9:0]}), .b({n74, B[9:0]}), 
        .product({N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, 
        N33, N32, N31, N30, N29, N28, N27, N26, n6, N24}), .IN0(IN0), .IN1(IN1) );
  DFFARX1_RVT R_1 ( .D(B[10]), .CLK(IN0), .RSTB(IN1), .Q(n96), .QN() );
  DFFARX1_HVT R_1054 ( .D(B[15]), .CLK(IN0), .RSTB(IN1), .Q(n91), .QN() );
  DFFARX1_HVT R_1049 ( .D(A[15]), .CLK(IN0), .RSTB(IN1), .Q(n85), .QN() );
  DFFARX1_HVT R_6 ( .D(A[14]), .CLK(IN0), .RSTB(IN1), .Q(n86), .QN() );
  DFFARX1_HVT R_159 ( .D(zero), .CLK(IN0), .RSTB(IN1), .Q(n56), .QN() );
  DFFARX1_HVT R_164 ( .D(n99), .CLK(IN0), .RSTB(IN1), .Q(n54), .QN() );
  DFFARX1_HVT R_1235 ( .D(n40), .CLK(IN0), .RSTB(IN1), .Q(n84), .QN(n97) );
  DFFARX1_HVT R_1051 ( .D(n41), .CLK(IN0), .RSTB(IN1), .Q(mantissa[2]), .QN()
         );
  DFFASRX1_RVT R_136 ( .D(A[12]), .CLK(IN0), .RSTB(IN1), .SETB(1'b1), .Q(n88), 
        .QN() );
  NOR4X1_HVT U23 ( .A1(A[3]), .A2(A[2]), .A3(A[9]), .A4(A[0]), .Y(n23) );
  INVX1_RVT U14 ( .A(A[11]), .Y(n9) );
  NOR4X1_HVT U22 ( .A1(A[6]), .A2(A[5]), .A3(A[7]), .A4(A[1]), .Y(n7) );
  NOR4X1_HVT U26 ( .A1(B[6]), .A2(B[5]), .A3(B[4]), .A4(B[3]), .Y(n31) );
  INVX0_HVT U18 ( .A(n74), .Y(n32) );
  INVX1_RVT U15 ( .A(n39), .Y(n40) );
  INVX0_HVT U13 ( .A(B[15]), .Y(n30) );
  NAND2X0_RVT U4 ( .A1(n35), .A2(n34), .Y(n39) );
  NAND4X0_RVT U5 ( .A1(n33), .A2(n32), .A3(n31), .A4(n30), .Y(n34) );
  INVX1_RVT U16 ( .A(n97), .Y(n100) );
  INVX1_RVT U17 ( .A(n97), .Y(n99) );
  INVX1_RVT U36 ( .A(n97), .Y(n98) );
  INVX1_RVT U63 ( .A(A[13]), .Y(n8) );
  AND2X1_RVT U64 ( .A1(N37), .A2(n98), .Y(mantissa[13]) );
endmodule


module lead_detector_WIDTH20 ( in, out );
  input [19:0] in;
  output [19:0] out;
  wire   n677, n678, n679, n680, n681, n682, n683, n688, n690, n696, n697,
         n698, n700, n701, n703, n704, n705, n707, n708, n709, n710, n711,
         n712, n713, n715, n716, n717, n718, n719, n720, n721, n722, n723,
         n724, n725, n726, n727, n728, n730, n731, n732, n733, n734, n735,
         n736, n737, n738, n917, n1090, n1110, n1111, n1114, n1115, n1116,
         n1118, n1120, n1121;

  OA21X1_RVT U12 ( .A1(n730), .A2(n716), .A3(n735), .Y(out[3]) );
  INVX1_RVT U15 ( .A(in[15]), .Y(n683) );
  INVX0_RVT U24 ( .A(in[16]), .Y(n718) );
  INVX0_RVT U27 ( .A(in[8]), .Y(n715) );
  NAND4X0_RVT U29 ( .A1(n679), .A2(n678), .A3(n1110), .A4(n717), .Y(n677) );
  NAND2X0_RVT U30 ( .A1(n690), .A2(in[9]), .Y(n678) );
  NAND3X0_RVT U31 ( .A1(n690), .A2(n715), .A3(n680), .Y(n679) );
  AND2X1_RVT U33 ( .A1(n682), .A2(n718), .Y(n681) );
  OR2X1_RVT U43 ( .A1(n683), .A2(n727), .Y(n696) );
  NAND2X0_RVT U44 ( .A1(n728), .A2(n700), .Y(n697) );
  AND2X1_RVT U45 ( .A1(n725), .A2(n724), .Y(n731) );
  OA21X1_RVT U46 ( .A1(n711), .A2(n727), .A3(n705), .Y(n701) );
  INVX2_RVT U47 ( .A(n703), .Y(out[0]) );
  NAND2X0_RVT U48 ( .A1(n705), .A2(in[17]), .Y(n704) );
  AND2X1_RVT U49 ( .A1(n708), .A2(n717), .Y(n707) );
  INVX1_RVT U52 ( .A(in[14]), .Y(n711) );
  OR2X1_RVT U53 ( .A1(in[8]), .A2(in[9]), .Y(n728) );
  AND2X1_RVT U54 ( .A1(n720), .A2(n719), .Y(n732) );
  INVX1_RVT U55 ( .A(in[5]), .Y(n719) );
  NBUFFX2_RVT U56 ( .A(in[12]), .Y(n712) );
  OR2X1_RVT U57 ( .A1(n723), .A2(n728), .Y(n730) );
  INVX1_RVT U62 ( .A(in[4]), .Y(n720) );
  NAND2X0_RVT U65 ( .A1(n734), .A2(n733), .Y(n736) );
  AND2X1_RVT U66 ( .A1(n736), .A2(n735), .Y(out[2]) );
  INVX0_RVT U28 ( .A(in[10]), .Y(n690) );
  OR2X1_RVT U13 ( .A1(in[13]), .A2(n712), .Y(n726) );
  NOR3X0_RVT U59 ( .A1(in[15]), .A2(in[14]), .A3(n726), .Y(n733) );
  INVX1_HVT U25 ( .A(in[2]), .Y(n721) );
  INVX1_HVT U11 ( .A(n726), .Y(n710) );
  INVX1_HVT U61 ( .A(n733), .Y(n716) );
  OR2X1_RVT U3 ( .A1(in[16]), .A2(in[17]), .Y(n727) );
  INVX1_RVT U4 ( .A(in[3]), .Y(n722) );
  NAND2X0_RVT U5 ( .A1(n737), .A2(n720), .Y(n688) );
  NAND2X0_RVT U6 ( .A1(n1090), .A2(n722), .Y(n737) );
  AND3X1_RVT U7 ( .A1(n738), .A2(n713), .A3(n704), .Y(n703) );
  NAND4X0_RVT U8 ( .A1(n681), .A2(n705), .A3(n677), .A4(n917), .Y(n738) );
  NAND4X0_RVT U9 ( .A1(n688), .A2(n707), .A3(n709), .A4(n1110), .Y(n917) );
  OR2X1_RVT U10 ( .A1(in[2]), .A2(n1118), .Y(n1090) );
  INVX1_RVT U14 ( .A(in[1]), .Y(n1118) );
  INVX2_RVT U16 ( .A(in[13]), .Y(n717) );
  INVX1_RVT U17 ( .A(out[4]), .Y(n735) );
  INVX1_RVT U18 ( .A(in[18]), .Y(n705) );
  INVX1_RVT U19 ( .A(n723), .Y(n700) );
  INVX1_RVT U20 ( .A(in[7]), .Y(n724) );
  INVX1_HVT U21 ( .A(in[9]), .Y(n708) );
  AO21X1_HVT U22 ( .A1(n732), .A2(n731), .A3(n730), .Y(n734) );
  NOR2X0_RVT U23 ( .A1(in[11]), .A2(in[15]), .Y(n1110) );
  NAND3X0_RVT U26 ( .A1(n1121), .A2(n700), .A3(n731), .Y(n1111) );
  OR2X1_RVT U32 ( .A1(in[10]), .A2(in[11]), .Y(n723) );
  NAND4X0_RVT U34 ( .A1(n698), .A2(n710), .A3(n697), .A4(n1111), .Y(n1114) );
  NAND2X0_RVT U35 ( .A1(n722), .A2(n721), .Y(n1115) );
  NAND4X0_RVT U36 ( .A1(n701), .A2(n1114), .A3(n713), .A4(n696), .Y(out[1]) );
  NAND2X0_RVT U37 ( .A1(n724), .A2(in[6]), .Y(n680) );
  NAND2X0_RVT U38 ( .A1(n732), .A2(n1115), .Y(n1121) );
  NAND2X0_RVT U39 ( .A1(n1116), .A2(n683), .Y(n682) );
  NAND2X0_RVT U40 ( .A1(n1120), .A2(n711), .Y(n1116) );
  OR3X1_RVT U41 ( .A1(in[18]), .A2(n727), .A3(in[19]), .Y(out[4]) );
  AND2X1_RVT U42 ( .A1(n719), .A2(n724), .Y(n709) );
  INVX0_RVT U50 ( .A(in[6]), .Y(n725) );
  NAND2X0_RVT U51 ( .A1(in[12]), .A2(n717), .Y(n1120) );
  INVX1_RVT U58 ( .A(in[19]), .Y(n713) );
  INVX0_RVT U60 ( .A(n727), .Y(n698) );
endmodule


module norm_DW01_inc_J1_0 ( A, SUM );
  input [4:0] A;
  output [4:0] SUM;
  wire   n147, n148, n149, n150, n151;

  INVX0_HVT U31 ( .A(A[1]), .Y(n151) );
  XOR2X1_HVT U32 ( .A1(A[3]), .A2(n147), .Y(SUM[3]) );
  AND2X1_RVT U33 ( .A1(A[0]), .A2(A[1]), .Y(n149) );
  AO22X1_RVT U34 ( .A1(A[0]), .A2(n151), .A3(n150), .A4(A[1]), .Y(SUM[1]) );
  HADDX1_HVT U36 ( .A0(n148), .B0(A[4]), .C1(), .SO(SUM[4]) );
  AND2X1_HVT U37 ( .A1(n147), .A2(A[3]), .Y(n148) );
  HADDX1_RVT U38 ( .A0(n149), .B0(A[2]), .C1(), .SO(SUM[2]) );
  INVX0_HVT U30 ( .A(A[0]), .Y(n150) );
  AND3X1_RVT U35 ( .A1(A[0]), .A2(A[1]), .A3(A[2]), .Y(n147) );
endmodule


module norm_DW_leftsh_0 ( A, SH, B, IN0, IN1 );
  input [20:0] A;
  input [31:0] SH;
  output [20:0] B;
  input IN0, IN1;
  wire   n136, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n582,
         n584, n585, n586, n587, n588, n589, n590, n591, n592, n594, n595,
         n596, n597, n598, n599, n600, n601, n602, n603, n604, n605, n606,
         n607, n608, n609, n610, n611, n612, n613, n614, n615, n616, n617,
         n618, n619, n620, n621, n622, n623, n624, n625, n626, n627, n628,
         n629, n630, n631, n632, n633, n635, n636, n637, n638, n639, n640,
         n641, n642, n643, n644, n645, n646, n647, n648, n649, n650, n651,
         n652, n653, n654, n655, n656, n657, n658, n659, n660, n661, n662,
         n663, n664, n665, n666, n667, n668, n669, n670, n671, n672, n673,
         n674, n675, n676, n677, n678, n679, n680, n681, n682, n683, n684,
         n685, n686, n687, n688, n689, n690, n691, n692, n693, n694, n695,
         n696, n697, n698, n699, n700, n701, n702, n703, n704, n705, n706,
         n707, n708, n709, n710, n711, n712, n716;

  DFFASX1_RVT R_1108 ( .D(n329), .CLK(IN0), .SETB(IN1), .Q(n706), .QN() );
  DFFASX1_RVT R_1112 ( .D(n330), .CLK(IN0), .SETB(IN1), .Q(n704), .QN() );
  DFFASX1_RVT R_1116 ( .D(n328), .CLK(IN0), .SETB(IN1), .Q(n702), .QN() );
  DFFASX1_RVT R_1120 ( .D(n327), .CLK(IN0), .SETB(IN1), .Q(n700), .QN() );
  DFFASX1_RVT R_1124 ( .D(n326), .CLK(IN0), .SETB(IN1), .Q(n698), .QN() );
  DFFASX1_RVT R_1128 ( .D(n325), .CLK(IN0), .SETB(IN1), .Q(n696), .QN() );
  DFFARX1_RVT R_1061_RW_0 ( .D(SH[3]), .CLK(IN0), .RSTB(IN1), .Q(n709), .QN()
         );
  DFFARX1_RVT R_1002_RW_0 ( .D(n325), .CLK(IN0), .RSTB(IN1), .Q(n712), .QN()
         );
  DFFARX1_RVT R_1006_RW_0 ( .D(n326), .CLK(IN0), .RSTB(IN1), .Q(n711), .QN()
         );
  DFFARX1_RVT R_1098_RW_0 ( .D(n327), .CLK(IN0), .RSTB(IN1), .Q(n707), .QN()
         );
  DFFARX1_RVT R_1110_RW_0 ( .D(n333), .CLK(IN0), .RSTB(IN1), .Q(n705), .QN()
         );
  DFFARX1_RVT R_1114_RW_0 ( .D(n334), .CLK(IN0), .RSTB(IN1), .Q(n703), .QN()
         );
  DFFARX1_RVT R_1118_RW_0 ( .D(n332), .CLK(IN0), .RSTB(IN1), .Q(n701), .QN()
         );
  DFFARX1_RVT R_1122_RW_0 ( .D(n331), .CLK(IN0), .RSTB(IN1), .Q(n699), .QN()
         );
  DFFARX1_RVT R_1126_RW_0 ( .D(n330), .CLK(IN0), .RSTB(IN1), .Q(n697), .QN()
         );
  DFFARX1_RVT R_1130_RW_0 ( .D(n329), .CLK(IN0), .RSTB(IN1), .Q(n695), .QN()
         );
  DFFASX1_RVT R_1238 ( .D(n324), .CLK(IN0), .SETB(IN1), .Q(n694), .QN() );
  DFFASX1_RVT R_1239 ( .D(n323), .CLK(IN0), .SETB(IN1), .Q(n693), .QN() );
  DFFASX1_RVT R_1240 ( .D(n322), .CLK(IN0), .SETB(IN1), .Q(n692), .QN() );
  DFFASX1_RVT R_1241 ( .D(n321), .CLK(IN0), .SETB(IN1), .Q(n691), .QN() );
  DFFASX1_RVT R_1242 ( .D(n320), .CLK(IN0), .SETB(IN1), .Q(n690), .QN() );
  DFFASX1_RVT R_1243 ( .D(n319), .CLK(IN0), .SETB(IN1), .Q(n689), .QN() );
  DFFASX1_RVT R_1244 ( .D(n318), .CLK(IN0), .SETB(IN1), .Q(n688), .QN() );
  DFFASX1_RVT R_1245 ( .D(n317), .CLK(IN0), .SETB(IN1), .Q(n687), .QN() );
  DFFASX1_RVT R_1059 ( .D(n136), .CLK(IN0), .SETB(IN1), .Q(n710), .QN() );
  DFFASX1_HVT R_1247 ( .D(n316), .CLK(IN0), .SETB(IN1), .Q(n685), .QN() );
  INVX1_HVT U180 ( .A(SH[2]), .Y(n592) );
  INVX1_RVT U182 ( .A(SH[2]), .Y(n678) );
  INVX0_HVT U185 ( .A(A[8]), .Y(n587) );
  NOR2X2_RVT U187 ( .A1(n638), .A2(n637), .Y(n684) );
  OR2X1_RVT U188 ( .A1(SH[9]), .A2(SH[17]), .Y(n628) );
  NAND3X0_RVT U191 ( .A1(n716), .A2(n605), .A3(n607), .Y(n584) );
  AO22X1_RVT U192 ( .A1(n625), .A2(n620), .A3(n599), .A4(n619), .Y(n329) );
  NAND2X0_RVT U193 ( .A1(n586), .A2(n585), .Y(n588) );
  NAND2X0_RVT U194 ( .A1(A[9]), .A2(n615), .Y(n585) );
  OR2X1_RVT U195 ( .A1(n587), .A2(n615), .Y(n586) );
  AO22X1_RVT U196 ( .A1(n625), .A2(n588), .A3(n599), .A4(n617), .Y(n324) );
  AO22X1_RVT U197 ( .A1(n599), .A2(n588), .A3(n600), .A4(n625), .Y(n326) );
  AO22X1_RVT U198 ( .A1(n599), .A2(n589), .A3(n625), .A4(n621), .Y(n330) );
  AO22X1_RVT U199 ( .A1(n582), .A2(A[14]), .A3(n615), .A4(A[15]), .Y(n621) );
  NAND2X0_RVT U200 ( .A1(n605), .A2(n607), .Y(n589) );
  NAND2X0_RVT U201 ( .A1(n582), .A2(A[12]), .Y(n607) );
  OR2X1_RVT U202 ( .A1(n606), .A2(n582), .Y(n605) );
  OR2X1_RVT U203 ( .A1(n630), .A2(n632), .Y(n633) );
  OR2X1_RVT U204 ( .A1(n631), .A2(n630), .Y(n596) );
  OR2X1_RVT U205 ( .A1(n629), .A2(n596), .Y(n591) );
  OR2X1_RVT U206 ( .A1(n631), .A2(n628), .Y(n597) );
  OR2X1_RVT U208 ( .A1(SH[31]), .A2(n632), .Y(n590) );
  OR2X1_RVT U209 ( .A1(n627), .A2(n628), .Y(n629) );
  AO22X1_RVT U210 ( .A1(n656), .A2(n709), .A3(n655), .A4(n710), .Y(n657) );
  AO22X1_RVT U211 ( .A1(n644), .A2(n709), .A3(n643), .A4(n710), .Y(n645) );
  INVX1_RVT U214 ( .A(SH[4]), .Y(n595) );
  OR2X1_RVT U215 ( .A1(n597), .A2(n596), .Y(n636) );
  OR2X1_RVT U216 ( .A1(n594), .A2(n633), .Y(n635) );
  OR2X1_RVT U217 ( .A1(SH[16]), .A2(SH[15]), .Y(n631) );
  OR2X1_RVT U218 ( .A1(SH[11]), .A2(SH[13]), .Y(n630) );
  OR2X1_RVT U219 ( .A1(SH[11]), .A2(SH[14]), .Y(n627) );
  AND2X1_HVT U220 ( .A1(n684), .A2(n683), .Y(B[19]) );
  AND2X1_HVT U221 ( .A1(n684), .A2(n676), .Y(B[18]) );
  AND2X1_HVT U222 ( .A1(n684), .A2(n670), .Y(B[17]) );
  AND2X1_HVT U223 ( .A1(n684), .A2(n664), .Y(B[16]) );
  AND2X1_RVT U224 ( .A1(n639), .A2(n595), .Y(n640) );
  AND2X1_RVT U225 ( .A1(n641), .A2(n595), .Y(n642) );
  AND2X1_RVT U226 ( .A1(n653), .A2(n595), .Y(n654) );
  AND2X1_RVT U227 ( .A1(n649), .A2(n595), .Y(n650) );
  AND2X1_RVT U228 ( .A1(n657), .A2(n595), .Y(n658) );
  AND2X1_RVT U229 ( .A1(n645), .A2(n595), .Y(n646) );
  OR2X1_RVT U230 ( .A1(SH[7]), .A2(SH[30]), .Y(n632) );
  AO22X1_RVT U231 ( .A1(n671), .A2(n709), .A3(n673), .A4(n710), .Y(n639) );
  AO22X1_RVT U232 ( .A1(n677), .A2(n709), .A3(n680), .A4(n710), .Y(n641) );
  AO22X1_RVT U233 ( .A1(n652), .A2(n709), .A3(n651), .A4(n710), .Y(n653) );
  AO22X1_RVT U234 ( .A1(n648), .A2(n709), .A3(n647), .A4(n710), .Y(n649) );
  AND2X1_RVT U235 ( .A1(n684), .A2(n642), .Y(B[11]) );
  AND2X1_RVT U236 ( .A1(n684), .A2(n640), .Y(B[10]) );
  AO22X1_RVT U237 ( .A1(n582), .A2(A[16]), .A3(n615), .A4(A[17]), .Y(n626) );
  AO22X1_RVT U238 ( .A1(n582), .A2(A[15]), .A3(n615), .A4(A[16]), .Y(n623) );
  NAND2X0_RVT U239 ( .A1(n582), .A2(A[10]), .Y(n603) );
  AND2X1_RVT U241 ( .A1(n615), .A2(A[0]), .Y(n608) );
  AO22X1_RVT U242 ( .A1(n582), .A2(A[0]), .A3(n615), .A4(A[1]), .Y(n610) );
  AO22X1_RVT U243 ( .A1(n582), .A2(A[1]), .A3(n615), .A4(A[2]), .Y(n611) );
  AO22X1_RVT U244 ( .A1(n582), .A2(A[2]), .A3(n615), .A4(A[3]), .Y(n612) );
  AO22X1_RVT U245 ( .A1(n582), .A2(A[3]), .A3(n615), .A4(A[4]), .Y(n614) );
  AO22X1_RVT U246 ( .A1(n582), .A2(A[4]), .A3(n615), .A4(A[5]), .Y(n616) );
  AO22X1_RVT U247 ( .A1(n582), .A2(A[5]), .A3(n615), .A4(A[6]), .Y(n613) );
  AO22X1_RVT U248 ( .A1(n582), .A2(A[6]), .A3(n615), .A4(A[7]), .Y(n617) );
  AO22X1_RVT U249 ( .A1(SH[0]), .A2(A[7]), .A3(n615), .A4(A[8]), .Y(n609) );
  AO22X1_RVT U250 ( .A1(SH[0]), .A2(A[9]), .A3(n615), .A4(A[10]), .Y(n618) );
  AO22X1_RVT U251 ( .A1(SH[0]), .A2(A[11]), .A3(n615), .A4(A[12]), .Y(n619) );
  AO22X1_RVT U252 ( .A1(n582), .A2(A[13]), .A3(n615), .A4(A[14]), .Y(n620) );
  AO22X1_HVT U253 ( .A1(n687), .A2(n598), .A3(n691), .A4(n592), .Y(n652) );
  AO22X1_HVT U254 ( .A1(n696), .A2(n598), .A3(n695), .A4(n592), .Y(n651) );
  AO22X1_HVT U255 ( .A1(n688), .A2(n598), .A3(n692), .A4(n592), .Y(n656) );
  AO22X1_HVT U256 ( .A1(n698), .A2(n598), .A3(n697), .A4(n592), .Y(n655) );
  AO22X1_HVT U257 ( .A1(n685), .A2(n598), .A3(n690), .A4(n592), .Y(n648) );
  AO22X1_HVT U258 ( .A1(n694), .A2(n598), .A3(n708), .A4(n592), .Y(n647) );
  AO22X1_HVT U259 ( .A1(n686), .A2(n598), .A3(n689), .A4(n592), .Y(n644) );
  AO22X1_HVT U260 ( .A1(n693), .A2(n598), .A3(n707), .A4(n592), .Y(n643) );
  AND2X1_RVT U261 ( .A1(n625), .A2(n610), .Y(n316) );
  AO22X1_RVT U263 ( .A1(n582), .A2(A[18]), .A3(A[19]), .A4(n615), .Y(n624) );
  AO22X1_RVT U264 ( .A1(n582), .A2(A[17]), .A3(A[18]), .A4(n615), .Y(n622) );
  NAND2X0_RVT U265 ( .A1(n604), .A2(n603), .Y(n600) );
  AND2X1_RVT U266 ( .A1(n684), .A2(n654), .Y(B[14]) );
  AND2X1_RVT U267 ( .A1(n684), .A2(n658), .Y(B[15]) );
  AND2X1_HVT U268 ( .A1(n659), .A2(n710), .Y(n663) );
  AND2X1_HVT U269 ( .A1(n665), .A2(n710), .Y(n669) );
  AND2X1_HVT U270 ( .A1(n671), .A2(n710), .Y(n675) );
  AND2X1_HVT U271 ( .A1(n677), .A2(n710), .Y(n682) );
  AND2X1_RVT U272 ( .A1(n684), .A2(n650), .Y(B[13]) );
  AND2X1_RVT U273 ( .A1(n684), .A2(n646), .Y(B[12]) );
  OR2X1_RVT U274 ( .A1(n601), .A2(n582), .Y(n604) );
  AO22X1_RVT U275 ( .A1(n621), .A2(n599), .A3(n626), .A4(n625), .Y(n332) );
  NAND3X0_RVT U276 ( .A1(n604), .A2(n603), .A3(SH[1]), .Y(n602) );
  AO22X1_RVT U278 ( .A1(n613), .A2(n599), .A3(n609), .A4(n625), .Y(n323) );
  AO22X1_RVT U279 ( .A1(n599), .A2(n608), .A3(n625), .A4(n611), .Y(n317) );
  AO22X1_RVT U280 ( .A1(n609), .A2(n599), .A3(n618), .A4(n625), .Y(n325) );
  AO22X1_RVT U282 ( .A1(n610), .A2(n599), .A3(n625), .A4(n612), .Y(n318) );
  AO22X1_RVT U283 ( .A1(n611), .A2(n599), .A3(n625), .A4(n614), .Y(n319) );
  AO22X1_RVT U284 ( .A1(n612), .A2(n599), .A3(n625), .A4(n616), .Y(n320) );
  AO22X1_RVT U285 ( .A1(n614), .A2(n599), .A3(n625), .A4(n613), .Y(n321) );
  AO22X1_RVT U286 ( .A1(n616), .A2(n599), .A3(n625), .A4(n617), .Y(n322) );
  AO22X1_RVT U287 ( .A1(n618), .A2(n599), .A3(n625), .A4(n619), .Y(n327) );
  AO22X1_RVT U288 ( .A1(n620), .A2(n599), .A3(n625), .A4(n623), .Y(n331) );
  AO22X1_RVT U289 ( .A1(n623), .A2(n599), .A3(n625), .A4(n622), .Y(n333) );
  AO22X1_RVT U290 ( .A1(n626), .A2(n599), .A3(n625), .A4(n624), .Y(n334) );
  OR2X1_RVT U291 ( .A1(n636), .A2(n635), .Y(n637) );
  AND2X1_RVT U292 ( .A1(n687), .A2(n678), .Y(n671) );
  AO22X1_RVT U293 ( .A1(n691), .A2(n598), .A3(n712), .A4(n678), .Y(n673) );
  AND2X1_RVT U294 ( .A1(n688), .A2(n678), .Y(n677) );
  AO22X1_RVT U295 ( .A1(n692), .A2(n598), .A3(n711), .A4(n678), .Y(n680) );
  AND2X1_RVT U296 ( .A1(n686), .A2(n678), .Y(n659) );
  AO22X1_RVT U297 ( .A1(n689), .A2(n598), .A3(n693), .A4(n678), .Y(n661) );
  AO22X1_RVT U298 ( .A1(n700), .A2(n598), .A3(n699), .A4(n678), .Y(n660) );
  AO22X1_RVT U299 ( .A1(n661), .A2(n709), .A3(n660), .A4(n710), .Y(n662) );
  AO22X1_RVT U300 ( .A1(n663), .A2(SH[4]), .A3(n662), .A4(n595), .Y(n664) );
  AND2X1_RVT U301 ( .A1(n685), .A2(n678), .Y(n665) );
  AO22X1_RVT U302 ( .A1(n690), .A2(n598), .A3(n694), .A4(n678), .Y(n667) );
  AO22X1_RVT U303 ( .A1(n702), .A2(n598), .A3(n701), .A4(n678), .Y(n666) );
  AO22X1_RVT U304 ( .A1(n667), .A2(n709), .A3(n666), .A4(n710), .Y(n668) );
  AO22X1_RVT U305 ( .A1(n669), .A2(SH[4]), .A3(n668), .A4(n595), .Y(n670) );
  AO22X1_RVT U306 ( .A1(n706), .A2(n598), .A3(n705), .A4(n678), .Y(n672) );
  AO22X1_RVT U307 ( .A1(n673), .A2(n709), .A3(n672), .A4(n710), .Y(n674) );
  AO22X1_RVT U308 ( .A1(n675), .A2(SH[4]), .A3(n674), .A4(n595), .Y(n676) );
  AO22X1_RVT U309 ( .A1(n704), .A2(n598), .A3(n703), .A4(n678), .Y(n679) );
  AO22X1_RVT U310 ( .A1(n680), .A2(n709), .A3(n679), .A4(n710), .Y(n681) );
  AO22X1_RVT U311 ( .A1(n682), .A2(SH[4]), .A3(n681), .A4(n595), .Y(n683) );
  DFFASRX1_RVT R_1246 ( .D(n315), .CLK(IN0), .RSTB(1'b1), .SETB(IN1), .Q(n686), 
        .QN() );
  INVX0_HVT U189 ( .A(A[11]), .Y(n601) );
  OR2X1_HVT U213 ( .A1(SH[9]), .A2(SH[10]), .Y(n594) );
  INVX4_RVT U186 ( .A(SH[0]), .Y(n615) );
  NBUFFX4_RVT U181 ( .A(SH[1]), .Y(n599) );
  INVX0_HVT U240 ( .A(A[13]), .Y(n606) );
  DFFARX1_RVT R_1094_RW_0 ( .D(n328), .CLK(IN0), .RSTB(IN1), .Q(n708), .QN()
         );
  OR2X1_RVT U179 ( .A1(n590), .A2(n591), .Y(n638) );
  INVX1_RVT U183 ( .A(SH[3]), .Y(n136) );
  NBUFFX8_RVT U184 ( .A(SH[0]), .Y(n582) );
  NBUFFX2_HVT U190 ( .A(SH[2]), .Y(n598) );
  AND2X1_RVT U207 ( .A1(n625), .A2(n608), .Y(n315) );
  INVX0_HVT U212 ( .A(SH[1]), .Y(n716) );
  INVX2_RVT U262 ( .A(SH[1]), .Y(n625) );
  AND2X1_RVT U281 ( .A1(n584), .A2(n602), .Y(n328) );
endmodule


module norm_DW01_sub_4 ( A, B, CI, DIFF, CO, IN0, IN1 );
  input [20:0] A;
  input [20:0] B;
  output [20:0] DIFF;
  input CI, IN0, IN1;
  output CO;
  wire   n72, n73, n255, n260, n272, n615, n616, n619, n620, n621, n622, n623,
         n624, n633, n634;

  DFFASX1_RVT R_1180 ( .D(n272), .CLK(IN0), .SETB(IN1), .Q(), .QN(n615) );
  DFFASX1_RVT R_1181 ( .D(n73), .CLK(IN0), .SETB(IN1), .Q(), .QN(n616) );
  DFFASX1_HVT R_1151 ( .D(n260), .CLK(IN0), .SETB(IN1), .Q(n634), .QN() );
  DFFASX1_HVT R_1152 ( .D(n72), .CLK(IN0), .SETB(IN1), .Q(n633), .QN() );
  XOR2X1_RVT U96 ( .A1(n615), .A2(n616), .Y(DIFF[2]) );
  XOR2X1_RVT U97 ( .A1(n634), .A2(n633), .Y(DIFF[4]) );
  INVX1_HVT U100 ( .A(B[3]), .Y(n624) );
  INVX0_HVT U101 ( .A(B[4]), .Y(n72) );
  INVX1_RVT U102 ( .A(n619), .Y(DIFF[9]) );
  INVX0_RVT U103 ( .A(n619), .Y(DIFF[15]) );
  INVX0_RVT U105 ( .A(n619), .Y(DIFF[7]) );
  INVX0_RVT U106 ( .A(n619), .Y(DIFF[10]) );
  INVX0_RVT U107 ( .A(n619), .Y(DIFF[13]) );
  INVX0_RVT U108 ( .A(n619), .Y(DIFF[14]) );
  INVX1_RVT U109 ( .A(n619), .Y(DIFF[20]) );
  INVX0_RVT U110 ( .A(n619), .Y(DIFF[17]) );
  NAND2X0_RVT U112 ( .A1(B[4]), .A2(n260), .Y(n255) );
  NAND2X0_RVT U113 ( .A1(n624), .A2(n623), .Y(n260) );
  INVX2_RVT U115 ( .A(n622), .Y(DIFF[0]) );
  INVX1_RVT U117 ( .A(B[2]), .Y(n73) );
  INVX1_RVT U118 ( .A(B[1]), .Y(n621) );
  AND2X1_RVT U119 ( .A1(n621), .A2(n622), .Y(n620) );
  XNOR2X2_RVT U116 ( .A1(n623), .A2(B[3]), .Y(DIFF[3]) );
  DFFASX1_RVT R_984 ( .D(n255), .CLK(IN0), .SETB(IN1), .Q(n619), .QN(DIFF[16])
         );
  NAND2X0_HVT U98 ( .A1(n621), .A2(n622), .Y(n272) );
  INVX2_RVT U99 ( .A(B[0]), .Y(n622) );
  OR2X1_RVT U104 ( .A1(n73), .A2(n620), .Y(n623) );
  NBUFFX2_HVT U111 ( .A(DIFF[16]), .Y(DIFF[11]) );
  XNOR2X2_RVT U114 ( .A1(B[1]), .A2(n622), .Y(DIFF[1]) );
endmodule


module norm_DW01_add_1 ( A, B, CI, SUM, CO, IN0, IN1 );
  input [4:0] A;
  input [4:0] B;
  output [4:0] SUM;
  input CI, IN0, IN1;
  output CO;
  wire   n1, n6, n7, n20, n22, n53, n54, n163, n164, n165, n166, n167, n168,
         n169, n170, n172, n173, n174, n175, n177, n178, n179, n183, n184,
         n185, n186, n188, n189, n190, n191, n192, n193, n196, n197;

  DFFARX1_RVT R_932 ( .D(n20), .CLK(IN0), .RSTB(IN1), .Q(n193), .QN() );
  DFFASX1_RVT R_1082_RW_0 ( .D(n7), .CLK(IN0), .SETB(IN1), .Q(n192), .QN() );
  DFFASX1_RVT R_1083_RW_0 ( .D(n6), .CLK(IN0), .SETB(IN1), .Q(n191), .QN() );
  DFFARX1_RVT R_1195 ( .D(n53), .CLK(IN0), .RSTB(IN1), .Q(n190), .QN() );
  DFFARX1_RVT R_1196 ( .D(n54), .CLK(IN0), .RSTB(IN1), .Q(n189), .QN() );
  DFFASX1_RVT R_1199 ( .D(n22), .CLK(IN0), .SETB(IN1), .Q(n188), .QN() );
  DFFASX1_RVT R_1256 ( .D(n1), .CLK(IN0), .SETB(IN1), .Q(n164), .QN() );
  XOR3X1_RVT U56 ( .A1(B[3]), .A2(A[3]), .A3(n183), .Y(n169) );
  AND2X1_RVT U57 ( .A1(n197), .A2(n167), .Y(SUM[0]) );
  NOR2X0_RVT U59 ( .A1(B[2]), .A2(A[2]), .Y(n183) );
  NAND2X0_RVT U61 ( .A1(n172), .A2(n177), .Y(n165) );
  NAND2X0_RVT U62 ( .A1(B[3]), .A2(A[3]), .Y(n177) );
  OR2X1_RVT U63 ( .A1(A[3]), .A2(B[3]), .Y(n172) );
  XOR2X2_RVT U64 ( .A1(n178), .A2(n193), .Y(SUM[4]) );
  NBUFFX2_RVT U65 ( .A(n164), .Y(n163) );
  INVX1_RVT U66 ( .A(n172), .Y(n179) );
  NOR2X0_HVT U68 ( .A1(n192), .A2(n191), .Y(SUM[3]) );
  NAND2X0_RVT U69 ( .A1(n185), .A2(n184), .Y(n22) );
  OAI21X1_RVT U70 ( .A1(n184), .A2(n179), .A3(n177), .Y(n54) );
  NOR2X0_HVT U71 ( .A1(n179), .A2(n183), .Y(n53) );
  NAND2X0_HVT U73 ( .A1(n173), .A2(n186), .Y(n20) );
  NAND2X0_HVT U74 ( .A1(B[4]), .A2(A[4]), .Y(n186) );
  OR2X1_HVT U75 ( .A1(B[4]), .A2(A[4]), .Y(n173) );
  INVX1_RVT U78 ( .A(n168), .Y(n1) );
  AND2X1_RVT U79 ( .A1(n166), .A2(n168), .Y(n7) );
  AND2X1_RVT U82 ( .A1(n169), .A2(n1), .Y(n6) );
  NAND2X0_RVT U83 ( .A1(B[1]), .A2(A[1]), .Y(n175) );
  NAND2X0_RVT U84 ( .A1(B[2]), .A2(A[2]), .Y(n184) );
  AOI21X1_RVT U87 ( .A1(n164), .A2(n190), .A3(n189), .Y(n178) );
  XNOR2X1_RVT U88 ( .A1(n163), .A2(n188), .Y(SUM[2]) );
  OR2X1_RVT U76 ( .A1(A[1]), .A2(B[1]), .Y(n170) );
  INVX0_RVT U77 ( .A(n170), .Y(n174) );
  INVX0_HVT U58 ( .A(n183), .Y(n185) );
  XOR2X2_RVT U60 ( .A1(n196), .A2(n167), .Y(SUM[1]) );
  NAND2X0_RVT U67 ( .A1(n170), .A2(n175), .Y(n196) );
  XNOR2X2_RVT U72 ( .A1(n165), .A2(n184), .Y(n166) );
  NAND2X2_RVT U80 ( .A1(B[0]), .A2(A[0]), .Y(n167) );
  OA21X1_RVT U81 ( .A1(n167), .A2(n174), .A3(n175), .Y(n168) );
  OR2X1_RVT U85 ( .A1(B[0]), .A2(A[0]), .Y(n197) );
endmodule


module norm_DW01_sub_5 ( A, B, CI, DIFF, CO );
  input [4:0] A;
  input [4:0] B;
  output [4:0] DIFF;
  input CI;
  output CO;
  wire   n124, n125, n126;

  NBUFFX2_HVT U26 ( .A(A[0]), .Y(DIFF[0]) );
  INVX0_RVT U27 ( .A(A[3]), .Y(n124) );
  NBUFFX2_RVT U28 ( .A(A[1]), .Y(DIFF[1]) );
  INVX1_RVT U29 ( .A(A[2]), .Y(DIFF[2]) );
  NAND2X0_RVT U30 ( .A1(DIFF[2]), .A2(n124), .Y(n126) );
  INVX1_RVT U31 ( .A(A[4]), .Y(n125) );
  XNOR2X1_RVT U32 ( .A1(n126), .A2(n125), .Y(DIFF[4]) );
  XOR2X1_RVT U33 ( .A1(A[3]), .A2(DIFF[2]), .Y(DIFF[3]) );
endmodule


module norm_DW_cmp_3 ( A, B, TC, GE_LT, GE_GT_EQ, GE_LT_GT_LE, EQ_NE, IN0, IN1
 );
  input [31:0] A;
  input [31:0] B;
  input TC, GE_LT, GE_GT_EQ, IN0, IN1;
  output GE_LT_GT_LE, EQ_NE;
  wire   n43, n553, n560, n561, n913, n1063, n1064, n1065, n1066, n1067, n1068,
         n1069, n1070, n1071, n1072, n1073, n1074, n1075, n1076, n1077, n1078,
         n1079, n1080, n1081, n1082, n1083, n1084, n1085, n1086, n1087, n1088,
         n1089, n1090;

  DFFASX1_RVT R_861 ( .D(n553), .CLK(IN0), .SETB(IN1), .Q(n1090), .QN() );
  DFFASX1_RVT R_990 ( .D(n560), .CLK(IN0), .SETB(IN1), .Q(n1089), .QN() );
  DFFASX1_RVT R_991 ( .D(n43), .CLK(IN0), .SETB(IN1), .Q(n1088), .QN() );
  DFFARX1_RVT R_992 ( .D(n561), .CLK(IN0), .RSTB(IN1), .Q(n1087), .QN() );
  DFFASX1_RVT R_1079 ( .D(A[4]), .CLK(IN0), .SETB(IN1), .Q(n1086), .QN() );
  DFFARX1_RVT R_1148 ( .D(A[4]), .CLK(IN0), .RSTB(IN1), .Q(n1085), .QN() );
  DFFARX1_RVT R_1204 ( .D(B[9]), .CLK(IN0), .RSTB(IN1), .Q(), .QN(n1082) );
  DFFASX1_RVT R_1205 ( .D(n913), .CLK(IN0), .SETB(IN1), .Q(n1084), .QN() );
  DFFASX1_RVT R_1206 ( .D(A[3]), .CLK(IN0), .SETB(IN1), .Q(n1083), .QN() );
  DFFASX1_HVT R_1255 ( .D(A[5]), .CLK(IN0), .SETB(IN1), .Q(), .QN(n1065) );
  INVX0_RVT U266 ( .A(B[2]), .Y(n1063) );
  INVX0_HVT U268 ( .A(A[1]), .Y(n1067) );
  INVX0_HVT U269 ( .A(A[3]), .Y(n1066) );
  NAND2X0_RVT U271 ( .A1(n1063), .A2(A[2]), .Y(n561) );
  AND2X1_RVT U272 ( .A1(B[2]), .A2(n1064), .Y(n560) );
  OAI21X1_HVT U273 ( .A1(n1089), .A2(n1088), .A3(n1087), .Y(n1074) );
  NAND2X0_HVT U274 ( .A1(n1081), .A2(n1085), .Y(n1069) );
  OR2X1_RVT U276 ( .A1(n1066), .A2(B[3]), .Y(n553) );
  AND2X1_RVT U278 ( .A1(B[1]), .A2(n1067), .Y(n1079) );
  NOR2X0_HVT U281 ( .A1(n1068), .A2(n1070), .Y(n1073) );
  OA21X1_RVT U282 ( .A1(n1090), .A2(n1070), .A3(n1069), .Y(n1071) );
  NAND2X0_HVT U283 ( .A1(n1065), .A2(n1071), .Y(n1072) );
  AO21X1_RVT U284 ( .A1(n1074), .A2(n1073), .A3(n1072), .Y(n1075) );
  AND2X1_RVT U285 ( .A1(n1075), .A2(n1082), .Y(GE_LT_GT_LE) );
  NAND2X0_RVT U286 ( .A1(n1076), .A2(A[0]), .Y(n1080) );
  NAND2X0_RVT U287 ( .A1(n1077), .A2(A[1]), .Y(n1078) );
  OA21X1_RVT U288 ( .A1(n1080), .A2(n1079), .A3(n1078), .Y(n43) );
  DFFARX1_RVT R_1197 ( .D(B[4]), .CLK(IN0), .RSTB(IN1), .Q(), .QN(n1081) );
  NOR2X0_RVT U280 ( .A1(n1081), .A2(n1086), .Y(n1070) );
  NOR2X0_RVT U279 ( .A1(n1084), .A2(n1083), .Y(n1068) );
  INVX0_HVT U267 ( .A(A[2]), .Y(n1064) );
  INVX0_HVT U275 ( .A(B[0]), .Y(n1076) );
  INVX1_RVT U270 ( .A(B[1]), .Y(n1077) );
  INVX0_RVT U277 ( .A(B[3]), .Y(n913) );
endmodule


module norm_DW01_sub_7 ( A, B, CI, DIFF, CO );
  input [20:0] A;
  input [20:0] B;
  output [20:0] DIFF;
  input CI;
  output CO;
  wire   n615, n616, n617, n618, n619, n620, n621, n622, n623, n624, n625;

  XNOR2X1_RVT U96 ( .A1(B[3]), .A2(n618), .Y(DIFF[3]) );
  OR2X1_RVT U97 ( .A1(B[1]), .A2(B[0]), .Y(n616) );
  AND2X1_RVT U101 ( .A1(n619), .A2(B[4]), .Y(DIFF[9]) );
  NAND2X0_RVT U105 ( .A1(n615), .A2(n616), .Y(n618) );
  INVX1_RVT U108 ( .A(B[2]), .Y(n623) );
  NBUFFX2_HVT U109 ( .A(DIFF[9]), .Y(DIFF[20]) );
  NAND2X0_RVT U111 ( .A1(n622), .A2(n625), .Y(n624) );
  XOR2X2_RVT U112 ( .A1(n623), .A2(n624), .Y(DIFF[2]) );
  INVX0_RVT U104 ( .A(n623), .Y(n615) );
  XOR2X2_RVT U98 ( .A1(n619), .A2(n621), .Y(DIFF[4]) );
  NAND2X0_RVT U99 ( .A1(n620), .A2(n618), .Y(n619) );
  INVX0_RVT U100 ( .A(B[0]), .Y(n625) );
  INVX4_RVT U102 ( .A(n617), .Y(n622) );
  INVX0_HVT U103 ( .A(B[3]), .Y(n620) );
  INVX0_HVT U106 ( .A(B[4]), .Y(n621) );
  XOR2X2_RVT U107 ( .A1(n625), .A2(n622), .Y(DIFF[1]) );
  NBUFFX2_RVT U110 ( .A(B[1]), .Y(n617) );
  NBUFFX2_RVT U113 ( .A(B[0]), .Y(DIFF[0]) );
endmodule


module norm ( exp_i, mantissa_i, zero, exp_o, mantissa_o, underflow, IN0, IN1
 );
  input [5:0] exp_i;
  input [21:0] mantissa_i;
  output [4:0] exp_o;
  output [20:0] mantissa_o;
  input zero, IN0, IN1;
  output underflow;
  wire   N13, N14, N15, N16, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63,
         N86, N93, N94, N95, N96, N97, n26, n25, n24, n23, n22, N85, N74, N69,
         N68, N67, N66, N65, N43, N40, N39, N38, N37, N36, N34, N33, N32, N30,
         N27, N26, N25, N24, N23, n1, n3, n10, n11, n13, n14, n15, n16, n17,
         n18, n19, n20, n27, n28, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16,
         SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18,
         SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20,
         SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22,
         SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24,
         SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26,
         SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28,
         SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30,
         SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32,
         SYNOPSYS_UNCONNECTED_33, SYNOPSYS_UNCONNECTED_34,
         SYNOPSYS_UNCONNECTED_35, SYNOPSYS_UNCONNECTED_36,
         SYNOPSYS_UNCONNECTED_37, SYNOPSYS_UNCONNECTED_38,
         SYNOPSYS_UNCONNECTED_39, SYNOPSYS_UNCONNECTED_40,
         SYNOPSYS_UNCONNECTED_41, SYNOPSYS_UNCONNECTED_42,
         SYNOPSYS_UNCONNECTED_43, SYNOPSYS_UNCONNECTED_44,
         SYNOPSYS_UNCONNECTED_45, SYNOPSYS_UNCONNECTED_46,
         SYNOPSYS_UNCONNECTED_47;
  wire   [4:0] shift;

  DFFARX1_RVT R_207 ( .D(N93), .CLK(IN0), .RSTB(IN1), .Q(n79), .QN() );
  DFFARX1_RVT R_213 ( .D(N94), .CLK(IN0), .RSTB(IN1), .Q(n78), .QN() );
  DFFARX1_HVT R_1067 ( .D(mantissa_i[11]), .CLK(IN0), .RSTB(IN1), .Q(n72), 
        .QN(n16) );
  DFFASX1_HVT R_78 ( .D(mantissa_i[20]), .CLK(IN0), .SETB(IN1), .Q(n90), .QN()
         );
  DFFASX1_HVT R_140 ( .D(n98), .CLK(IN0), .SETB(IN1), .Q(n86), .QN() );
  DFFASX1_HVT R_141 ( .D(n97), .CLK(IN0), .SETB(IN1), .Q(n85), .QN() );
  DFFASX1_HVT R_144 ( .D(n103), .CLK(IN0), .SETB(IN1), .Q(n84), .QN() );
  DFFASX1_HVT R_145 ( .D(n102), .CLK(IN0), .SETB(IN1), .Q(n83), .QN() );
  DFFASX1_HVT R_152 ( .D(n94), .CLK(IN0), .SETB(IN1), .Q(n82), .QN() );
  DFFASX1_HVT R_154 ( .D(n95), .CLK(IN0), .SETB(IN1), .Q(n81), .QN() );
  DFFASX1_HVT R_157 ( .D(n96), .CLK(IN0), .SETB(IN1), .Q(n80), .QN() );
  DFFASX1_HVT R_1064 ( .D(n104), .CLK(IN0), .SETB(IN1), .Q(n74), .QN() );
  DFFASX1_HVT R_80 ( .D(n28), .CLK(IN0), .SETB(IN1), .Q(n88), .QN() );
  DFFASX1_HVT R_1058 ( .D(n99), .CLK(IN0), .SETB(IN1), .Q(n77), .QN(n11) );
  DFFARX1_HVT R_20 ( .D(n105), .CLK(IN0), .RSTB(IN1), .Q(), .QN(n14) );
  DFFASX1_HVT R_1063 ( .D(n100), .CLK(IN0), .SETB(IN1), .Q(n75), .QN(n15) );
  DFFASX1_HVT R_1062 ( .D(n101), .CLK(IN0), .SETB(IN1), .Q(n76), .QN(n13) );
  NBUFFX2_RVT U3 ( .A(shift[1]), .Y(n1) );
  AO222X1_RVT U4 ( .A1(n77), .A2(N55), .A3(n76), .A4(n72), .A5(n75), .A6(n73), 
        .Y(mantissa_o[11]) );
  INVX0_HVT U6 ( .A(exp_i[5]), .Y(n45) );
  INVX0_RVT U7 ( .A(n100), .Y(n43) );
  INVX0_RVT U9 ( .A(underflow), .Y(n39) );
  INVX0_RVT U10 ( .A(mantissa_i[21]), .Y(n37) );
  NAND3X0_RVT U13 ( .A1(n41), .A2(exp_i[3]), .A3(n17), .Y(n44) );
  INVX0_RVT U15 ( .A(exp_i[3]), .Y(n35) );
  NBUFFX2_HVT U16 ( .A(exp_i[2]), .Y(n17) );
  NOR3X0_RVT U24 ( .A1(mantissa_i[21]), .A2(mantissa_i[20]), .A3(underflow), 
        .Y(n99) );
  OAI222X1_RVT U25 ( .A1(n11), .A2(n10), .A3(n13), .A4(n14), .A5(n15), .A6(n16), .Y(mantissa_o[10]) );
  INVX0_RVT U26 ( .A(N54), .Y(n10) );
  AO222X1_RVT U27 ( .A1(n77), .A2(N59), .A3(n76), .A4(n69), .A5(n75), .A6(n66), 
        .Y(mantissa_o[15]) );
  AO222X1_RVT U28 ( .A1(n77), .A2(N57), .A3(n76), .A4(n71), .A5(n75), .A6(n70), 
        .Y(mantissa_o[13]) );
  AO222X1_RVT U29 ( .A1(n77), .A2(N56), .A3(n76), .A4(n73), .A5(n75), .A6(n71), 
        .Y(mantissa_o[12]) );
  AO222X1_RVT U30 ( .A1(n77), .A2(N58), .A3(n76), .A4(n70), .A5(n75), .A6(n69), 
        .Y(mantissa_o[14]) );
  AND3X1_RVT U31 ( .A1(exp_i[4]), .A2(exp_i[1]), .A3(exp_i[0]), .Y(n41) );
  NAND2X0_RVT U34 ( .A1(n101), .A2(exp_i[4]), .Y(n102) );
  NAND2X0_HVT U35 ( .A1(N16), .A2(n100), .Y(n103) );
  NAND2X0_RVT U36 ( .A1(n101), .A2(exp_i[3]), .Y(n97) );
  NAND2X0_RVT U37 ( .A1(N15), .A2(n100), .Y(n98) );
  NAND3X0_HVT U40 ( .A1(N86), .A2(n77), .A3(n78), .Y(n46) );
  NAND3X0_HVT U41 ( .A1(N86), .A2(n77), .A3(N95), .Y(n47) );
  NBUFFX2_RVT U43 ( .A(shift[3]), .Y(n32) );
  INVX1_RVT U44 ( .A(exp_i[0]), .Y(n40) );
  NAND4X0_RVT U45 ( .A1(n40), .A2(n35), .A3(n34), .A4(n33), .Y(n36) );
  NAND2X0_RVT U46 ( .A1(n37), .A2(mantissa_i[20]), .Y(n38) );
  OR2X1_RVT U47 ( .A1(n38), .A2(underflow), .Y(n42) );
  INVX1_RVT U48 ( .A(n42), .Y(n101) );
  AND2X1_RVT U49 ( .A1(n39), .A2(mantissa_i[21]), .Y(n100) );
  MUX21X1_RVT U50 ( .A1(n42), .A2(n43), .S0(n40), .Y(n94) );
  NAND3X0_RVT U52 ( .A1(n46), .A2(n81), .A3(n74), .Y(exp_o[1]) );
  NAND3X0_RVT U53 ( .A1(n47), .A2(n80), .A3(n74), .Y(exp_o[2]) );
  NAND3X0_RVT U54 ( .A1(n48), .A2(n74), .A3(n82), .Y(exp_o[0]) );
  AO222X1_RVT U70 ( .A1(n77), .A2(N60), .A3(n76), .A4(n66), .A5(n75), .A6(n67), 
        .Y(mantissa_o[16]) );
  AO222X1_RVT U71 ( .A1(n77), .A2(N61), .A3(n76), .A4(n67), .A5(n75), .A6(n68), 
        .Y(mantissa_o[17]) );
  AO222X1_RVT U72 ( .A1(n77), .A2(N62), .A3(n76), .A4(n68), .A5(n75), .A6(n91), 
        .Y(mantissa_o[18]) );
  AO222X1_RVT U73 ( .A1(n77), .A2(N63), .A3(n90), .A4(n89), .A5(n88), .A6(n87), 
        .Y(mantissa_o[19]) );
  AOI22X1_RVT U74 ( .A1(n100), .A2(N13), .A3(n101), .A4(exp_i[1]), .Y(n95) );
  AOI22X1_RVT U75 ( .A1(n100), .A2(N14), .A3(n101), .A4(n17), .Y(n96) );
  NAND3X0_RVT U76 ( .A1(N86), .A2(n77), .A3(N96), .Y(n49) );
  NAND4X0_RVT U77 ( .A1(n49), .A2(n74), .A3(n86), .A4(n85), .Y(exp_o[3]) );
  NAND3X0_RVT U78 ( .A1(N86), .A2(n77), .A3(N97), .Y(n50) );
  NAND4X0_RVT U79 ( .A1(n50), .A2(n74), .A3(n84), .A4(n83), .Y(exp_o[4]) );
  lead_detector_WIDTH20 l1 ( .in({mantissa_i[19:1], 1'b0}), .out({
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, 
        SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, 
        SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, 
        SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, shift}) );
  norm_DW01_inc_J1_0 add_x_2 ( .A(exp_i[4:0]), .SUM({N16, N15, N14, N13, 
        SYNOPSYS_UNCONNECTED_16}) );
  norm_DW_leftsh_0 ash_4 ( .A({1'b0, n28, n19, mantissa_i[17:13], n27, 
        mantissa_i[11], n105, mantissa_i[9:7], n106, mantissa_i[5], n20, n3, 
        n31, n18, mantissa_i[0]}), .SH({N43, N43, N43, N43, N34, N43, N43, N43, 
        N43, N43, N43, N43, 1'b0, 1'b0, N40, N39, N38, N37, N36, 1'b0, N34, 
        N33, N32, 1'b0, N30, 1'b0, 1'b0, N27, N26, N25, N24, N23}), .B({
        SYNOPSYS_UNCONNECTED_17, N63, N62, N61, N60, N59, N58, N57, N56, N55, 
        N54, SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, 
        SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21, 
        SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23, 
        SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25, 
        SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27}), .IN0(IN0), .IN1(
        IN1) );
  norm_DW01_sub_4 sub_x_3 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 
        1'b0}), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, shift[4], n32, n108, n1, shift[0]}), .CI(1'b0), .DIFF({N43, SYNOPSYS_UNCONNECTED_28, SYNOPSYS_UNCONNECTED_29, N40, 
        N39, N38, N37, N36, SYNOPSYS_UNCONNECTED_30, N34, N33, N32, 
        SYNOPSYS_UNCONNECTED_31, N30, SYNOPSYS_UNCONNECTED_32, 
        SYNOPSYS_UNCONNECTED_33, N27, N26, N25, N24, N23}), .CO(), .IN0(IN0), 
        .IN1(IN1) );
  norm_DW01_add_1 add_x_14 ( .A(exp_i[4:0]), .B({shift[4:3], n108, n1, N65}), 
        .CI(1'b0), .SUM({n26, n25, n24, n23, n22}), .CO(), .IN0(IN0), .IN1(IN1) );
  norm_DW01_sub_5 sub_x_15 ( .A({n26, n25, n24, n23, n22}), .B({1'b1, 1'b0, 
        1'b1, 1'b0, 1'b0}), .CI(1'b0), .DIFF({N97, N96, N95, N94, N93}), .CO()
         );
  norm_DW_cmp_3 gt_x_6 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, exp_i[5:3], n17, exp_i[1:0]}), .B(
        {N85, N85, N85, N85, N85, N85, N85, N85, N85, N85, N85, N85, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N74, 1'b0, 1'b0, 
        1'b0, 1'b0, N69, N68, N67, N66, N65}), .TC(1'b0), .GE_LT(1'b0), 
        .GE_GT_EQ(1'b1), .GE_LT_GT_LE(N86), .EQ_NE(), .IN0(IN0), .IN1(IN1) );
  norm_DW01_sub_7 sub_x_5 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 
        1'b0}), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, shift[4], n32, shift[2:0]}), .CI(
        1'b0), .DIFF({N85, SYNOPSYS_UNCONNECTED_34, SYNOPSYS_UNCONNECTED_35, 
        SYNOPSYS_UNCONNECTED_36, SYNOPSYS_UNCONNECTED_37, 
        SYNOPSYS_UNCONNECTED_38, SYNOPSYS_UNCONNECTED_39, 
        SYNOPSYS_UNCONNECTED_40, SYNOPSYS_UNCONNECTED_41, 
        SYNOPSYS_UNCONNECTED_42, SYNOPSYS_UNCONNECTED_43, N74, 
        SYNOPSYS_UNCONNECTED_44, SYNOPSYS_UNCONNECTED_45, 
        SYNOPSYS_UNCONNECTED_46, SYNOPSYS_UNCONNECTED_47, N69, N68, N67, N66, 
        N65}), .CO() );
  DFFARX1_HVT R_1068 ( .D(mantissa_i[13]), .CLK(IN0), .RSTB(IN1), .Q(n71), 
        .QN() );
  DFFARX1_HVT R_1069 ( .D(mantissa_i[14]), .CLK(IN0), .RSTB(IN1), .Q(n70), 
        .QN() );
  DFFARX1_HVT R_1070 ( .D(mantissa_i[15]), .CLK(IN0), .RSTB(IN1), .Q(n69), 
        .QN() );
  DFFARX1_HVT R_1066 ( .D(n27), .CLK(IN0), .RSTB(IN1), .Q(n73), .QN() );
  DFFARX1_HVT R_1072 ( .D(mantissa_i[17]), .CLK(IN0), .RSTB(IN1), .Q(n67), 
        .QN() );
  DFFARX1_HVT R_1073 ( .D(mantissa_i[16]), .CLK(IN0), .RSTB(IN1), .Q(n66), 
        .QN() );
  DFFARX1_HVT R_1071 ( .D(mantissa_i[18]), .CLK(IN0), .RSTB(IN1), .Q(n68), 
        .QN() );
  DFFARX1_HVT R_75 ( .D(mantissa_i[19]), .CLK(IN0), .RSTB(IN1), .Q(n91), .QN()
         );
  DFFARX1_HVT R_79 ( .D(n100), .CLK(IN0), .RSTB(IN1), .Q(n89), .QN() );
  DFFARX1_HVT R_81 ( .D(n101), .CLK(IN0), .RSTB(IN1), .Q(n87), .QN() );
  INVX0_HVT U5 ( .A(exp_i[2]), .Y(n34) );
  NBUFFX2_HVT U32 ( .A(mantissa_i[4]), .Y(n20) );
  NOR4X1_RVT U38 ( .A1(exp_i[5]), .A2(exp_i[4]), .A3(n36), .A4(zero), .Y(
        underflow) );
  NAND3X0_RVT U39 ( .A1(N86), .A2(n77), .A3(n79), .Y(n48) );
  INVX1_RVT U8 ( .A(shift[2]), .Y(n107) );
  NBUFFX2_HVT U11 ( .A(mantissa_i[18]), .Y(n19) );
  NBUFFX2_HVT U12 ( .A(mantissa_i[19]), .Y(n28) );
  NBUFFX2_HVT U14 ( .A(mantissa_i[2]), .Y(n31) );
  NBUFFX2_HVT U17 ( .A(mantissa_i[1]), .Y(n18) );
  NBUFFX2_HVT U33 ( .A(mantissa_i[12]), .Y(n27) );
  NBUFFX2_HVT U42 ( .A(mantissa_i[6]), .Y(n106) );
  NBUFFX2_HVT U51 ( .A(mantissa_i[3]), .Y(n3) );
  INVX0_HVT U82 ( .A(exp_i[1]), .Y(n33) );
  AO22X1_HVT U83 ( .A1(n45), .A2(n44), .A3(n43), .A4(n42), .Y(n104) );
  NBUFFX2_HVT U84 ( .A(mantissa_i[10]), .Y(n105) );
  INVX1_RVT U85 ( .A(n107), .Y(n108) );
endmodule


module valid ( exp, zero, overflow, underflow, IN0, IN1 );
  input [4:0] exp;
  input zero, IN0, IN1;
  output overflow, underflow;
  wire   n2, n3, n4, n5, n8, n9;

  DFFASX1_HVT R_1221 ( .D(exp[0]), .CLK(IN0), .SETB(IN1), .Q(n8), .QN() );
  NOR3X0_RVT U1 ( .A1(n4), .A2(n3), .A3(n2), .Y(underflow) );
  OR2X1_RVT U2 ( .A1(zero), .A2(exp[0]), .Y(n4) );
  OR2X1_RVT U3 ( .A1(exp[2]), .A2(exp[1]), .Y(n3) );
  OR2X1_RVT U4 ( .A1(exp[4]), .A2(exp[3]), .Y(n2) );
  AND2X1_HVT U5 ( .A1(n8), .A2(n5), .Y(overflow) );
  AND4X1_RVT U6 ( .A1(exp[4]), .A2(exp[3]), .A3(exp[1]), .A4(exp[2]), .Y(n9)
         );
  DFFARX1_HVT R_1222 ( .D(n9), .CLK(IN0), .RSTB(IN1), .Q(n5), .QN() );
endmodule


module fpmul ( A, B, clk, rst_n, Product, overflow, underflow );
  input [15:0] A;
  input [15:0] B;
  output [15:0] Product;
  input clk, rst_n;
  output overflow, underflow;
  wire   p2_sign, p2_zero, c_sign, c_zero, p3_sign, p3_zero, p3_underflow,
         n_underflow, underflow_ur, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n90, n91, n93, n94, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7,
         SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9,
         SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11;
  wire   [5:0] p2_exp;
  wire   [14:0] p2_mantissa;
  wire   [5:0] c_exp;
  wire   [21:0] c_mantissa;
  wire   [4:0] n_exp;
  wire   [19:10] n_mantissa;

  DFFARX1_RVT p2_exp_reg_5_ ( .D(c_exp[5]), .CLK(clk), .RSTB(rst_n), .Q(
        p2_exp[5]), .QN() );
  DFFARX1_RVT p2_exp_reg_4_ ( .D(c_exp[4]), .CLK(clk), .RSTB(rst_n), .Q(
        p2_exp[4]), .QN() );
  DFFARX1_RVT p2_mantissa_reg_7_ ( .D(c_mantissa[7]), .CLK(clk), .RSTB(rst_n), 
        .Q(), .QN(n84) );
  DFFARX1_RVT p2_mantissa_reg_12_ ( .D(c_mantissa[12]), .CLK(clk), .RSTB(rst_n), .Q(p2_mantissa[12]), .QN() );
  DFFARX1_RVT p2_mantissa_reg_11_ ( .D(c_mantissa[11]), .CLK(clk), .RSTB(rst_n), .Q(p2_mantissa[11]), .QN() );
  DFFARX1_RVT p2_mantissa_reg_10_ ( .D(c_mantissa[10]), .CLK(clk), .RSTB(rst_n), .Q(p2_mantissa[10]), .QN() );
  DFFARX1_RVT p2_mantissa_reg_9_ ( .D(c_mantissa[9]), .CLK(clk), .RSTB(rst_n), 
        .Q(p2_mantissa[9]), .QN() );
  DFFARX1_RVT p2_mantissa_reg_13_ ( .D(c_mantissa[13]), .CLK(clk), .RSTB(rst_n), .Q(), .QN(n86) );
  DFFARX1_RVT p2_mantissa_reg_1_ ( .D(c_mantissa[1]), .CLK(clk), .RSTB(rst_n), 
        .Q(), .QN(n93) );
  DFFARX1_RVT p2_mantissa_reg_14_ ( .D(c_mantissa[14]), .CLK(clk), .RSTB(rst_n), .Q(p2_mantissa[14]), .QN() );
  DFFARX1_RVT p2_mantissa_reg_6_ ( .D(c_mantissa[6]), .CLK(clk), .RSTB(rst_n), 
        .Q(p2_mantissa[6]), .QN() );
  DFFARX1_RVT p2_mantissa_reg_4_ ( .D(c_mantissa[4]), .CLK(clk), .RSTB(rst_n), 
        .Q(), .QN(n77) );
  DFFARX1_RVT p2_mantissa_reg_3_ ( .D(c_mantissa[3]), .CLK(clk), .RSTB(rst_n), 
        .Q(p2_mantissa[3]), .QN() );
  DFFARX1_RVT p2_mantissa_reg_15_ ( .D(c_mantissa[15]), .CLK(clk), .RSTB(rst_n), .Q(n83), .QN() );
  DFFARX1_RVT p2_mantissa_reg_5_ ( .D(c_mantissa[5]), .CLK(clk), .RSTB(rst_n), 
        .Q(), .QN(n81) );
  DFFARX1_RVT Product_reg_9_ ( .D(n_mantissa[19]), .CLK(clk), .RSTB(rst_n), 
        .Q(Product[9]), .QN() );
  DFFARX1_RVT Product_reg_8_ ( .D(n_mantissa[18]), .CLK(clk), .RSTB(rst_n), 
        .Q(Product[8]), .QN() );
  DFFARX1_RVT Product_reg_7_ ( .D(n_mantissa[17]), .CLK(clk), .RSTB(rst_n), 
        .Q(Product[7]), .QN() );
  DFFARX1_RVT Product_reg_6_ ( .D(n_mantissa[16]), .CLK(clk), .RSTB(rst_n), 
        .Q(Product[6]), .QN() );
  DFFARX1_RVT R_1081 ( .D(underflow_ur), .CLK(clk), .RSTB(rst_n), .Q(n90), 
        .QN() );
  DFFASRX1_HVT p2_zero_reg ( .D(c_zero), .CLK(clk), .RSTB(1'b1), .SETB(rst_n), 
        .Q(p2_zero), .QN() );
  DFFASX1_RVT p2_mantissa_reg_8_ ( .D(n88), .CLK(clk), .SETB(rst_n), .Q(), 
        .QN(p2_mantissa[8]) );
  DFFARX1_RVT Product_reg_2_ ( .D(n_mantissa[12]), .CLK(clk), .RSTB(rst_n), 
        .Q(Product[2]), .QN() );
  DFFARX1_RVT Product_reg_5_ ( .D(n_mantissa[15]), .CLK(clk), .RSTB(rst_n), 
        .Q(Product[5]), .QN() );
  DFFARX1_RVT Product_reg_3_ ( .D(n_mantissa[13]), .CLK(clk), .RSTB(rst_n), 
        .Q(Product[3]), .QN() );
  DFFARX1_RVT Product_reg_4_ ( .D(n_mantissa[14]), .CLK(clk), .RSTB(rst_n), 
        .Q(Product[4]), .QN() );
  DFFARX1_RVT p2_exp_reg_1_ ( .D(c_exp[1]), .CLK(clk), .RSTB(rst_n), .Q(
        p2_exp[1]), .QN() );
  DFFARX1_RVT p2_exp_reg_3_ ( .D(c_exp[3]), .CLK(clk), .RSTB(rst_n), .Q(
        p2_exp[3]), .QN() );
  INVX1_RVT U40 ( .A(n77), .Y(n78) );
  INVX1_RVT U42 ( .A(n81), .Y(n82) );
  INVX1_RVT U43 ( .A(n84), .Y(n85) );
  OR2X1_HVT U44 ( .A1(n91), .A2(n90), .Y(underflow) );
  compute C1 ( .A(A), .B(B), .sign(c_sign), .exp(c_exp), .mantissa(c_mantissa), 
        .zero(c_zero), .IN0(clk), .IN1(rst_n) );
  norm N1 ( .exp_i(p2_exp), .mantissa_i({c_mantissa[21:16], n83, 
        p2_mantissa[14], n87, p2_mantissa[12:8], n85, p2_mantissa[6], n82, n78, 
        p2_mantissa[3], n80, n94, p2_mantissa[0]}), .zero(p2_zero), .exp_o(
        n_exp), .mantissa_o({SYNOPSYS_UNCONNECTED_1, n_mantissa, 
        SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, 
        SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11}), .underflow(
        n_underflow), .IN0(clk), .IN1(rst_n) );
  valid V1 ( .exp(n_exp), .zero(p3_zero), .overflow(overflow), .underflow(
        underflow_ur), .IN0(clk), .IN1(rst_n) );
  DFFASRX1_HVT p3_zero_reg ( .D(p2_zero), .CLK(clk), .RSTB(1'b1), .SETB(rst_n), 
        .Q(p3_zero), .QN() );
  DFFARX1_HVT p3_sign_reg ( .D(p2_sign), .CLK(clk), .RSTB(rst_n), .Q(p3_sign), 
        .QN() );
  DFFARX1_HVT R_1080 ( .D(p3_underflow), .CLK(clk), .RSTB(rst_n), .Q(n91), 
        .QN() );
  DFFARX1_HVT Product_reg_15_ ( .D(p3_sign), .CLK(clk), .RSTB(rst_n), .Q(
        Product[15]), .QN() );
  DFFARX1_HVT p2_sign_reg ( .D(c_sign), .CLK(clk), .RSTB(rst_n), .Q(p2_sign), 
        .QN() );
  DFFARX1_HVT p2_mantissa_reg_0_ ( .D(c_mantissa[0]), .CLK(clk), .RSTB(rst_n), 
        .Q(p2_mantissa[0]), .QN() );
  DFFARX1_HVT p3_underflow_reg ( .D(n_underflow), .CLK(clk), .RSTB(rst_n), .Q(
        p3_underflow), .QN() );
  DFFARX1_HVT Product_reg_13_ ( .D(n_exp[3]), .CLK(clk), .RSTB(rst_n), .Q(
        Product[13]), .QN() );
  DFFARX1_HVT Product_reg_12_ ( .D(n_exp[2]), .CLK(clk), .RSTB(rst_n), .Q(
        Product[12]), .QN() );
  DFFARX1_HVT Product_reg_11_ ( .D(n_exp[1]), .CLK(clk), .RSTB(rst_n), .Q(
        Product[11]), .QN() );
  DFFARX1_HVT Product_reg_10_ ( .D(n_exp[0]), .CLK(clk), .RSTB(rst_n), .Q(
        Product[10]), .QN() );
  DFFARX1_HVT Product_reg_14_ ( .D(n_exp[4]), .CLK(clk), .RSTB(rst_n), .Q(
        Product[14]), .QN() );
  DFFARX1_HVT Product_reg_1_ ( .D(n_mantissa[11]), .CLK(clk), .RSTB(rst_n), 
        .Q(Product[1]), .QN() );
  DFFARX1_HVT p2_exp_reg_0_ ( .D(c_exp[0]), .CLK(clk), .RSTB(rst_n), .Q(
        p2_exp[0]), .QN() );
  DFFARX1_HVT Product_reg_0_ ( .D(n_mantissa[10]), .CLK(clk), .RSTB(rst_n), 
        .Q(Product[0]), .QN() );
  DFFARX1_HVT p2_exp_reg_2_ ( .D(c_exp[2]), .CLK(clk), .RSTB(rst_n), .Q(
        p2_exp[2]), .QN() );
  INVX0_HVT U38 ( .A(c_mantissa[8]), .Y(n88) );
  DFFARX2_RVT p2_mantissa_reg_2_ ( .D(c_mantissa[2]), .CLK(clk), .RSTB(rst_n), 
        .Q(), .QN(n79) );
  INVX2_RVT U39 ( .A(n86), .Y(n87) );
  INVX2_RVT U41 ( .A(n79), .Y(n80) );
  INVX1_RVT U46 ( .A(n93), .Y(n94) );
endmodule

