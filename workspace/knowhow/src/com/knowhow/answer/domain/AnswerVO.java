package com.knowhow.answer.domain;



public class AnswerVO {
	private Long answerId;
	private Long memberId;
	private String answerTitle;
	private String answerContent;
	private String answerRegDate;
	private String answerUpdDate;
	
	public AnswerVO() {;}

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

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((answerContent == null) ? 0 : answerContent.hashCode());
		result = prime * result + ((answerId == null) ? 0 : answerId.hashCode());
		result = prime * result + ((answerRegDate == null) ? 0 : answerRegDate.hashCode());
		result = prime * result + ((answerTitle == null) ? 0 : answerTitle.hashCode());
		result = prime * result + ((answerUpdDate == null) ? 0 : answerUpdDate.hashCode());
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
		AnswerVO other = (AnswerVO) obj;
		if (answerContent == null) {
			if (other.answerContent != null)
				return false;
		} else if (!answerContent.equals(other.answerContent))
			return false;
		if (answerId == null) {
			if (other.answerId != null)
				return false;
		} else if (!answerId.equals(other.answerId))
			return false;
		if (answerRegDate == null) {
			if (other.answerRegDate != null)
				return false;
		} else if (!answerRegDate.equals(other.answerRegDate))
			return false;
		if (answerTitle == null) {
			if (other.answerTitle != null)
				return false;
		} else if (!answerTitle.equals(other.answerTitle))
			return false;
		if (answerUpdDate == null) {
			if (other.answerUpdDate != null)
				return false;
		} else if (!answerUpdDate.equals(other.answerUpdDate))
			return false;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		return true;
	}
	
	
	
}
