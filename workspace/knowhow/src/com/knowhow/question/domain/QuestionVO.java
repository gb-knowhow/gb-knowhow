package com.knowhow.question.domain;






public class QuestionVO {
	private Long questionId;
	private Long memberId;
	private Long categoryId;
	private String questionTitle;
	private String questionContent;
	private String questionRegDate;
	private String questionUpdDate;
	
	
	public QuestionVO() {;}


	public Long getQuestionId() {
		return questionId;
	}


	public void setQuestionId(Long questionId) {
		this.questionId = questionId;
	}


	public Long getMemberId() {
		return memberId;
	}


	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}


	public Long getCategoryId() {
		return categoryId;
	}


	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
	}


	public String getQuestionTitle() {
		return questionTitle;
	}


	public void setQuestionTitle(String questionTitle) {
		this.questionTitle = questionTitle;
	}


	public String getQuestionContent() {
		return questionContent;
	}


	public void setQuestionContent(String questionContent) {
		this.questionContent = questionContent;
	}


	public String getQuestionRegDate() {
		return questionRegDate;
	}


	public void setQuestionRegDate(String questionRegDate) {
		this.questionRegDate = questionRegDate;
	}


	public String getQuestionUpdDate() {
		return questionUpdDate;
	}


	public void setQuestionUpdDate(String questionUpdDate) {
		this.questionUpdDate = questionUpdDate;
	}


	@Override
	public String toString() {
		return "QuestionVO [questionId=" + questionId + ", memberId=" + memberId + ", categoryId=" + categoryId
				+ ", questionTitle=" + questionTitle + ", questionContent=" + questionContent + ", questionRegDate="
				+ questionRegDate + ", questionUpdDate=" + questionUpdDate + "]";
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((categoryId == null) ? 0 : categoryId.hashCode());
		result = prime * result + ((memberId == null) ? 0 : memberId.hashCode());
		result = prime * result + ((questionContent == null) ? 0 : questionContent.hashCode());
		result = prime * result + ((questionId == null) ? 0 : questionId.hashCode());
		result = prime * result + ((questionRegDate == null) ? 0 : questionRegDate.hashCode());
		result = prime * result + ((questionTitle == null) ? 0 : questionTitle.hashCode());
		result = prime * result + ((questionUpdDate == null) ? 0 : questionUpdDate.hashCode());
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
		QuestionVO other = (QuestionVO) obj;
		if (categoryId == null) {
			if (other.categoryId != null)
				return false;
		} else if (!categoryId.equals(other.categoryId))
			return false;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		if (questionContent == null) {
			if (other.questionContent != null)
				return false;
		} else if (!questionContent.equals(other.questionContent))
			return false;
		if (questionId == null) {
			if (other.questionId != null)
				return false;
		} else if (!questionId.equals(other.questionId))
			return false;
		if (questionRegDate == null) {
			if (other.questionRegDate != null)
				return false;
		} else if (!questionRegDate.equals(other.questionRegDate))
			return false;
		if (questionTitle == null) {
			if (other.questionTitle != null)
				return false;
		} else if (!questionTitle.equals(other.questionTitle))
			return false;
		if (questionUpdDate == null) {
			if (other.questionUpdDate != null)
				return false;
		} else if (!questionUpdDate.equals(other.questionUpdDate))
			return false;
		return true;
	}
	
	
	

}
