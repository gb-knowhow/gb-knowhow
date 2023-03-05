package com.knowhow.mypage.domain;

public class CountLikeDTO {
	private Long memberId;
	private Long countQuestionLike; 
	private Long countAnswerLike; 
	private Long countTotalLike;
	
	public CountLikeDTO() {;}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public Long getCountQuestionLike() {
		return countQuestionLike;
	}

	public void setCountQuestionLike(Long countQuestionLike) {
		this.countQuestionLike = countQuestionLike;
	}

	public Long getCountAnswerLike() {
		return countAnswerLike;
	}

	public void setCountAnswerLike(Long countAnswerLike) {
		this.countAnswerLike = countAnswerLike;
	}

	public Long getCountTotalLike() {
		return countTotalLike;
	}

	public void setCountTotalLike(Long countTotalLike) {
		this.countTotalLike = countTotalLike;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((memberId == null) ? 0 : memberId.hashCode());
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
		CountLikeDTO other = (CountLikeDTO) obj;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		return true;
	}

	

}
