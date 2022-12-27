package com.timestay.vo;

public class MemberVO {
	
	@Override
	public String toString() {
		return "MemberVO [Midx=" + Midx + ", Mid=" + Mid + ", Mpwd=" + Mpwd + ", Mname=" + Mname + ", Mphone=" + Mphone
				+ ", Madd=" + Madd + ", Mgrade=" + Mgrade + ", Menter=" + Menter + ", Mmdate=" + Mmdate
				+ ", Mbreakdate=" + Mbreakdate + ", Mbreakyn=" + Mbreakyn + "]";
	}
	private int Midx;
	private String Mid;
	private String Mpwd;
	private String Mname;
	private String Mphone;
	private String Madd;
	private String Mgrade;
	private String Menter;
	private String Mmdate;
	private String Mbreakdate;
	private String Mbreakyn;
	
	
	public int getMidx() {
		return Midx;
	}
	public void setMidx(int midx) {
		Midx = midx;
	}
	public String getMid() {
		return Mid;
	}
	public void setMid(String mid) {
		Mid = mid;
	}
	public String getMpwd() {
		return Mpwd;
	}
	public void setMpwd(String mpwd) {
		Mpwd = mpwd;
	}
	public String getMname() {
		return Mname;
	}
	public void setMname(String mname) {
		Mname = mname;
	}
	public String getMphone() {
		return Mphone;
	}
	public void setMphone(String mphone) {
		Mphone = mphone;
	}
	public String getMadd() {
		return Madd;
	}
	public void setMadd(String madd) {
		Madd = madd;
	}
	public String getMgrade() {
		return Mgrade;
	}
	public void setMgrade(String mgrade) {
		Mgrade = mgrade;
	}
	public String getMenter() {
		return Menter;
	}
	public void setMenter(String menter) {
		Menter = menter;
	}
	public String getMmdate() {
		return Mmdate;
	}
	public void setMmdate(String mmdate) {
		Mmdate = mmdate;
	}
	public String getMbreakdate() {
		return Mbreakdate;
	}
	public void setMbreakdate(String mbreakdate) {
		Mbreakdate = mbreakdate;
	}
	public String getMbreakyn() {
		return Mbreakyn;
	}
	public void setMbreakyn(String mbreakyn) {
		Mbreakyn = mbreakyn;
	}


	
}
