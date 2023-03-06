package com.knowhow.mypage.domain;

import java.util.List;

public class MoreMyAnswerDTO {
	
	private List<MyAnswerDTO> myAnswerDTOs;
	private boolean isNextPage;
	
	public MoreMyAnswerDTO() {;}

	public List<MyAnswerDTO> getMyAnswerDTOs() {
		return myAnswerDTOs;
	}

	public void setMyAnswerDTOs(List<MyAnswerDTO> myAnswerDTOs) {
		this.myAnswerDTOs = myAnswerDTOs;
	}

	public boolean isNextPage() {
		return isNextPage;
	}

	public void setNextPage(boolean isNextPage) {
		this.isNextPage = isNextPage;
	}

	@Override
	public String toString() {
		return "MoreMyAnswerDTO [myAnswerDTOs=" + myAnswerDTOs + ", isNextPage=" + isNextPage + "]";
	}
	
	
}
