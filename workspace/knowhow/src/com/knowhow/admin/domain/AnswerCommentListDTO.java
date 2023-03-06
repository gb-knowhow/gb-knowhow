package com.knowhow.admin.domain;

public class AnswerCommentListDTO {
	
	private Long answerCommentId; 
	private Long answerId; 
	private String categoryName; 
	private boolean resumeExistence; 
	private String memberNickname; 
	private String answerCommentContent; 
	private String answerCommentRegdate;
	
	public AnswerCommentListDTO() {;}

	public Long getAnswerCommentId() {
		return answerCommentId;
	}

	public void setAnswerCommentId(Long answerCommentId) {
		this.answerCommentId = answerCommentId;
	}

	public Long getAnswerId() {
		return answerId;
	}

	public void setAnswerId(Long answerId) {
		this.answerId = answerId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public boolean isResumeExistence() {
		return resumeExistence;
	}

	public void setResumeExistence(boolean resumeExistence) {
		this.resumeExistence = resumeExistence;
	}

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	public String getAnswerCommentContent() {
		return answerCommentContent;
	}

	public void setAnswerCommentContent(String answerCommentContent) {
		this.answerCommentContent = answerCommentContent;
	}

	public String getAnswerCommentRegdate() {
		return answerCommentRegdate;
	}

	public void setAnswerCommentRegdate(String answerCommentRegdate) {
		this.answerCommentRegdate = answerCommentRegdate;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((answerCommentContent == null) ? 0 : answerCommentContent.hashCode());
		result = prime * result + ((answerCommentId == null) ? 0 : answerCommentId.hashCode());
		result = prime * result + ((answerCommentRegdate == null) ? 0 : answerCommentRegdate.hashCode());
		result = prime * result + ((answerId == null) ? 0 : answerId.hashCode());
		result = prime * result + ((categoryName == null) ? 0 : categoryName.hashCode());
		result = prime * result + ((memberNickname == null) ? 0 : memberNickname.hashCode());
		result = prime * result + (resumeExistence ? 1231 : 1237);
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
		AnswerCommentListDTO other = (AnswerCommentListDTO) obj;
		if (answerCommentContent == null) {
			if (other.answerCommentContent != null)
				return false;
		} else if (!answerCommentContent.equals(other.answerCommentContent))
			return false;
		if (answerCommentId == null) {
			if (other.answerCommentId != null)
				return false;
		} else if (!answerCommentId.equals(other.answerCommentId))
			return false;
		if (answerCommentRegdate == null) {
			if (other.answerCommentRegdate != null)
				return false;
		} else if (!answerCommentRegdate.equals(other.answerCommentRegdate))
			return false;
		if (answerId == null) {
			if (other.answerId != null)
				return false;
		} else if (!answerId.equals(other.answerId))
			return false;
		if (categoryName == null) {
			if (other.categoryName != null)
				return false;
		} else if (!categoryName.equals(other.categoryName))
			return false;
		if (memberNickname == null) {
			if (other.memberNickname != null)
				return false;
		} else if (!memberNickname.equals(other.memberNickname))
			return false;
		if (resumeExistence != other.resumeExistence)
			return false;
		return true;
	}
	
}
