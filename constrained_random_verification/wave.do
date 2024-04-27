onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Entity
add wave -noupdate /ring_buffer_tb/clk
add wave -noupdate /ring_buffer_tb/rst
add wave -noupdate /ring_buffer_tb/wr_en
add wave -noupdate -radix unsigned /ring_buffer_tb/wr_data
add wave -noupdate /ring_buffer_tb/rd_en
add wave -noupdate /ring_buffer_tb/rd_valid
add wave -noupdate -radix unsigned /ring_buffer_tb/rd_data
add wave -noupdate /ring_buffer_tb/empty
add wave -noupdate /ring_buffer_tb/empty_next
add wave -noupdate /ring_buffer_tb/full
add wave -noupdate /ring_buffer_tb/full_next
add wave -noupdate -format Analog-Step -height 110 -max 256.0 -radix unsigned /ring_buffer_tb/fill_count
add wave -noupdate -divider {DUT internals}
add wave -noupdate -radix unsigned /ring_buffer_tb/DUT/tail
add wave -noupdate -radix unsigned /ring_buffer_tb/DUT/head
add wave -noupdate -radix unsigned -childformat {{/ring_buffer_tb/DUT/ram(0) -radix unsigned} {/ring_buffer_tb/DUT/ram(1) -radix unsigned} {/ring_buffer_tb/DUT/ram(2) -radix unsigned} {/ring_buffer_tb/DUT/ram(3) -radix unsigned} {/ring_buffer_tb/DUT/ram(4) -radix unsigned} {/ring_buffer_tb/DUT/ram(5) -radix unsigned} {/ring_buffer_tb/DUT/ram(6) -radix unsigned} {/ring_buffer_tb/DUT/ram(7) -radix unsigned} {/ring_buffer_tb/DUT/ram(8) -radix unsigned} {/ring_buffer_tb/DUT/ram(9) -radix unsigned} {/ring_buffer_tb/DUT/ram(10) -radix unsigned} {/ring_buffer_tb/DUT/ram(11) -radix unsigned} {/ring_buffer_tb/DUT/ram(12) -radix unsigned} {/ring_buffer_tb/DUT/ram(13) -radix unsigned} {/ring_buffer_tb/DUT/ram(14) -radix unsigned} {/ring_buffer_tb/DUT/ram(15) -radix unsigned} {/ring_buffer_tb/DUT/ram(16) -radix unsigned} {/ring_buffer_tb/DUT/ram(17) -radix unsigned} {/ring_buffer_tb/DUT/ram(18) -radix unsigned} {/ring_buffer_tb/DUT/ram(19) -radix unsigned} {/ring_buffer_tb/DUT/ram(20) -radix unsigned} {/ring_buffer_tb/DUT/ram(21) -radix unsigned} {/ring_buffer_tb/DUT/ram(22) -radix unsigned} {/ring_buffer_tb/DUT/ram(23) -radix unsigned} {/ring_buffer_tb/DUT/ram(24) -radix unsigned} {/ring_buffer_tb/DUT/ram(25) -radix unsigned} {/ring_buffer_tb/DUT/ram(26) -radix unsigned} {/ring_buffer_tb/DUT/ram(27) -radix unsigned} {/ring_buffer_tb/DUT/ram(28) -radix unsigned} {/ring_buffer_tb/DUT/ram(29) -radix unsigned} {/ring_buffer_tb/DUT/ram(30) -radix unsigned} {/ring_buffer_tb/DUT/ram(31) -radix unsigned} {/ring_buffer_tb/DUT/ram(32) -radix unsigned} {/ring_buffer_tb/DUT/ram(33) -radix unsigned} {/ring_buffer_tb/DUT/ram(34) -radix unsigned} {/ring_buffer_tb/DUT/ram(35) -radix unsigned} {/ring_buffer_tb/DUT/ram(36) -radix unsigned} {/ring_buffer_tb/DUT/ram(37) -radix unsigned} {/ring_buffer_tb/DUT/ram(38) -radix unsigned} {/ring_buffer_tb/DUT/ram(39) -radix unsigned} {/ring_buffer_tb/DUT/ram(40) -radix unsigned} {/ring_buffer_tb/DUT/ram(41) -radix unsigned} {/ring_buffer_tb/DUT/ram(42) -radix unsigned} {/ring_buffer_tb/DUT/ram(43) -radix unsigned} {/ring_buffer_tb/DUT/ram(44) -radix unsigned} {/ring_buffer_tb/DUT/ram(45) -radix unsigned} {/ring_buffer_tb/DUT/ram(46) -radix unsigned} {/ring_buffer_tb/DUT/ram(47) -radix unsigned} {/ring_buffer_tb/DUT/ram(48) -radix unsigned} {/ring_buffer_tb/DUT/ram(49) -radix unsigned} {/ring_buffer_tb/DUT/ram(50) -radix unsigned} {/ring_buffer_tb/DUT/ram(51) -radix unsigned} {/ring_buffer_tb/DUT/ram(52) -radix unsigned} {/ring_buffer_tb/DUT/ram(53) -radix unsigned} {/ring_buffer_tb/DUT/ram(54) -radix unsigned} {/ring_buffer_tb/DUT/ram(55) -radix unsigned} {/ring_buffer_tb/DUT/ram(56) -radix unsigned} {/ring_buffer_tb/DUT/ram(57) -radix unsigned} {/ring_buffer_tb/DUT/ram(58) -radix unsigned} {/ring_buffer_tb/DUT/ram(59) -radix unsigned} {/ring_buffer_tb/DUT/ram(60) -radix unsigned} {/ring_buffer_tb/DUT/ram(61) -radix unsigned} {/ring_buffer_tb/DUT/ram(62) -radix unsigned} {/ring_buffer_tb/DUT/ram(63) -radix unsigned} {/ring_buffer_tb/DUT/ram(64) -radix unsigned} {/ring_buffer_tb/DUT/ram(65) -radix unsigned} {/ring_buffer_tb/DUT/ram(66) -radix unsigned} {/ring_buffer_tb/DUT/ram(67) -radix unsigned} {/ring_buffer_tb/DUT/ram(68) -radix unsigned} {/ring_buffer_tb/DUT/ram(69) -radix unsigned} {/ring_buffer_tb/DUT/ram(70) -radix unsigned} {/ring_buffer_tb/DUT/ram(71) -radix unsigned} {/ring_buffer_tb/DUT/ram(72) -radix unsigned} {/ring_buffer_tb/DUT/ram(73) -radix unsigned} {/ring_buffer_tb/DUT/ram(74) -radix unsigned} {/ring_buffer_tb/DUT/ram(75) -radix unsigned} {/ring_buffer_tb/DUT/ram(76) -radix unsigned} {/ring_buffer_tb/DUT/ram(77) -radix unsigned} {/ring_buffer_tb/DUT/ram(78) -radix unsigned} {/ring_buffer_tb/DUT/ram(79) -radix unsigned} {/ring_buffer_tb/DUT/ram(80) -radix unsigned} {/ring_buffer_tb/DUT/ram(81) -radix unsigned} {/ring_buffer_tb/DUT/ram(82) -radix unsigned} {/ring_buffer_tb/DUT/ram(83) -radix unsigned} {/ring_buffer_tb/DUT/ram(84) -radix unsigned} {/ring_buffer_tb/DUT/ram(85) -radix unsigned} {/ring_buffer_tb/DUT/ram(86) -radix unsigned} {/ring_buffer_tb/DUT/ram(87) -radix unsigned} {/ring_buffer_tb/DUT/ram(88) -radix unsigned} {/ring_buffer_tb/DUT/ram(89) -radix unsigned} {/ring_buffer_tb/DUT/ram(90) -radix unsigned} {/ring_buffer_tb/DUT/ram(91) -radix unsigned} {/ring_buffer_tb/DUT/ram(92) -radix unsigned} {/ring_buffer_tb/DUT/ram(93) -radix unsigned} {/ring_buffer_tb/DUT/ram(94) -radix unsigned} {/ring_buffer_tb/DUT/ram(95) -radix unsigned} {/ring_buffer_tb/DUT/ram(96) -radix unsigned} {/ring_buffer_tb/DUT/ram(97) -radix unsigned} {/ring_buffer_tb/DUT/ram(98) -radix unsigned} {/ring_buffer_tb/DUT/ram(99) -radix unsigned} {/ring_buffer_tb/DUT/ram(100) -radix unsigned} {/ring_buffer_tb/DUT/ram(101) -radix unsigned} {/ring_buffer_tb/DUT/ram(102) -radix unsigned} {/ring_buffer_tb/DUT/ram(103) -radix unsigned} {/ring_buffer_tb/DUT/ram(104) -radix unsigned} {/ring_buffer_tb/DUT/ram(105) -radix unsigned} {/ring_buffer_tb/DUT/ram(106) -radix unsigned} {/ring_buffer_tb/DUT/ram(107) -radix unsigned} {/ring_buffer_tb/DUT/ram(108) -radix unsigned} {/ring_buffer_tb/DUT/ram(109) -radix unsigned} {/ring_buffer_tb/DUT/ram(110) -radix unsigned} {/ring_buffer_tb/DUT/ram(111) -radix unsigned} {/ring_buffer_tb/DUT/ram(112) -radix unsigned} {/ring_buffer_tb/DUT/ram(113) -radix unsigned} {/ring_buffer_tb/DUT/ram(114) -radix unsigned} {/ring_buffer_tb/DUT/ram(115) -radix unsigned} {/ring_buffer_tb/DUT/ram(116) -radix unsigned} {/ring_buffer_tb/DUT/ram(117) -radix unsigned} {/ring_buffer_tb/DUT/ram(118) -radix unsigned} {/ring_buffer_tb/DUT/ram(119) -radix unsigned} {/ring_buffer_tb/DUT/ram(120) -radix unsigned} {/ring_buffer_tb/DUT/ram(121) -radix unsigned} {/ring_buffer_tb/DUT/ram(122) -radix unsigned} {/ring_buffer_tb/DUT/ram(123) -radix unsigned} {/ring_buffer_tb/DUT/ram(124) -radix unsigned} {/ring_buffer_tb/DUT/ram(125) -radix unsigned} {/ring_buffer_tb/DUT/ram(126) -radix unsigned} {/ring_buffer_tb/DUT/ram(127) -radix unsigned} {/ring_buffer_tb/DUT/ram(128) -radix unsigned} {/ring_buffer_tb/DUT/ram(129) -radix unsigned} {/ring_buffer_tb/DUT/ram(130) -radix unsigned} {/ring_buffer_tb/DUT/ram(131) -radix unsigned} {/ring_buffer_tb/DUT/ram(132) -radix unsigned} {/ring_buffer_tb/DUT/ram(133) -radix unsigned} {/ring_buffer_tb/DUT/ram(134) -radix unsigned} {/ring_buffer_tb/DUT/ram(135) -radix unsigned} {/ring_buffer_tb/DUT/ram(136) -radix unsigned} {/ring_buffer_tb/DUT/ram(137) -radix unsigned} {/ring_buffer_tb/DUT/ram(138) -radix unsigned} {/ring_buffer_tb/DUT/ram(139) -radix unsigned} {/ring_buffer_tb/DUT/ram(140) -radix unsigned} {/ring_buffer_tb/DUT/ram(141) -radix unsigned} {/ring_buffer_tb/DUT/ram(142) -radix unsigned} {/ring_buffer_tb/DUT/ram(143) -radix unsigned} {/ring_buffer_tb/DUT/ram(144) -radix unsigned} {/ring_buffer_tb/DUT/ram(145) -radix unsigned} {/ring_buffer_tb/DUT/ram(146) -radix unsigned} {/ring_buffer_tb/DUT/ram(147) -radix unsigned} {/ring_buffer_tb/DUT/ram(148) -radix unsigned} {/ring_buffer_tb/DUT/ram(149) -radix unsigned} {/ring_buffer_tb/DUT/ram(150) -radix unsigned} {/ring_buffer_tb/DUT/ram(151) -radix unsigned} {/ring_buffer_tb/DUT/ram(152) -radix unsigned} {/ring_buffer_tb/DUT/ram(153) -radix unsigned} {/ring_buffer_tb/DUT/ram(154) -radix unsigned} {/ring_buffer_tb/DUT/ram(155) -radix unsigned} {/ring_buffer_tb/DUT/ram(156) -radix unsigned} {/ring_buffer_tb/DUT/ram(157) -radix unsigned} {/ring_buffer_tb/DUT/ram(158) -radix unsigned} {/ring_buffer_tb/DUT/ram(159) -radix unsigned} {/ring_buffer_tb/DUT/ram(160) -radix unsigned} {/ring_buffer_tb/DUT/ram(161) -radix unsigned} {/ring_buffer_tb/DUT/ram(162) -radix unsigned} {/ring_buffer_tb/DUT/ram(163) -radix unsigned} {/ring_buffer_tb/DUT/ram(164) -radix unsigned} {/ring_buffer_tb/DUT/ram(165) -radix unsigned} {/ring_buffer_tb/DUT/ram(166) -radix unsigned} {/ring_buffer_tb/DUT/ram(167) -radix unsigned} {/ring_buffer_tb/DUT/ram(168) -radix unsigned} {/ring_buffer_tb/DUT/ram(169) -radix unsigned} {/ring_buffer_tb/DUT/ram(170) -radix unsigned} {/ring_buffer_tb/DUT/ram(171) -radix unsigned} {/ring_buffer_tb/DUT/ram(172) -radix unsigned} {/ring_buffer_tb/DUT/ram(173) -radix unsigned} {/ring_buffer_tb/DUT/ram(174) -radix unsigned} {/ring_buffer_tb/DUT/ram(175) -radix unsigned} {/ring_buffer_tb/DUT/ram(176) -radix unsigned} {/ring_buffer_tb/DUT/ram(177) -radix unsigned} {/ring_buffer_tb/DUT/ram(178) -radix unsigned} {/ring_buffer_tb/DUT/ram(179) -radix unsigned} {/ring_buffer_tb/DUT/ram(180) -radix unsigned} {/ring_buffer_tb/DUT/ram(181) -radix unsigned} {/ring_buffer_tb/DUT/ram(182) -radix unsigned} {/ring_buffer_tb/DUT/ram(183) -radix unsigned} {/ring_buffer_tb/DUT/ram(184) -radix unsigned} {/ring_buffer_tb/DUT/ram(185) -radix unsigned} {/ring_buffer_tb/DUT/ram(186) -radix unsigned} {/ring_buffer_tb/DUT/ram(187) -radix unsigned} {/ring_buffer_tb/DUT/ram(188) -radix unsigned} {/ring_buffer_tb/DUT/ram(189) -radix unsigned} {/ring_buffer_tb/DUT/ram(190) -radix unsigned} {/ring_buffer_tb/DUT/ram(191) -radix unsigned} {/ring_buffer_tb/DUT/ram(192) -radix unsigned} {/ring_buffer_tb/DUT/ram(193) -radix unsigned} {/ring_buffer_tb/DUT/ram(194) -radix unsigned} {/ring_buffer_tb/DUT/ram(195) -radix unsigned} {/ring_buffer_tb/DUT/ram(196) -radix unsigned} {/ring_buffer_tb/DUT/ram(197) -radix unsigned} {/ring_buffer_tb/DUT/ram(198) -radix unsigned} {/ring_buffer_tb/DUT/ram(199) -radix unsigned} {/ring_buffer_tb/DUT/ram(200) -radix unsigned} {/ring_buffer_tb/DUT/ram(201) -radix unsigned} {/ring_buffer_tb/DUT/ram(202) -radix unsigned} {/ring_buffer_tb/DUT/ram(203) -radix unsigned} {/ring_buffer_tb/DUT/ram(204) -radix unsigned} {/ring_buffer_tb/DUT/ram(205) -radix unsigned} {/ring_buffer_tb/DUT/ram(206) -radix unsigned} {/ring_buffer_tb/DUT/ram(207) -radix unsigned} {/ring_buffer_tb/DUT/ram(208) -radix unsigned} {/ring_buffer_tb/DUT/ram(209) -radix unsigned} {/ring_buffer_tb/DUT/ram(210) -radix unsigned} {/ring_buffer_tb/DUT/ram(211) -radix unsigned} {/ring_buffer_tb/DUT/ram(212) -radix unsigned} {/ring_buffer_tb/DUT/ram(213) -radix unsigned} {/ring_buffer_tb/DUT/ram(214) -radix unsigned} {/ring_buffer_tb/DUT/ram(215) -radix unsigned} {/ring_buffer_tb/DUT/ram(216) -radix unsigned} {/ring_buffer_tb/DUT/ram(217) -radix unsigned} {/ring_buffer_tb/DUT/ram(218) -radix unsigned} {/ring_buffer_tb/DUT/ram(219) -radix unsigned} {/ring_buffer_tb/DUT/ram(220) -radix unsigned} {/ring_buffer_tb/DUT/ram(221) -radix unsigned} {/ring_buffer_tb/DUT/ram(222) -radix unsigned} {/ring_buffer_tb/DUT/ram(223) -radix unsigned} {/ring_buffer_tb/DUT/ram(224) -radix unsigned} {/ring_buffer_tb/DUT/ram(225) -radix unsigned} {/ring_buffer_tb/DUT/ram(226) -radix unsigned} {/ring_buffer_tb/DUT/ram(227) -radix unsigned} {/ring_buffer_tb/DUT/ram(228) -radix unsigned} {/ring_buffer_tb/DUT/ram(229) -radix unsigned} {/ring_buffer_tb/DUT/ram(230) -radix unsigned} {/ring_buffer_tb/DUT/ram(231) -radix unsigned} {/ring_buffer_tb/DUT/ram(232) -radix unsigned} {/ring_buffer_tb/DUT/ram(233) -radix unsigned} {/ring_buffer_tb/DUT/ram(234) -radix unsigned} {/ring_buffer_tb/DUT/ram(235) -radix unsigned} {/ring_buffer_tb/DUT/ram(236) -radix unsigned} {/ring_buffer_tb/DUT/ram(237) -radix unsigned} {/ring_buffer_tb/DUT/ram(238) -radix unsigned} {/ring_buffer_tb/DUT/ram(239) -radix unsigned} {/ring_buffer_tb/DUT/ram(240) -radix unsigned} {/ring_buffer_tb/DUT/ram(241) -radix unsigned} {/ring_buffer_tb/DUT/ram(242) -radix unsigned} {/ring_buffer_tb/DUT/ram(243) -radix unsigned} {/ring_buffer_tb/DUT/ram(244) -radix unsigned} {/ring_buffer_tb/DUT/ram(245) -radix unsigned} {/ring_buffer_tb/DUT/ram(246) -radix unsigned} {/ring_buffer_tb/DUT/ram(247) -radix unsigned} {/ring_buffer_tb/DUT/ram(248) -radix unsigned} {/ring_buffer_tb/DUT/ram(249) -radix unsigned} {/ring_buffer_tb/DUT/ram(250) -radix unsigned} {/ring_buffer_tb/DUT/ram(251) -radix unsigned} {/ring_buffer_tb/DUT/ram(252) -radix unsigned} {/ring_buffer_tb/DUT/ram(253) -radix unsigned} {/ring_buffer_tb/DUT/ram(254) -radix unsigned} {/ring_buffer_tb/DUT/ram(255) -radix unsigned}} -subitemconfig {/ring_buffer_tb/DUT/ram(0) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(1) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(2) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(3) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(4) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(5) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(6) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(7) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(8) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(9) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(10) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(11) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(12) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(13) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(14) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(15) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(16) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(17) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(18) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(19) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(20) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(21) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(22) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(23) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(24) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(25) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(26) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(27) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(28) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(29) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(30) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(31) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(32) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(33) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(34) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(35) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(36) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(37) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(38) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(39) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(40) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(41) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(42) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(43) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(44) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(45) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(46) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(47) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(48) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(49) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(50) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(51) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(52) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(53) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(54) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(55) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(56) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(57) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(58) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(59) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(60) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(61) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(62) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(63) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(64) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(65) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(66) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(67) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(68) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(69) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(70) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(71) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(72) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(73) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(74) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(75) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(76) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(77) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(78) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(79) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(80) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(81) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(82) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(83) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(84) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(85) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(86) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(87) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(88) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(89) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(90) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(91) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(92) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(93) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(94) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(95) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(96) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(97) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(98) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(99) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(100) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(101) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(102) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(103) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(104) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(105) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(106) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(107) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(108) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(109) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(110) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(111) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(112) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(113) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(114) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(115) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(116) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(117) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(118) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(119) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(120) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(121) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(122) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(123) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(124) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(125) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(126) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(127) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(128) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(129) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(130) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(131) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(132) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(133) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(134) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(135) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(136) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(137) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(138) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(139) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(140) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(141) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(142) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(143) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(144) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(145) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(146) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(147) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(148) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(149) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(150) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(151) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(152) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(153) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(154) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(155) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(156) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(157) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(158) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(159) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(160) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(161) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(162) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(163) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(164) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(165) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(166) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(167) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(168) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(169) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(170) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(171) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(172) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(173) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(174) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(175) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(176) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(177) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(178) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(179) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(180) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(181) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(182) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(183) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(184) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(185) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(186) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(187) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(188) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(189) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(190) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(191) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(192) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(193) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(194) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(195) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(196) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(197) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(198) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(199) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(200) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(201) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(202) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(203) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(204) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(205) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(206) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(207) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(208) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(209) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(210) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(211) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(212) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(213) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(214) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(215) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(216) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(217) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(218) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(219) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(220) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(221) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(222) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(223) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(224) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(225) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(226) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(227) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(228) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(229) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(230) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(231) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(232) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(233) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(234) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(235) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(236) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(237) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(238) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(239) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(240) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(241) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(242) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(243) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(244) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(245) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(246) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(247) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(248) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(249) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(250) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(251) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(252) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(253) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(254) {-height 24 -radix unsigned} /ring_buffer_tb/DUT/ram(255) {-height 24 -radix unsigned}} /ring_buffer_tb/DUT/ram
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {86271 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 193
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {87266 ns}