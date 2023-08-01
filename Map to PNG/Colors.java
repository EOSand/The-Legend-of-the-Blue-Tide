package com.eosand.maptopng;

import java.util.Map;
import java.util.HashMap;

public abstract class Colors {

	public static enum PixelColor {
		GRASS	(1, 127, 178, 56),
		SAND	(2, 247, 233, 163),
		WOOL	(3, 199, 199, 199),
		FIRE	(4, 255, 0, 0),
		ICE		(5, 160, 160, 255),
		METAL	(6, 167, 167, 167),
		PLANT	(7, 0, 124, 0),
		SNOW	(8, 255, 255, 255),
		CLAY	(9, 164, 168, 184),
		DIRT	(10, 151, 109, 77),
		STONE	(11, 112, 112, 112),
		WATER	(12, 64, 64, 255),
		WOOD	(13, 143, 119, 72),
		QUARTZ	(14, 255, 252, 245),
		COLOR_ORANGE	(15, 216, 127, 51),
		COLOR_MAGENTA	(16, 178, 76, 216),
		COLOR_LIGHT_BLUE	(17, 102, 153, 216),
		COLOR_YELLOW	(18, 229, 229, 51),
		COLOR_LIGHT_GREEN	(19, 127, 204, 25),
		COLOR_PINK	(20, 242, 127, 165),
		COLOR_GRAY	(21, 76, 76, 76),
		COLOR_LIGHT_GRAY	(22, 153, 153, 153),
		COLOR_CYAN	(23, 76, 127, 153),
		COLOR_PURPLE	(24, 127, 63, 178),
		COLOR_BLUE	(25, 51, 76, 178),
		COLOR_BROWN	(26, 102, 76, 51),
		COLOR_GREEN	(27, 102, 127, 51),
		COLOR_RED	(28, 153, 51, 51),
		COLOR_BLACK	(29, 25, 25, 25),
		GOLD	(30, 250, 238, 77),
		DIAMOND	(31, 92, 219, 213),
		LAPIS	(32, 74, 128, 255),
		EMERALD	(33, 0, 217, 58),
		PODZOL	(34, 129, 86, 49),
		NETHER	(35, 112, 2, 0),
		TERRACOTTA_WHITE	(36, 209, 177, 161),
		TERRACOTTA_ORANGE	(37, 159, 82, 36),
		TERRACOTTA_MAGENTA	(38, 149, 87, 108),
		TERRACOTTA_LIGHT_BLUE	(39, 112, 108, 138),
		TERRACOTTA_YELLOW	(40, 186, 133, 36),
		TERRACOTTA_LIGHT_GREEN	(41, 103, 117, 53),
		TERRACOTTA_PINK	(42, 160, 77, 78),
		TERRACOTTA_GRAY	(43, 57, 41, 35),
		TERRACOTTA_LIGHT_GRAY	(44, 135, 107, 98),
		TERRACOTTA_CYAN	(45, 87, 92, 92),
		TERRACOTTA_PURPLE	(46, 122, 73, 88),
		TERRACOTTA_BLUE	(47, 76, 62, 92),
		TERRACOTTA_BROWN	(48, 76, 50, 35),
		TERRACOTTA_GREEN	(49, 76, 82, 42),
		TERRACOTTA_RED	(50, 142, 60, 46),
		TERRACOTTA_BLACK	(51, 37, 22, 16)
		;
	
		public static class Holder {
			public static Map<Integer,PixelColor> colorMap = new HashMap<>();
		}
		
		private final int ID;
		private final int R;
		private final int G;
		private final int B;
		
		private PixelColor(int ID, int R, int G, int B) {
			this.ID = ID;
			this.R = R;
			this.G = G;
			this.B = B;
			Holder.colorMap.put(ID, this);
		}
		
		public static PixelColor getPixelColor(int ID) {
			return Holder.colorMap.get(ID);
		}
		
		public int getID() {
			return ID;
		}
		
		public int getR() {
			return R;
		}
		
		public int getG() {
			return G;
		}
		
		public int getB() {
			return B;
		}
	}
}
