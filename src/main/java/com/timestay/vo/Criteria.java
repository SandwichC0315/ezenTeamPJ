package com.timestay.vo;

public class Criteria {
    
	/*현재 페이지*/
    private int page;
    
    /*한 페이지 당 보여줄 리스트 개수*/
    private int perPageNum;
    
    /*검색 키워드*/
    private String keyword;
    
    
    public int getPageStart() {
        return (this.page-1)*perPageNum;
    }
    
    /*기본 생성자*/
    public Criteria() {
        this.page = 1;
        this.perPageNum = 10;
    }
    
    public int getPage() {
        return page;
    }
    public void setPage(int page) {
        if(page <= 0) {
            this.page = 1;
        } else {
            this.page = page;
        }
    }
    public int getPerPageNum() {
        return perPageNum;
    }
    public void setPerPageNum(int pageCount) {
        int cnt = this.perPageNum;
        if(pageCount != cnt) {
            this.perPageNum = cnt;
        } else {
            this.perPageNum = pageCount;
        }
    }

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
    
}
