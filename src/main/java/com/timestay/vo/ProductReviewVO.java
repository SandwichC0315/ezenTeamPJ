package com.timestay.vo;

public class ProductReviewVO {
	
	private int Ridx;
	private int Midx;
	private String Mid;
	private String Midmasking;
	public String getMidmasking() {
		return Midmasking;
	}
	public void setMidmasking(String midmasking) {
		Midmasking = midmasking;
	}

	private int Pidx;
	private String Rtitle;
	private String Rwdate;
	private String Rimage;
	private String Rwip;
	private String Rdelip;
	private int Rscore;
	private String Redlyn;
	private double AvgRscore;
	public int getRidx() {
		return Ridx;
	}
	public String getMid() {
		return Mid;
	}
	public void setMid(String mid) {
		Mid = mid;
	}
	public void setRidx(int ridx) {
		Ridx = ridx;
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
	public String getRtitle() {
		return Rtitle;
	}
	public void setRtitle(String rtitle) {
		Rtitle = rtitle;
	}
	public String getRwdate() {
		return Rwdate;
	}
	public void setRwdate(String rwdate) {
		Rwdate = rwdate;
	}
	public String getRimage() {
		return Rimage;
	}
	public void setRimage(String rimage) {
		Rimage = rimage;
	}
	public String getRwip() {
		return Rwip;
	}
	public void setRwip(String rwip) {
		Rwip = rwip;
	}
	public String getRdelip() {
		return Rdelip;
	}
	public void setRdelip(String rdelip) {
		Rdelip = rdelip;
	}
	public int getRscore() {
		return Rscore;
	}
	public void setRscore(int rscore) {
		Rscore = rscore;
	}
	public String getRedlyn() {
		return Redlyn;
	}
	public void setRedlyn(String redlyn) {
		Redlyn = redlyn;
	}
	
	@Override
	public String toString() {
		return "ProductReviewVO [Ridx=" + Ridx + ", Midx=" + Midx + ", Mid=" + Mid + ", Midmasking=" + Midmasking
				+ ", Pidx=" + Pidx + ", Rtitle=" + Rtitle + ", Rwdate=" + Rwdate + ", Rimage=" + Rimage + ", Rwip="
				+ Rwip + ", Rdelip=" + Rdelip + ", Rscore=" + Rscore + ", Redlyn=" + Redlyn + ", AvgRscore=" + AvgRscore
				+ "]";
	}
	public double getAvgRscore() {
		return AvgRscore;
	}
	public void setAvgRscore(double avgRscore) {
		AvgRscore = avgRscore;
	}
	

	
}
