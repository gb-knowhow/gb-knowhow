package com.knowhow.questionComment.domain;







public class QuestionCommentVO {
	private Long questionCommentId;
	private Long memberId;
	private Long questionId;
	private String questionCommentContent;
	private String questionCommentRegDate;
	private String questionCommentUpdDate;
	private int questionCommentDepth;
	private int questionCommentGroup;
	
	public QuestionCommentVO() {;}

	public Long getQuestionCommentId() {
		return questionCommentId;
	}

	public void setQuestionCommentId(Long questionCommentId) {
		this.questionCommentId = questionCommentId;
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

	public String getQuestionCommentContent() {
		return questionCommentContent;
	}

	public void setQuestionCommentContent(String questionCommentContent) {
		this.questionCommentContent = questionCommentContent;
	}

	public String getQuestionCommentRegDate() {
		return questionCommentRegDate;
	}

	public void setQuestionCommentRegDate(String questionCommentRegDate) {
		this.questionCommentRegDate = questionCommentRegDate;
	}

	public String getQuestionCommentUpdDate() {
		return questionCommentUpdDate;
	}

	public void setQuestionCommentUpdDate(String questionCommentUpdDate) {
		this.questionCommentUpdDate = questionCommentUpdDate;
	}

	public int getQuestionCommentDepth() {
		return questionCommentDepth;
	}

	public void setQuestionCommentDepth(int questionCommentDepth) {
		this.questionCommentDepth = questionCommentDepth;
	}

	public int getQuestionCommentGroup() {
		return questionCommentGroup;
	}

	public void setQuestionCommentGroup(int questionCommentGroup) {
		this.questionCommentGroup = questionCommentGroup;
	}

	@Override
	public String toString() {
		return "QuestionCommentVO [questionCommentId=" + questionCommentId + ", memberId=" + memberId + ", questionId="
				+ questionId + ", questionCommentContent=" + questionCommentContent + ", questionCommentRegDate="
				+ questionCommentRegDate + ", questionCommentUpdDate=" + questionCommentUpdDate
				+ ", questionCommentDepth=" + questionCommentDepth + ", questionCommentGroup=" + questionCommentGroup
				+ "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((memberId == null) ? 0 : memberId.hashCode());
		result = prime * result + ((questionCommentContent == null) ? 0 : questionCommentContent.hashCode());
		result = prime * result + questionCommentDepth;
		result = prime * result + questionCommentGroup;
		result = prime * result + ((questionCommentId == null) ? 0 : questionCommentId.hashCode());
		result = prime * result + ((questionCommentRegDate == null) ? 0 : questionCommentRegDate.hashCode());
		result = prime * result + ((questionCommentUpdDate == null) ? 0 : questionCommentUpdDate.hashCode());
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
		QuestionCommentVO other = (QuestionCommentVO) obj;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		if (questionCommentContent == null) {
			if (other.questionCommentContent != null)
				return false;
		} else if (!questionCommentContent.equals(other.questionCommentContent))
			return false;
		if (questionCommentDepth != other.questionCommentDepth)
			return false;
		if (questionCommentGroup != other.questionCommentGroup)
			return false;
		if (questionCommentId == null) {
			if (other.questionCommentId != null)
				return false;
		} else if (!questionCommentId.equals(other.questionCommentId))
			return false;
		if (questionCommentRegDate == null) {
			if (other.questionCommentRegDate != null)
				return false;
		} else if (!questionCommentRegDate.equals(other.questionCommentRegDate))
			return false;
		if (questionCommentUpdDate == null) {
			if (other.questionCommentUpdDate != null)
				return false;
		} else if (!questionCommentUpdDate.equals(other.questionCommentUpdDate))
			return false;
		if (questionId == null) {
			if (other.questionId != null)
				return false;
		} else if (!questionId.equals(other.questionId))
			return false;
		return true;
	}
	
	
	
}
