package com.knowhow.question.domain;


public class QuestionDTO {
	private Long questionId;
	private Long memberId;
	private String memberName;
	private Long categoryId;
	private String questionTitle;
	private String questionContent;
	private String questionRegDate;
	private String questionUpdDate;
	private int questionCount;
	private String memberNickname;
	private String memberIdentification;
	
	
	
	public String getMemberIdentification() {
		return memberIdentification;
	}


	public void setMemberIdentification(String memberIdentification) {
		this.memberIdentification = memberIdentification;
	}


	public String getMemberNickname() {
		return memberNickname;
	}


	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}


	public QuestionDTO() {;}


	public int getQuestionCount() {
		return questionCount;
	}
	
	public void setQuestionCount(int questionCount) {
		this.questionCount = questionCount;
	}
	
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


	public String getMemberName() {
		return memberName;
	}


	public void setMemberName(String memberName) {
		this.memberName = memberName;
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
		return "QuestionDTO [questionId=" + questionId + ", memberId=" + memberId + ", memberName=" + memberName
				+ ", categoryId=" + categoryId + ", questionTitle=" + questionTitle + ", questionContent="
				+ questionContent + ", questionRegDate=" + questionRegDate + ", questionUpdDate=" + questionUpdDate
				+ "]";
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
		QuestionDTO other = (QuestionDTO) obj;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		return true;
	}

	
	
	
	
	

}
