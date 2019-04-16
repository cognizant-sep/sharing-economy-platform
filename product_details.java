package com.models;

import java.io.Serializable;

public class product_details implements Serializable 
{
	private int product_id,length,breadth,height,price,vendor_id;
	private String type1,type2,color,material,brand,description;
	
	
	
	public product_details(int product_id, int length, int breadth, int height, int price, int vendor_id, String type1,
			String type2, String color, String material, String brand, String description) {
		super();
		this.product_id = product_id;
		this.length = length;
		this.breadth = breadth;
		this.height = height;
		this.price = price;
		this.vendor_id = vendor_id;
		this.type1 = type1;
		this.type2 = type2;
		this.color = color;
		this.material = material;
		this.brand = brand;
		this.description = description;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getLength() {
		return length;
	}
	public void setLength(int length) {
		this.length = length;
	}
	public int getBreadth() {
		return breadth;
	}
	public void setBreadth(int breadth) {
		this.breadth = breadth;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getVendor_id() {
		return vendor_id;
	}
	public void setVendor_id(int vendor_id) {
		this.vendor_id = vendor_id;
	}
	public String getType1() {
		return type1;
	}
	public void setType1(String type1) {
		this.type1 = type1;
	}
	public String getType2() {
		return type2;
	}
	public void setType2(String type2) {
		this.type2 = type2;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getMaterial() {
		return material;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	

	
}
