package com.eosand.maptopng;
import java.io.*;
import java.util.Scanner;
import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.awt.Color;
import com.eosand.maptopng.Colors.PixelColor;

public class MapToPNG {

	/*
	 * Converts map colors text file into a PNG
	 * Made by EOSand
	 */
	
	public static void main(String args[]) throws Exception {
		Scanner input = new Scanner(System.in);
		System.out.println("Input map ID number: ");
		int map = input.nextInt();
		input.close();
		File file = new File("C:\\...\\MINECRAFT WORLD NAME\\maps\\map_" + map + ".txt");
		Scanner sc = new Scanner(file);
		
		// Reads into 128x128 matrix
		int[][] colors = new int[128][128];
		for (int i = 0; i <= 127; i++) {
			for (int j = 0; j <= 127; j++) {
				colors[j][i] = sc.nextInt();
			}
		}
		
		// Create color variance matrix
		int[][] vars = new int[128][128];
		for (int i = 0; i <= 127; i++) {
			for (int j = 0; j <= 127; j++) {
				vars[i][j] = colors[i][j] % 4;
			}
		}
		
		// Create original ID matrix: (colors[][] - vars[][])/4
		for (int i = 0; i <= 127; i++) {
			for (int j = 0; j <= 127; j++) {
				colors[i][j] = (colors[i][j] - vars[i][j])/4;
			}
		}
		
		// Create RGB value matrix
		int[][] RGB = new int[128][128];
		for (int i = 0; i <= 127; i++) {
			for (int j = 0; j <= 127; j++) {
				PixelColor pc = Colors.PixelColor.getPixelColor(colors[i][j]);
				int R = pc.getR();
				int G = pc.getG();
				int B = pc.getB();
				Color c;
				switch (vars[i][j]) {
				case 0:
					R = (int) Math.ceil(R * 180/255);
					G = (int) Math.ceil(G * 180/255);
					B = (int) Math.ceil(B * 180/255);
					c = new Color(R, G, B);
					RGB[i][j] = c.getRGB();
					break;
				case 1:
					R = (int) Math.ceil(R * 220/255);
					G = (int) Math.ceil(G * 220/255);
					B = (int) Math.ceil(B * 220/255);
					c = new Color(R, G, B);
					RGB[i][j] = c.getRGB();
					break;
				case 2:
					c = new Color(R, G, B);
					RGB[i][j] = c.getRGB();
					break;
				case 3:
					R = (int) Math.ceil(R * 135/255);
					G = (int) Math.ceil(G * 135/255);
					B = (int) Math.ceil(B * 135/255);
					c = new Color(R, G, B);
					RGB[i][j] = c.getRGB();
					break;
				default:
					break;
				}
			}
		}
		
		// Create image
		BufferedImage image = new BufferedImage(128,128,1);
		for (int i = 0; i <= 127; i++) {
			for (int j = 0; j <= 127; j++) {
				image.setRGB(i, j, RGB[i][j]);
			}
		}
		
		// Save image
		File output = new File("map_" + map + ".png");
		ImageIO.write(image, "png", output);
		
		sc.close();
	}
}
