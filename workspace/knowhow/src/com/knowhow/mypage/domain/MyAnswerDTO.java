package com.knowhow.mypage.domain;

public class MyAnswerDTO {
	
	private Long answerId;
	private String answerTitle;
	private String answerContent;
	private String answerRegdate;
	private String answerUpddate;
	private Long memberId;
	private Long questionId;
	private String categoryName;
	private Long countAnswerLike;
	
	
	public MyAnswerDTO() {;}


	public Long getAnswerId() {
		return answerId;
	}


	public void setAnswerId(Long answerId) {
		this.answerId = answerId;
	}


	public String getAnswerTitle() {
		return answerTitle;
	}


	public void setAnswerTitle(String answerTitle) {
		this.answerTitle = answerTitle;
	}


	public String getAnswerContent() {
		return answerContent;
	}


	public void setAnswerContent(String answerContent) {
		this.answerContent = answerContent;
	}


	public String getAnswerRegdate() {
		return answerRegdate;
	}


	public void setAnswerRegdate(String answerRegdate) {
		this.answerRegdate = answerRegdate;
	}


	public String getAnswerUpddate() {
		return answerUpddate;
	}


	public void setAnswerUpddate(String answerUpddate) {
		this.answerUpddate = answerUpddate;
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

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public Long getCountAnswerLike() {
		return countAnswerLike;
	}

	public void setCountAnswerLike(Long countAnswerLike) {
		this.countAnswerLike = countAnswerLike;
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((answerId == null) ? 0 : answerId.hashCode());
		result = prime * result + ((memberId == null) ? 0 : memberId.hashCode());
		result = prime * result + ((questionId == null) ? 0 : questionId.hashCode());
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
		MyAnswerDTO other = (MyAnswerDTO) obj;
		if (answerId == null) {
			if (other.answerId != null)
				return false;
		} else if (!answerId.equals(other.answerId))
			return false;
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
		return true;
	}
	
	
	
	
	
}
