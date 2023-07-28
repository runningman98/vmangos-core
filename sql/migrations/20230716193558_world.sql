DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20230716193558');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20230716193558');
-- Add your query below.


-- Ancient Relic / Loose Soil
SET @OGUID = 39286;
SET @PTEMPLATE = 9338;

DELETE FROM `pool_template` WHERE `entry` IN (152, 162, 1599, 1598);
DELETE FROM `gameobject` WHERE `guid` IN (9733, 9734, 9735, 9736, 9737, 9738, 9739, 9740, 9741, 9742, 9743, 9744, 9745, 9746, 9747, 9748, 65940, 65941, 65942, 65943, 65944, 65945, 65946, 65947, 65948, 65949, 65950, 65951);
DELETE FROM `pool_gameobject_template` WHERE `pool_entry` IN (152, 162, 1599, 1598);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES
(@OGUID+1, 331, 0, -3308.06, -1899.06, 31.7356, 4.17134, 0, 0, -0.870356, 0.492424, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+2, 331, 0, -3373.47, -1810.15, 16.2407, 2.67035, 0, 0, 0.972369, 0.233448, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+3, 331, 0, -3391.45, -1783.01, 25.2344, 3.31614, 0, 0, -0.996194, 0.087165, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+4, 331, 0, -3392.07, -1857.27, 25.8701, 0.331611, 0, 0, 0.165047, 0.986286, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+5, 331, 0, -3393.8, -1825.06, 24.913, 1.09956, 0, 0, 0.522498, 0.85264, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+6, 331, 0, -3408.6, -1807.26, 17.8659, 4.88692, 0, 0, -0.642787, 0.766045, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+7, 331, 0, -3420.89, -1856.84, 16.9872, 2.51327, 0, 0, 0.951056, 0.309017, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+8, 331, 0, -3425.58, -1758.09, 28.0262, 4.17134, 0, 0, -0.870356, 0.492424, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+9, 331, 0, -3432.51, -1790.23, 16.3942, 4.15388, 0, 0, -0.874619, 0.48481, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+10, 331, 0, -3457.06, -1770.1, 16.3745, 5.70723, 0, 0, -0.284015, 0.95882, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+11, 331, 0, -3461.63, -1803.47, 25.7061, 4.45059, 0, 0, -0.793353, 0.608762, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+12, 331, 0, -3469.87, -1836.43, 17.2882, 0, 0, 0, 0, 1, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+13, 331, 0, -3470.78, -1863.77, 24.0417, 5.49779, 0, 0, -0.382683, 0.92388, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+14, 331, 0, -3485.88, -1727.12, 34.5372, 0.0349062, 0, 0, 0.0174522, 0.999848, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+15, 331, 0, -3490.14, -1787.05, 17.0477, 1.0821, 0, 0, 0.515038, 0.857168, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+16, 331, 0, -3494.47, -1883.25, 16.2407, 5.18363, 0, 0, -0.522498, 0.85264, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+17, 331, 0, -3498.22, -1844.42, 16.4291, 0, 0, 0, 0, 1, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+18, 331, 0, -3500.26, -1766.83, 16.417, 2.67035, 0, 0, 0.972369, 0.233448, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+19, 331, 0, -3522.12, -1799.96, 23.9379, 4.46804, 0, 0, -0.788011, 0.615662, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+20, 331, 0, -3525.93, -1884.6, 24.2428, 5.70723, 0, 0, -0.284015, 0.95882, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+21, 331, 0, -3537.32, -1830.63, 16.2407, 2.75761, 0, 0, 0.981627, 0.190812, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+22, 331, 0, -3549.77, -1723.89, 81.994, 2.75761, 0, 0, 0.981627, 0.190812, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+23, 331, 0, -3550.56, -1805.25, 27.3557, 5.93412, 0, 0, -0.173648, 0.984808, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+24, 331, 0, -3556.36, -1744.41, 78.9947, 6.21337, 0, 0, -0.0348988, 0.999391, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+25, 331, 0, -3568.4, -1845.56, 24.3617, 3.31614, 0, 0, -0.996194, 0.087165, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+26, 331, 0, -3563.83, -1767.35, 79.1001, 4.26498, 0, 0, 0.846354, -0.53262, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+27, 331, 0, -3371.96, -1846.54, 16.5207, -1.8326, 0, 0, 0.793353, -0.608761, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+28, 331, 0, -3444.59, -1833.84, 24.9106, -1.39626, 0, 0, 0.642788, -0.766044, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+29, 333, 0, -3308.06, -1899.06, 31.7356, 4.17134, 0, 0, -0.870356, 0.492424, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+30, 333, 0, -3373.47, -1810.15, 16.2407, 2.67035, 0, 0, 0.972369, 0.233448, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+31, 333, 0, -3391.45, -1783.01, 25.2344, 3.31614, 0, 0, -0.996194, 0.087165, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+32, 333, 0, -3392.07, -1857.27, 25.8701, 0.331611, 0, 0, 0.165047, 0.986286, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+33, 333, 0, -3393.8, -1825.06, 24.913, 1.09956, 0, 0, 0.522498, 0.85264, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+34, 333, 0, -3408.6, -1807.26, 17.8659, 4.88692, 0, 0, -0.642787, 0.766045, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+35, 333, 0, -3420.89, -1856.84, 16.9872, 2.51327, 0, 0, 0.951056, 0.309017, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+36, 333, 0, -3425.58, -1758.09, 28.0262, 4.17134, 0, 0, -0.870356, 0.492424, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+37, 333, 0, -3432.51, -1790.23, 16.3942, 4.15388, 0, 0, -0.874619, 0.48481, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+38, 333, 0, -3457.06, -1770.1, 16.3745, 5.70723, 0, 0, -0.284015, 0.95882, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+39, 333, 0, -3461.63, -1803.47, 25.7061, 4.45059, 0, 0, -0.793353, 0.608762, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+40, 333, 0, -3469.87, -1836.43, 17.2882, 0, 0, 0, 0, 1, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+41, 333, 0, -3470.78, -1863.77, 24.0417, 5.49779, 0, 0, -0.382683, 0.92388, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+42, 333, 0, -3485.88, -1727.12, 34.5372, 0.0349062, 0, 0, 0.0174522, 0.999848, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+43, 333, 0, -3490.14, -1787.05, 17.0477, 1.0821, 0, 0, 0.515038, 0.857168, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+44, 333, 0, -3494.47, -1883.25, 16.2407, 5.18363, 0, 0, -0.522498, 0.85264, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+45, 333, 0, -3498.22, -1844.42, 16.4291, 0, 0, 0, 0, 1, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+46, 333, 0, -3500.26, -1766.83, 16.417, 2.67035, 0, 0, 0.972369, 0.233448, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+47, 333, 0, -3522.12, -1799.96, 23.9379, 4.46804, 0, 0, -0.788011, 0.615662, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+48, 333, 0, -3525.93, -1884.6, 24.2428, 5.70723, 0, 0, -0.284015, 0.95882, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+49, 333, 0, -3537.32, -1830.63, 16.2407, 2.75761, 0, 0, 0.981627, 0.190812, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+50, 333, 0, -3549.77, -1723.89, 81.994, 2.75761, 0, 0, 0.981627, 0.190812, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+51, 333, 0, -3550.56, -1805.25, 27.3557, 5.93412, 0, 0, -0.173648, 0.984808, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+52, 333, 0, -3556.36, -1744.41, 78.9947, 6.21337, 0, 0, -0.0348988, 0.999391, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+53, 333, 0, -3568.4, -1845.56, 24.3617, 3.31614, 0, 0, -0.996194, 0.087165, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+54, 333, 0, -3563.83, -1767.35, 79.1001, 4.26498, 0, 0, 0.846354, -0.53262, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+55, 333, 0, -3371.96, -1846.54, 16.5207, -1.8326, 0, 0, 0.793353, -0.608761, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+56, 333, 0, -3444.59, -1833.84, 24.9106, -1.39626, 0, 0, 0.642788, -0.766044, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+57, 334, 0, -3308.06, -1899.06, 31.7356, 4.17134, 0, 0, -0.870356, 0.492424, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+58, 334, 0, -3373.47, -1810.15, 16.2407, 2.67035, 0, 0, 0.972369, 0.233448, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+59, 334, 0, -3391.45, -1783.01, 25.2344, 3.31614, 0, 0, -0.996194, 0.087165, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+60, 334, 0, -3392.07, -1857.27, 25.8701, 0.331611, 0, 0, 0.165047, 0.986286, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+61, 334, 0, -3393.8, -1825.06, 24.913, 1.09956, 0, 0, 0.522498, 0.85264, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+62, 334, 0, -3408.6, -1807.26, 17.8659, 4.88692, 0, 0, -0.642787, 0.766045, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+63, 334, 0, -3420.89, -1856.84, 16.9872, 2.51327, 0, 0, 0.951056, 0.309017, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+64, 334, 0, -3425.58, -1758.09, 28.0262, 4.17134, 0, 0, -0.870356, 0.492424, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+65, 334, 0, -3432.51, -1790.23, 16.3942, 4.15388, 0, 0, -0.874619, 0.48481, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+66, 334, 0, -3457.06, -1770.1, 16.3745, 5.70723, 0, 0, -0.284015, 0.95882, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+67, 334, 0, -3461.63, -1803.47, 25.7061, 4.45059, 0, 0, -0.793353, 0.608762, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+68, 334, 0, -3469.87, -1836.43, 17.2882, 0, 0, 0, 0, 1, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+69, 334, 0, -3470.78, -1863.77, 24.0417, 5.49779, 0, 0, -0.382683, 0.92388, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+70, 334, 0, -3485.88, -1727.12, 34.5372, 0.0349062, 0, 0, 0.0174522, 0.999848, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+71, 334, 0, -3490.14, -1787.05, 17.0477, 1.0821, 0, 0, 0.515038, 0.857168, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+72, 334, 0, -3494.47, -1883.25, 16.2407, 5.18363, 0, 0, -0.522498, 0.85264, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+73, 334, 0, -3498.22, -1844.42, 16.4291, 0, 0, 0, 0, 1, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+74, 334, 0, -3500.26, -1766.83, 16.417, 2.67035, 0, 0, 0.972369, 0.233448, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+75, 334, 0, -3522.12, -1799.96, 23.9379, 4.46804, 0, 0, -0.788011, 0.615662, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+76, 334, 0, -3525.93, -1884.6, 24.2428, 5.70723, 0, 0, -0.284015, 0.95882, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+77, 334, 0, -3537.32, -1830.63, 16.2407, 2.75761, 0, 0, 0.981627, 0.190812, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+78, 334, 0, -3549.77, -1723.89, 81.994, 2.75761, 0, 0, 0.981627, 0.190812, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+79, 334, 0, -3550.56, -1805.25, 27.3557, 5.93412, 0, 0, -0.173648, 0.984808, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+80, 334, 0, -3556.36, -1744.41, 78.9947, 6.21337, 0, 0, -0.0348988, 0.999391, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+81, 334, 0, -3568.4, -1845.56, 24.3617, 3.31614, 0, 0, -0.996194, 0.087165, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+82, 334, 0, -3563.83, -1767.35, 79.1001, 4.26498, 0, 0, 0.846354, -0.53262, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+83, 334, 0, -3371.96, -1846.54, 16.5207, -1.8326, 0, 0, 0.793353, -0.608761, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+84, 334, 0, -3444.59, -1833.84, 24.9106, -1.39626, 0, 0, 0.642788, -0.766044, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+85, 35252, 0, -3308.06, -1899.06, 31.7356, 4.17134, 0, 0, -0.870356, 0.492424, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+86, 35252, 0, -3373.47, -1810.15, 16.2407, 2.67035, 0, 0, 0.972369, 0.233448, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+87, 35252, 0, -3391.45, -1783.01, 25.2344, 3.31614, 0, 0, -0.996194, 0.087165, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+88, 35252, 0, -3392.07, -1857.27, 25.8701, 0.331611, 0, 0, 0.165047, 0.986286, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+89, 35252, 0, -3393.8, -1825.06, 24.913, 1.09956, 0, 0, 0.522498, 0.85264, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+90, 35252, 0, -3408.6, -1807.26, 17.8659, 4.88692, 0, 0, -0.642787, 0.766045, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+91, 35252, 0, -3420.89, -1856.84, 16.9872, 2.51327, 0, 0, 0.951056, 0.309017, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+92, 35252, 0, -3425.58, -1758.09, 28.0262, 4.17134, 0, 0, -0.870356, 0.492424, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+93, 35252, 0, -3432.51, -1790.23, 16.3942, 4.15388, 0, 0, -0.874619, 0.48481, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+94, 35252, 0, -3457.06, -1770.1, 16.3745, 5.70723, 0, 0, -0.284015, 0.95882, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+95, 35252, 0, -3461.63, -1803.47, 25.7061, 4.45059, 0, 0, -0.793353, 0.608762, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+96, 35252, 0, -3469.87, -1836.43, 17.2882, 0, 0, 0, 0, 1, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+97, 35252, 0, -3470.78, -1863.77, 24.0417, 5.49779, 0, 0, -0.382683, 0.92388, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+98, 35252, 0, -3485.88, -1727.12, 34.5372, 0.0349062, 0, 0, 0.0174522, 0.999848, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+99, 35252, 0, -3490.14, -1787.05, 17.0477, 1.0821, 0, 0, 0.515038, 0.857168, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+100, 35252, 0, -3494.47, -1883.25, 16.2407, 5.18363, 0, 0, -0.522498, 0.85264, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+101, 35252, 0, -3498.22, -1844.42, 16.4291, 0, 0, 0, 0, 1, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+102, 35252, 0, -3500.26, -1766.83, 16.417, 2.67035, 0, 0, 0.972369, 0.233448, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+103, 35252, 0, -3522.12, -1799.96, 23.9379, 4.46804, 0, 0, -0.788011, 0.615662, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+104, 35252, 0, -3525.93, -1884.6, 24.2428, 5.70723, 0, 0, -0.284015, 0.95882, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+105, 35252, 0, -3537.32, -1830.63, 16.2407, 2.75761, 0, 0, 0.981627, 0.190812, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+106, 35252, 0, -3549.77, -1723.89, 81.994, 2.75761, 0, 0, 0.981627, 0.190812, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+107, 35252, 0, -3550.56, -1805.25, 27.3557, 5.93412, 0, 0, -0.173648, 0.984808, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+108, 35252, 0, -3556.36, -1744.41, 78.9947, 6.21337, 0, 0, -0.0348988, 0.999391, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+109, 35252, 0, -3568.4, -1845.56, 24.3617, 3.31614, 0, 0, -0.996194, 0.087165, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+110, 35252, 0, -3563.83, -1767.35, 79.1001, 4.26498, 0, 0, 0.846354, -0.53262, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+111, 35252, 0, -3371.96, -1846.54, 16.5207, -1.8326, 0, 0, 0.793353, -0.608761, 180, 180, 100, 1, 0, 0, 0, 10),
(@OGUID+112, 35252, 0, -3444.59, -1833.84, 24.9106, -1.39626, 0, 0, 0.642788, -0.766044, 180, 180, 100, 1, 0, 0, 0, 10);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`, `patch_min`, `patch_max`) VALUES
(@PTEMPLATE+1, 1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@PTEMPLATE+2, 1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@PTEMPLATE+3, 1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@PTEMPLATE+4, 1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@PTEMPLATE+5, 1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@PTEMPLATE+6, 1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@PTEMPLATE+7, 1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@PTEMPLATE+8, 1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@PTEMPLATE+9, 1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@PTEMPLATE+10, 1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@PTEMPLATE+11, 1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@PTEMPLATE+12, 1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@PTEMPLATE+13, 1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@PTEMPLATE+14, 1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@PTEMPLATE+15, 1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@PTEMPLATE+16, 1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@PTEMPLATE+17, 1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@PTEMPLATE+18, 1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@PTEMPLATE+19, 1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@PTEMPLATE+20, 1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@PTEMPLATE+21, 1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@PTEMPLATE+22, 1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@PTEMPLATE+23, 1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@PTEMPLATE+24, 1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@PTEMPLATE+25, 1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@PTEMPLATE+26, 1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@PTEMPLATE+27, 1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@PTEMPLATE+28, 1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10);

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `description`, `patch_min`, `patch_max`) VALUES 
(@OGUID+1, @PTEMPLATE+1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+2, @PTEMPLATE+2, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+3, @PTEMPLATE+3, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+4, @PTEMPLATE+4, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+5, @PTEMPLATE+5, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+6, @PTEMPLATE+6, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+7, @PTEMPLATE+7, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+8, @PTEMPLATE+8, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+9, @PTEMPLATE+9, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+10, @PTEMPLATE+10, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+11, @PTEMPLATE+11, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+12, @PTEMPLATE+12, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+13, @PTEMPLATE+13, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+14, @PTEMPLATE+14, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+15, @PTEMPLATE+15, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+16, @PTEMPLATE+16, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+17, @PTEMPLATE+17, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+18, @PTEMPLATE+18, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+19, @PTEMPLATE+19, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+20, @PTEMPLATE+20, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+21, @PTEMPLATE+21, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+22, @PTEMPLATE+22, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+23, @PTEMPLATE+23, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+24, @PTEMPLATE+24, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+25, @PTEMPLATE+25, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+26, @PTEMPLATE+26, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+27, @PTEMPLATE+27, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+28, @PTEMPLATE+28, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+29, @PTEMPLATE+1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+30, @PTEMPLATE+2, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+31, @PTEMPLATE+3, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+32, @PTEMPLATE+4, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+33, @PTEMPLATE+5, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+34, @PTEMPLATE+6, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+35, @PTEMPLATE+7, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+36, @PTEMPLATE+8, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+37, @PTEMPLATE+9, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+38, @PTEMPLATE+10, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+39, @PTEMPLATE+11, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+40, @PTEMPLATE+12, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+41, @PTEMPLATE+13, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+42, @PTEMPLATE+14, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+43, @PTEMPLATE+15, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+44, @PTEMPLATE+16, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+45, @PTEMPLATE+17, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+46, @PTEMPLATE+18, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+47, @PTEMPLATE+19, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+48, @PTEMPLATE+20, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+49, @PTEMPLATE+21, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+50, @PTEMPLATE+22, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+51, @PTEMPLATE+23, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+52, @PTEMPLATE+24, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+53, @PTEMPLATE+25, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+54, @PTEMPLATE+26, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+55, @PTEMPLATE+27, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+56, @PTEMPLATE+28, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+57, @PTEMPLATE+1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+58, @PTEMPLATE+2, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+59, @PTEMPLATE+3, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+60, @PTEMPLATE+4, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+61, @PTEMPLATE+5, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+62, @PTEMPLATE+6, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+63, @PTEMPLATE+7, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+64, @PTEMPLATE+8, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+65, @PTEMPLATE+9, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+66, @PTEMPLATE+10, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+67, @PTEMPLATE+11, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+68, @PTEMPLATE+12, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+69, @PTEMPLATE+13, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+70, @PTEMPLATE+14, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+71, @PTEMPLATE+15, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+72, @PTEMPLATE+16, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+73, @PTEMPLATE+17, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+74, @PTEMPLATE+18, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+75, @PTEMPLATE+19, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+76, @PTEMPLATE+20, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+77, @PTEMPLATE+21, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+78, @PTEMPLATE+22, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+79, @PTEMPLATE+23, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+80, @PTEMPLATE+24, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+81, @PTEMPLATE+25, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+82, @PTEMPLATE+26, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+83, @PTEMPLATE+27, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+84, @PTEMPLATE+28, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+85, @PTEMPLATE+1, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+86, @PTEMPLATE+2, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+87, @PTEMPLATE+3, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+88, @PTEMPLATE+4, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+89, @PTEMPLATE+5, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+90, @PTEMPLATE+6, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+91, @PTEMPLATE+7, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+92, @PTEMPLATE+8, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+93, @PTEMPLATE+9, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+94, @PTEMPLATE+10, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+95, @PTEMPLATE+11, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+96, @PTEMPLATE+12, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+97, @PTEMPLATE+13, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+98, @PTEMPLATE+14, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+99, @PTEMPLATE+15, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+100, @PTEMPLATE+16, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+101, @PTEMPLATE+17, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+102, @PTEMPLATE+18, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+103, @PTEMPLATE+19, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+104, @PTEMPLATE+20, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+105, @PTEMPLATE+21, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+106, @PTEMPLATE+22, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+107, @PTEMPLATE+23, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+108, @PTEMPLATE+24, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+109, @PTEMPLATE+25, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+110, @PTEMPLATE+26, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+111, @PTEMPLATE+27, 'Ancient Relic / Loose Soil - Wetlands', 0, 10),
(@OGUID+112, @PTEMPLATE+28, 'Ancient Relic / Loose Soil - Wetlands', 0, 10);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`, `flags`, `instance`, `patch_min`, `patch_max`) VALUES
(@PTEMPLATE+29, 13, 'Wetlands - Ancient Relic / Loose Soil (Master Pool)', 0, 0, 0, 10);
INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`, `flags`) VALUES
(@PTEMPLATE+1, @PTEMPLATE+29, 0, 'Ancient Relic / Loose Soil - Wetlands', 0),
(@PTEMPLATE+2, @PTEMPLATE+29, 0, 'Ancient Relic / Loose Soil - Wetlands', 0),
(@PTEMPLATE+3, @PTEMPLATE+29, 0, 'Ancient Relic / Loose Soil - Wetlands', 0),
(@PTEMPLATE+4, @PTEMPLATE+29, 0, 'Ancient Relic / Loose Soil - Wetlands', 0),
(@PTEMPLATE+5, @PTEMPLATE+29, 0, 'Ancient Relic / Loose Soil - Wetlands', 0),
(@PTEMPLATE+6, @PTEMPLATE+29, 0, 'Ancient Relic / Loose Soil - Wetlands', 0),
(@PTEMPLATE+7, @PTEMPLATE+29, 0, 'Ancient Relic / Loose Soil - Wetlands', 0),
(@PTEMPLATE+8, @PTEMPLATE+29, 0, 'Ancient Relic / Loose Soil - Wetlands', 0),
(@PTEMPLATE+9, @PTEMPLATE+29, 0, 'Ancient Relic / Loose Soil - Wetlands', 0),
(@PTEMPLATE+10, @PTEMPLATE+29, 0, 'Ancient Relic / Loose Soil - Wetlands', 0),
(@PTEMPLATE+11, @PTEMPLATE+29, 0, 'Ancient Relic / Loose Soil - Wetlands', 0),
(@PTEMPLATE+12, @PTEMPLATE+29, 0, 'Ancient Relic / Loose Soil - Wetlands', 0),
(@PTEMPLATE+13, @PTEMPLATE+29, 0, 'Ancient Relic / Loose Soil - Wetlands', 0),
(@PTEMPLATE+14, @PTEMPLATE+29, 0, 'Ancient Relic / Loose Soil - Wetlands', 0),
(@PTEMPLATE+15, @PTEMPLATE+29, 0, 'Ancient Relic / Loose Soil - Wetlands', 0),
(@PTEMPLATE+16, @PTEMPLATE+29, 0, 'Ancient Relic / Loose Soil - Wetlands', 0),
(@PTEMPLATE+17, @PTEMPLATE+29, 0, 'Ancient Relic / Loose Soil - Wetlands', 0),
(@PTEMPLATE+18, @PTEMPLATE+29, 0, 'Ancient Relic / Loose Soil - Wetlands', 0),
(@PTEMPLATE+19, @PTEMPLATE+29, 0, 'Ancient Relic / Loose Soil - Wetlands', 0),
(@PTEMPLATE+20, @PTEMPLATE+29, 0, 'Ancient Relic / Loose Soil - Wetlands', 0),
(@PTEMPLATE+21, @PTEMPLATE+29, 0, 'Ancient Relic / Loose Soil - Wetlands', 0),
(@PTEMPLATE+22, @PTEMPLATE+29, 0, 'Ancient Relic / Loose Soil - Wetlands', 0),
(@PTEMPLATE+23, @PTEMPLATE+29, 0, 'Ancient Relic / Loose Soil - Wetlands', 0),
(@PTEMPLATE+24, @PTEMPLATE+29, 0, 'Ancient Relic / Loose Soil - Wetlands', 0),
(@PTEMPLATE+25, @PTEMPLATE+29, 0, 'Ancient Relic / Loose Soil - Wetlands', 0),
(@PTEMPLATE+26, @PTEMPLATE+29, 0, 'Ancient Relic / Loose Soil - Wetlands', 0),
(@PTEMPLATE+27, @PTEMPLATE+29, 0, 'Ancient Relic / Loose Soil - Wetlands', 0),
(@PTEMPLATE+28, @PTEMPLATE+29, 0, 'Ancient Relic / Loose Soil - Wetlands', 0);


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;