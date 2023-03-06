package com.knowhow.answer.domain;



public class AnswerDTO {
	private Long answerId;
	private Long memberId;
	private String answerTitle;
	private String answerContent;
	private String answerRegDate;
	private String answerUpdDate;
	private String memberNickname;
	private String memberName;
	private Long questionId;
	
	public Long getAnswerId() {
		return answerId;
	}
	public void setAnswerId(Long answerId) {
		this.answerId = answerId;
	}
	public Long getMemberId() {
		return memberId;
	}
	public void setMemberId(Long memberId) {
		this.memberId = memberId;
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
	public String getAnswerRegDate() {
		return answerRegDate;
	}
	public void setAnswerRegDate(String answerRegDate) {
		this.answerRegDate = answerRegDate;
	}
	public String getAnswerUpdDate() {
		return answerUpdDate;
	}
	public void setAnswerUpdDate(String answerUpdDate) {
		this.answerUpdDate = answerUpdDate;
	}
	public String getMemberNickname() {
		return memberNickname;
	}
	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public Long getQuestionId() {
		return questionId;
	}
	public void setQuestionId(Long questionId) {
		this.questionId = questionId;
	}
	@Override
	public String toString() {
		return "AnswerDTO [answerId=" + answerId + ", memberId=" + memberId + ", answerTitle=" + answerTitle
				+ ", answerContent=" + answerContent + ", answerRegDate=" + answerRegDate + ", answerUpdDate="
				+ answerUpdDate + ", memberNickname=" + memberNickname + ", memberName=" + memberName + ", questionId="
				+ questionId + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((answerId == null) ? 0 : answerId.hashCode());
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
		AnswerDTO other = (AnswerDTO) obj;
		if (answerId == null) {
			if (other.answerId != null)
				return false;
		} else if (!answerId.equals(other.answerId))
			return false;
		return true;
	}
	
	
	
	
	
}
