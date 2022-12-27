package com.timestay.vo;

public class ProductVO {
	
	private int Pidx;
	private String Pcategoryidx;
	private String Ptitle;
	private String Pcontent;
	private String Pimage;
	private String Pprice;
	private String Psellyn;
	private String Pdelyn;
	private int Phit;
	private int Pvol;
	private String Pimageplus;
	public int getPidx() {
		return Pidx;
	}
	public void setPidx(int pidx) {
		Pidx = pidx;
	}
	public String getPcategoryidx() {
		return Pcategoryidx;
	}
	public void setPcategoryidx(String pcategoryidx) {
		Pcategoryidx = pcategoryidx;
	}
	public String getPtitle() {
		return Ptitle;
	}
	public void setPtitle(String ptitle) {
		Ptitle = ptitle;
	}
	public String getPcontent() {
		return Pcontent;
	}
	public void setPcontent(String pcontent) {
		Pcontent = pcontent;
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
	public String getPsellyn() {
		return Psellyn;
	}
	public void setPsellyn(String psellyn) {
		Psellyn = psellyn;
	}
	public String getPdelyn() {
		return Pdelyn;
	}
	public void setPdelyn(String pdelyn) {
		Pdelyn = pdelyn;
	}
	public int getPhit() {
		return Phit;
	}
	public void setPhit(int phit) {
		Phit = phit;
	}
	public int getPvol() {
		return Pvol;
	}
	public void setPvol(int pvol) {
		Pvol = pvol;
	}
	public String getPimageplus() {
		return Pimageplus;
	}
	public void setPimageplus(String pimageplus) {
		Pimageplus = pimageplus;
	}
	@Override
	public String toString() {
		return "ProductVO [Pidx=" + Pidx + ", Pcategoryidx=" + Pcategoryidx + ", Ptitle=" + Ptitle + ", Pcontent="
				+ Pcontent + ", Pimage=" + Pimage + ", Pprice=" + Pprice + ", Psellyn=" + Psellyn + ", Pdelyn=" + Pdelyn
				+ ", Phit=" + Phit + ", Pvol=" + Pvol + ", Pimageplus=" + Pimageplus + "]";
	}
	
}
