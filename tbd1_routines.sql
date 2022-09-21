-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tbd1
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `maltiempo`
--

DROP TABLE IF EXISTS `maltiempo`;
/*!50001 DROP VIEW IF EXISTS `maltiempo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `maltiempo` AS SELECT 
 1 AS `IdPaquete`,
 1 AS `FechaEntrega`,
 1 AS `FechaEstimada`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `mayorpcliente`
--

DROP TABLE IF EXISTS `mayorpcliente`;
/*!50001 DROP VIEW IF EXISTS `mayorpcliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mayorpcliente` AS SELECT 
 1 AS `IDcliente`,
 1 AS `Nombre`,
 1 AS `PAQUETES PEDIDOS`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `gastocliente`
--

DROP TABLE IF EXISTS `gastocliente`;
/*!50001 DROP VIEW IF EXISTS `gastocliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `gastocliente` AS SELECT 
 1 AS `IDcliente`,
 1 AS `Nombre`,
 1 AS `TOTAL GASTADO`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ultimaentrega`
--

DROP TABLE IF EXISTS `ultimaentrega`;
/*!50001 DROP VIEW IF EXISTS `ultimaentrega`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ultimaentrega` AS SELECT 
 1 AS `Nombre`,
 1 AS `Idcliente`,
 1 AS `IdPaquete`,
 1 AS `Observacion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `choques1`
--

DROP TABLE IF EXISTS `choques1`;
/*!50001 DROP VIEW IF EXISTS `choques1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `choques1` AS SELECT 
 1 AS `Nombre`,
 1 AS `Idcliente`,
 1 AS `IdPaquete`,
 1 AS `Observacion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `calleconmasclientes`
--

DROP TABLE IF EXISTS `calleconmasclientes`;
/*!50001 DROP VIEW IF EXISTS `calleconmasclientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `calleconmasclientes` AS SELECT 
 1 AS `IDcliente`,
 1 AS `Nombre`,
 1 AS `CALLE`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `maltiempo`
--

/*!50001 DROP VIEW IF EXISTS `maltiempo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `maltiempo` AS select `paquetes`.`IdPaquete` AS `IdPaquete`,`paquetes`.`FechaEntrega` AS `FechaEntrega`,`paquetes`.`FechaEstimada` AS `FechaEstimada` from `paquetes` where (`paquetes`.`FechaEntrega` <> `paquetes`.`FechaEstimada`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mayorpcliente`
--

/*!50001 DROP VIEW IF EXISTS `mayorpcliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mayorpcliente` AS select `a`.`IDcliente` AS `IDcliente`,`c`.`Nombre` AS `Nombre`,count(`b`.`IdPaquete`) AS `PAQUETES PEDIDOS` from ((`cliente` `a` join `paquetes` `b`) join `persona` `c`) where ((`a`.`IDcliente` = `b`.`Idcliente`) and (`c`.`IDPersona` = `a`.`IDPersona`) and ((`b`.`FechaEntrega` + interval -(365) day) < '2022-12-31')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gastocliente`
--

/*!50001 DROP VIEW IF EXISTS `gastocliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gastocliente` AS select `a`.`IDcliente` AS `IDcliente`,`c`.`Nombre` AS `Nombre`,sum(`b`.`Pagopaquete`) AS `TOTAL GASTADO` from ((`cliente` `a` join `paquetes` `b`) join `persona` `c`) where ((`a`.`IDcliente` = `b`.`Idcliente`) and (`c`.`IDPersona` = `a`.`IDPersona`)) group by `c`.`Nombre` order by sum(`b`.`Pagopaquete`) desc limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ultimaentrega`
--

/*!50001 DROP VIEW IF EXISTS `ultimaentrega`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ultimaentrega` AS select `a`.`Nombre` AS `Nombre`,`b`.`IDcliente` AS `Idcliente`,`c`.`IdPaquete` AS `IdPaquete`,`c`.`Observacion` AS `Observacion` from ((`persona` `a` join `cliente` `b`) join `paquetes` `c`) where ((`a`.`IDPersona` = `b`.`IDPersona`) and (`c`.`Idcliente` = `b`.`IDcliente`) and (`c`.`Idcamion` = 1721) and (`c`.`EstadoP` = 'ENTREGADO')) order by `c`.`FechaEntrega` desc limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `choques1`
--

/*!50001 DROP VIEW IF EXISTS `choques1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `choques1` AS select `a`.`Nombre` AS `Nombre`,`b`.`IDcliente` AS `Idcliente`,`c`.`IdPaquete` AS `IdPaquete`,`c`.`Observacion` AS `Observacion` from ((`persona` `a` join `cliente` `b`) join `paquetes` `c`) where ((`a`.`IDPersona` = `b`.`IDPersona`) and (`c`.`Idcliente` = `b`.`IDcliente`) and (`c`.`Idcamion` = 1721) and (`c`.`EstadoP` = 'NO ENTREGADO')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `calleconmasclientes`
--

/*!50001 DROP VIEW IF EXISTS `calleconmasclientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `calleconmasclientes` AS select `a`.`IDcliente` AS `IDcliente`,`c`.`Nombre` AS `Nombre`,count(`c`.`Direccion`) AS `CALLE` from (`cliente` `a` join `persona` `c`) where (`c`.`IDPersona` = `a`.`IDPersona`) group by `c`.`Nombre` order by count(`c`.`Direccion`) desc limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-20 18:38:12
