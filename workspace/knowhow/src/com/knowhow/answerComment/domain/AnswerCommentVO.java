package com.knowhow.answerComment.domain;




public class AnswerCommentVO {
	private Long answerCommentId;
	private Long memberId;
	private Long answerId;
	private String answerCommentContent;
	private String answerCommentDepth;
	private String answerGroup;
	private String answerCommentRegDate;
	private String answerCommentUpdDate;
	
	public AnswerCommentVO() {;}

	public Long getAnswerCommentId() {
		return answerCommentId;
	}

	public void setAnswerCommentId(Long answerCommentId) {
		this.answerCommentId = answerCommentId;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public Long getAnswerId() {
		return answerId;
	}

	public void setAnswerId(Long answerId) {
		this.answerId = answerId;
	}

	public String getAnswerCommentContent() {
		return answerCommentContent;
	}

	public void setAnswerCommentContent(String answerCommentContent) {
		this.answerCommentContent = answerCommentContent;
	}

	public String getAnswerCommentDepth() {
		return answerCommentDepth;
	}

	public void setAnswerCommentDepth(String answerCommentDepth) {
		this.answerCommentDepth = answerCommentDepth;
	}

	public String getAnswerGroup() {
		return answerGroup;
	}

	public void setAnswerGroup(String answerGroup) {
		this.answerGroup = answerGroup;
	}

	public String getAnswerCommentRegDate() {
		return answerCommentRegDate;
	}

	public void setAnswerCommentRegDate(String answerCommentRegDate) {
		this.answerCommentRegDate = answerCommentRegDate;
	}

	public String getAnswerCommentUpdDate() {
		return answerCommentUpdDate;
	}

	public void setAnswerCommentUpdDate(String answerCommentUpdDate) {
		this.answerCommentUpdDate = answerCommentUpdDate;
	}

	@Override
	public String toString() {
		return "AnswerCommentVO [answerCommentId=" + answerCommentId + ", memberId=" + memberId + ", answerId="
				+ answerId + ", answerCommentContent=" + answerCommentContent + ", answerCommentDepth="
				+ answerCommentDepth + ", answerGroup=" + answerGroup + ", answerCommentRegDate=" + answerCommentRegDate
				+ ", answerCommentUpdDate=" + answerCommentUpdDate + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((answerCommentContent == null) ? 0 : answerCommentContent.hashCode());
		result = prime * result + ((answerCommentDepth == null) ? 0 : answerCommentDepth.hashCode());
		result = prime * result + ((answerCommentId == null) ? 0 : answerCommentId.hashCode());
		result = prime * result + ((answerCommentRegDate == null) ? 0 : answerCommentRegDate.hashCode());
		result = prime * result + ((answerCommentUpdDate == null) ? 0 : answerCommentUpdDate.hashCode());
		result = prime * result + ((answerGroup == null) ? 0 : answerGroup.hashCode());
		result = prime * result + ((answerId == null) ? 0 : answerId.hashCode());
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
		AnswerCommentVO other = (AnswerCommentVO) obj;
		if (answerCommentContent == null) {
			if (other.answerCommentContent != null)
				return false;
		} else if (!answerCommentContent.equals(other.answerCommentContent))
			return false;
		if (answerCommentDepth == null) {
			if (other.answerCommentDepth != null)
				return false;
		} else if (!answerCommentDepth.equals(other.answerCommentDepth))
			return false;
		if (answerCommentId == null) {
			if (other.answerCommentId != null)
				return false;
		} else if (!answerCommentId.equals(other.answerCommentId))
			return false;
		if (answerCommentRegDate == null) {
			if (other.answerCommentRegDate != null)
				return false;
		} else if (!answerCommentRegDate.equals(other.answerCommentRegDate))
			return false;
		if (answerCommentUpdDate == null) {
			if (other.answerCommentUpdDate != null)
				return false;
		} else if (!answerCommentUpdDate.equals(other.answerCommentUpdDate))
			return false;
		if (answerGroup == null) {
			if (other.answerGroup != null)
				return false;
		} else if (!answerGroup.equals(other.answerGroup))
			return false;
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
		return true;
	}
	
	
	
	
	
	
}
