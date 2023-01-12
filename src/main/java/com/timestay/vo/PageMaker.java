package com.timestay.vo;

public class PageMaker {
    
    private Criteria cri; //������ ��ü
    private int totalCount;
    private int startPage; //����¡�� ������
    private int endPage; //����¡�� ������ ����
    private boolean prev; //���� ��ư
    private boolean next; //���� ��ư
    private int displayPageNum = 5; //�� ���� ǥ���� �������� ���� 
    
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
    
    
    //���������� ��ȣ, �������� ��ȣ, prev, next ��ư�� ������
    private void calcData() {
        
    	//ȭ�� �󿡼� ���̴� ������ ��ȣ ���
    	//endPage = (���� ������/�� ���� ǥ���� �������� ����)*�� ���� ǥ���� �������� ����
        endPage = (int) (Math.ceil(cri.getPage() / (double) displayPageNum) * displayPageNum);
 
        //���۹�ȣ ���
        //StartPage = (������ ������ - ȭ�鿡 ǥ���� ���� ) + 1
        startPage = (endPage - displayPageNum) + 1;
        
        //���۹�ȣ�� ������ 1���� �����ϹǷ� 0 ������ ���� ������ �ʵ��� ����
        if(startPage <= 0) startPage = 1;
        
        //��ü �������� �� ��ȣ�� �ٽ� ����ϴ� �۾�
        int tempEndPage = (int) (Math.ceil(totalCount / (double) cri.getPerPageNum()));
        if (endPage > tempEndPage) {
            endPage = tempEndPage;
        }
 
        prev = startPage == 1 ? false : true;
        next = endPage * cri.getPerPageNum() < totalCount ? true : false;
        
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
