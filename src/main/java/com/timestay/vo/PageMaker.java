package com.timestay.vo;

public class PageMaker {
    
    private Criteria cri; //페이지 객체
    private int totalCount;
    private int startPage; //페이징의 시작점
    private int endPage; //페이징의 현재의 끝점
    private boolean prev; //이전 버튼
    private boolean next; //다음 버튼
    private int displayPageNum = 5; //한 번에 표시할 페이지의 개수 
    
    public Criteria getCri() {
        return cri;
    }
    public void setCri(Criteria cri) {
        this.cri = cri;
    }
    public int getTotalCount() {
        return totalCount;
    }
    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
        calcData();
    }
    
    
    //시작페이지 번호, 끝페이지 번호, prev, next 버튼을 보여줌
    private void calcData() {
        
    	//화면 상에서 보이는 마지막 번호 계산
    	//endPage = (현재 페이지/한 번에 표시할 페이지의 개수)*한 번에 표시할 페이지의 개수
        endPage = (int) (Math.ceil(cri.getPage() / (double) displayPageNum) * displayPageNum);
 
        //시작번호 계산
        //StartPage = (마지막 페이지 - 화면에 표시할 개수 ) + 1
        startPage = (endPage - displayPageNum) + 1;
        
        //시작번호는 무조건 1부터 시작하므로 0 이하의 값이 나오지 않도록 방지
        if(startPage <= 0) startPage = 1;
        
        //전체 페이지의 끝 번호를 다시 계산하는 작업
        int tempEndPage = (int) (Math.ceil(totalCount / (double) cri.getPerPageNum()));
        if (endPage > tempEndPage) {
            endPage = tempEndPage;
        }
 
        //이전 페이지 계산
        prev = startPage == 1 ? true : false;
        
        //다음 페이지 계산
        next = endPage * cri.getPerPageNum() >= totalCount ? true : false;
        
    }
    
    public int getStartPage() {
        return startPage;
    }
    public void setStartPage(int startPage) {
        this.startPage = startPage;
    }
    public int getEndPage() {
        return endPage;
    }
    public void setEndPage(int endPage) {
        this.endPage = endPage;
    }
    public boolean isPrev() {
        return prev;
    }
    public void setPrev(boolean prev) {
        this.prev = prev;
    }
    public boolean isNext() {
        return next;
    }
    public void setNext(boolean next) {
        this.next = next;
    }
    public int getDisplayPageNum() {
        return displayPageNum;
    }
    public void setDisplayPageNum(int displayPageNum) {
        this.displayPageNum = displayPageNum;
    }
 
}
