package com.knowhow.admin.domain;

public class MenteeListDTO {
	private Long memberId;
	private String memberName;
	private Boolean resumeExistence;
	private String memberEmail;
	//	질문 수
	private int questionCount;
	private int totalCommentCount;
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
	public Boolean getResumeExistence() {
		return resumeExistence;
	}
	public void setResumeExistence(Boolean resumeExistence) {
		this.resumeExistence = resumeExistence;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public int getQuestionCount() {
		return questionCount;
	}
	public void setQuestionCount(int questionCount) {
		this.questionCount = questionCount;
	}
	public int getTotalCommentCount() {
		return totalCommentCount;
	}
	public void setTotalCommentCount(int totalCommentCount) {
		this.totalCommentCount = totalCommentCount;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((memberEmail == null) ? 0 : memberEmail.hashCode());
		result = prime * result + ((memberId == null) ? 0 : memberId.hashCode());
		result = prime * result + ((memberName == null) ? 0 : memberName.hashCode());
		result = prime * result + questionCount;
		result = prime * result + ((resumeExistence == null) ? 0 : resumeExistence.hashCode());
		result = prime * result + totalCommentCount;
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
		MenteeListDTO other = (MenteeListDTO) obj;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		}
		return true;
	}
	
}
