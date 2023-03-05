package com.knowhow.mypage.domain;

public class CountLikedDTO {

	private Long memberId;
	private Long countMyAnswerLiked;
	private Long countMyQuestionLiked;
	private Long countTotalLiked;
	
	public CountLikedDTO() {;}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public Long getCountMyAnswerLiked() {
		return countMyAnswerLiked;
	}

	public void setCountMyAnswerLiked(Long countMyAnswerLiked) {
		this.countMyAnswerLiked = countMyAnswerLiked;
	}

	public Long getCountMyQuestionLiked() {
		return countMyQuestionLiked;
	}

	public void setCountMyQuestionLiked(Long countMyQuestionLiked) {
		this.countMyQuestionLiked = countMyQuestionLiked;
	}

	public Long getCountTotalLiked() {
		return countTotalLiked;
	}

	public void setCountTotalLiked(Long countTotalLiked) {
		this.countTotalLiked = countTotalLiked;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (memberId ^ (memberId >>> 32));
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CountLikedDTO other = (CountLikedDTO) obj;
		if (memberId != other.memberId)
			return false;
		return true;
	}

	
}
