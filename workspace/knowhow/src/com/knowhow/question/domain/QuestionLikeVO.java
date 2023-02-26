package com.knowhow.question.domain;

public class QuestionLikeVO {
	private Long questionLikeId;
	private Long memberId;
	private Long questionId;
	
	public QuestionLikeVO() {;}

	public Long getQuestionLikeId() {
		return questionLikeId;
	}

	public void setQuestionLikeId(Long questionLikeId) {
		this.questionLikeId = questionLikeId;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public Long getQuestionId() {
		return questionId;
	}

	public void setQuestionId(Long questionId) {
		this.questionId = questionId;
	}

	@Override
	public String toString() {
		return "QuestionLikeVO [questionLikeId=" + questionLikeId + ", memberId=" + memberId + ", questionId="
				+ questionId + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((memberId == null) ? 0 : memberId.hashCode());
		result = prime * result + ((questionId == null) ? 0 : questionId.hashCode());
		result = prime * result + ((questionLikeId == null) ? 0 : questionLikeId.hashCode());
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
		QuestionLikeVO other = (QuestionLikeVO) obj;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		if (questionId == null) {
			if (other.questionId != null)
				return false;
		} else if (!questionId.equals(other.questionId))
			return false;
		if (questionLikeId == null) {
			if (other.questionLikeId != null)
				return false;
		} else if (!questionLikeId.equals(other.questionLikeId))
			return false;
		return true;
	}
	
	
}
