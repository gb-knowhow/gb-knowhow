package com.knowhow.admin.domain;

public class DashBoardMenteeQuestionDTO {
	private String categoryName;
	private Long questionId;
	private String questionTitle;
	private String memberName;
	private int answerCount;
	private String questionRegdate;
	
	public DashBoardMenteeQuestionDTO() {;}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public Long getQuestionId() {
		return questionId;
	}

	public void setQuestionId(Long questionId) {
		this.questionId = questionId;
	}

	public String getQuestionTitle() {
		return questionTitle;
	}

	public void setQuestionTitle(String questionTitle) {
		this.questionTitle = questionTitle;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public int getAnswerCount() {
		return answerCount;
	}

	public void setAnswerCount(int answerCount) {
		this.answerCount = answerCount;
	}

	public String getQuestionRegdate() {
		return questionRegdate;
	}

	public void setQuestionRegdate(String questionRegdate) {
		this.questionRegdate = questionRegdate;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + answerCount;
		result = prime * result + ((categoryName == null) ? 0 : categoryName.hashCode());
		result = prime * result + ((memberName == null) ? 0 : memberName.hashCode());
		result = prime * result + ((questionId == null) ? 0 : questionId.hashCode());
		result = prime * result + ((questionRegdate == null) ? 0 : questionRegdate.hashCode());
		result = prime * result + ((questionTitle == null) ? 0 : questionTitle.hashCode());
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
		DashBoardMenteeQuestionDTO other = (DashBoardMenteeQuestionDTO) obj;
		if (answerCount != other.answerCount)
			return false;
		if (categoryName == null) {
			if (other.categoryName != null)
				return false;
		} else if (!categoryName.equals(other.categoryName))
			return false;
		if (memberName == null) {
			if (other.memberName != null)
				return false;
		} else if (!memberName.equals(other.memberName))
			return false;
		if (questionId == null) {
			if (other.questionId != null)
				return false;
		} else if (!questionId.equals(other.questionId))
			return false;
		if (questionRegdate == null) {
			if (other.questionRegdate != null)
				return false;
		} else if (!questionRegdate.equals(other.questionRegdate))
			return false;
		if (questionTitle == null) {
			if (other.questionTitle != null)
				return false;
		} else if (!questionTitle.equals(other.questionTitle))
			return false;
		return true;
	}
	
}
