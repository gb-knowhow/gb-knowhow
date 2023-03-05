package com.knowhow.mypage.domain;

public class CountCommentDTO {
	 private long memberId;
	 private long countQuestionComment;
	 private long countAnswerComment;
	 private long countTotalComments;
	 
	 public CountCommentDTO() {;}

	public long getCountAnswerComment() {
		return countAnswerComment;
	}

	public void setCountAnswerComment(long countAnswerComment) {
		this.countAnswerComment = countAnswerComment;
	}

	public long getMemberId() {
		return memberId;
	}

	public void setMemberId(long memberId) {
		this.memberId = memberId;
	}

	public long getCountQuestionComment() {
		return countQuestionComment;
	}

	public void setCountQuestionComment(long countQuestionComment) {
		this.countQuestionComment = countQuestionComment;
	}

	public long getCountTotalComments() {
		return countTotalComments;
	}

	public void setCountTotalComments(long countTotalComments) {
		this.countTotalComments = countTotalComments;
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
		CountCommentDTO other = (CountCommentDTO) obj;
		if (memberId != other.memberId)
			return false;
		return true;
	}


}

