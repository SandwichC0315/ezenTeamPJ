package com.timestay.vo;

import java.util.Arrays;

public class ShoppingCartVO {
	
	private int Sidx;
	private int Midx;
	private int Pidx;
	private int Svol;
	private int TotalSum;
	private int finalTotalSum;
	private String Pcontent;
	private String Pprice;
	private String Pimage;
	private String Ptitle;
	private int[] pidxList;
	private int[] totalSumList;
	
	

	public int[] getTotalSumList() {
		return totalSumList;
	}
	public void setTotalSumList(int[] totalSumList) {
		this.totalSumList = totalSumList;
	}
	public int getFinalTotalSum() {
		return finalTotalSum;
	}
	public void setFinalTotalSum(int finalTotalSum) {
		this.finalTotalSum = finalTotalSum;
	}
	public String getPtitle() {
		return Ptitle;
	}
	public void setPtitle(String ptitle) {
		Ptitle = ptitle;
	}
	public String getPimage() {
		return Pimage;
	}
	public void setPimage(String pimage) {
		Pimage = pimage;
	}
	public String getPprice() {
		return Pprice;
	}
	public void setPprice(String pprice) {
		Pprice = pprice;
	}
	public String getPcontent() {
		return Pcontent;
	}
	public void setPcontent(String pcontent) {
		Pcontent = pcontent;
	}
	public int getTotalSum() {
		return TotalSum;
	}
	public void setTotalSum(int totalSum) {
		TotalSum = totalSum;
	}
	public int getSidx() {
		return Sidx;
	}
	public void setSidx(int sidx) {
		Sidx = sidx;
	}
	public int getMidx() {
		return Midx;
	}
	public void setMidx(int midx) {
		Midx = midx;
	}
	public int getPidx() {
		return Pidx;
	}
	public void setPidx(int pidx) {
		Pidx = pidx;
	}
	public int getSvol() {
		return Svol;
	}
	public void setSvol(int svol) {
		Svol = svol;
	}
	public int[] getPidxList() {
		return pidxList;
	}
	public void setPidxList(int[] pidxList) {
		this.pidxList = pidxList;
	}

	@Override
	public String toString() {
		return "ShoppingCartVO [Sidx=" + Sidx + ", Midx=" + Midx + ", Pidx=" + Pidx + ", Svol=" + Svol + ", TotalSum="
				+ TotalSum + ", Pcontent=" + Pcontent + ", Pprice=" + Pprice + ", Pimage=" + Pimage + ", Ptitle="
				+ Ptitle + ", pidxList=" + Arrays.toString(pidxList) + "]";
	}

	
}
