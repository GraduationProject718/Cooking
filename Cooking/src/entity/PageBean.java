package entity;

import java.io.Serializable;
import java.util.List;

public class PageBean<T> implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int currentPage;	// 当前第几页，请求传过来
	private int pageCount;		// 每页显示多少条数据
	private int totalCount;		// 总记录数，查询数据获得
	private int totalPage;		// 总页数，通过 totalCount 和 pageCount 计算获得
	private int startIndex;		// 开始索引，与pageCount组成limit条件
	private List<T> pageData;
	
	// 分页显示的页数
	private int start;
	private int end;

	 public PageBean(int currentPage,int pageCount,int totalCount){
         this.currentPage=currentPage;
         this.pageCount=pageCount;
         this.totalCount=totalCount;
         
         if(totalCount % pageCount==0){
             this.totalPage = totalCount/ pageCount;
         }else{
             this.totalPage= totalCount/pageCount+1;
         }
         
         this.startIndex = (currentPage-1)*pageCount;
         
         this.start=1;
         this.end=5;
         
         if(pageCount<=5){
             this.end= this.totalPage;
         }else{

             this.start=currentPage-2;
             this.end = currentPage+2;
             
             if(start<=0){
                 this.start=1;
                 this.end=5;
             }
             if(this.end > this.totalPage){
                 this.end=totalPage;
                 this.start=end-4;
             }
         }
     }

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getStartIndex() {
		return startIndex;
	}

	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}

	public List<T> getPageData() {
		return pageData;
	}

	public void setPageData(List<T> pageData) {
		this.pageData = pageData;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}
	 
	 
}
