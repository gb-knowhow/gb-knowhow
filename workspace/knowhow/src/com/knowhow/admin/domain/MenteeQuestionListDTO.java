package com.knowhow.admin.domain;

public class MenteeQuestionListDTO {
	private Long questionId;  
	private String categoryName;
	private String memberNickname;  
	private String questionTitle;
	private String questioncontent;
	private int answerCount;  
	private int commentCount;
	private String questionRegdate;

	public MenteeQuestionListDTO() {;}

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

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	public String getQuestionTitle() {
		return questionTitle;
	}

	public void setQuestionTitle(String questionTitle) {
		this.questionTitle = questionTitle;
	}

	public String getQuestioncontent() {
		return questioncontent;
	}

	public void setQuestioncontent(String questioncontent) {
		this.questioncontent = questioncontent;
	}

	public int getAnswerCount() {
		return answerCount;
	}

	public void setAnswerCount(int answerCount) {
		this.answerCount = answerCount;
	}

	public int getCommentCount() {
		return commentCount;
	}

	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
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
		result = prime * result + commentCount;
		result = prime * result + ((memberNickname == null) ? 0 : memberNickname.hashCode());
		result = prime * result + ((questionId == null) ? 0 : questionId.hashCode());
		result = prime * result + ((questionRegdate == null) ? 0 : questionRegdate.hashCode());
		result = prime * result + ((questionTitle == null) ? 0 : questionTitle.hashCode());
		result = prime * result + ((questioncontent == null) ? 0 : questioncontent.hashCode());
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
		MenteeQuestionListDTO other = (MenteeQuestionListDTO) obj;
		if (answerCount != other.answerCount)
			return false;
		if (categoryName == null) {
			if (other.categoryName != null)
				return false;
		} else if (!categoryName.equals(other.categoryName))
			return false;
		if (commentCount != other.commentCount)
			return false;
		if (memberNickname == null) {
			if (other.memberNickname != null)
				return false;
		} else if (!memberNickname.equals(other.memberNickname))
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
		if (questioncontent == null) {
			if (other.questioncontent != null)
				return false;
		} else if (!questioncontent.equals(other.questioncontent))
			return false;
		return true;
	}


}