package com.knowhow.admin.domain;

public class MentorReplyListDTO {
	private Long answerId;
	private String categoryName;
	private String memberNickname;
	private String answerTitle;
	private String answerContent;
	private int commentCount;
	private int likeCount;
	private String answerRegdate;
	private Long questionId;
	
	public MentorReplyListDTO() {;}

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

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
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

	public int getCommentCount() {
		return commentCount;
	}

	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}

	public int getLikeCount() {
		return likeCount;
	}

	public void setLikeCount(int likeCount) {
		this.likeCount = likeCount;
	}

	public String getAnswerRegdate() {
		return answerRegdate;
	}

	public void setAnswerRegdate(String answerRegdate) {
		this.answerRegdate = answerRegdate;
	}

	public Long getQuestionId() {
		return questionId;
	}

	public void setQuestionId(Long questionId) {
		this.questionId = questionId;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((answerContent == null) ? 0 : answerContent.hashCode());
		result = prime * result + ((answerId == null) ? 0 : answerId.hashCode());
		result = prime * result + ((answerRegdate == null) ? 0 : answerRegdate.hashCode());
		result = prime * result + ((answerTitle == null) ? 0 : answerTitle.hashCode());
		result = prime * result + ((categoryName == null) ? 0 : categoryName.hashCode());
		result = prime * result + commentCount;
		result = prime * result + likeCount;
		result = prime * result + ((memberNickname == null) ? 0 : memberNickname.hashCode());
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
		MentorReplyListDTO other = (MentorReplyListDTO) obj;
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
		if (answerRegdate == null) {
			if (other.answerRegdate != null)
				return false;
		} else if (!answerRegdate.equals(other.answerRegdate))
			return false;
		if (answerTitle == null) {
			if (other.answerTitle != null)
				return false;
		} else if (!answerTitle.equals(other.answerTitle))
			return false;
		if (categoryName == null) {
			if (other.categoryName != null)
				return false;
		} else if (!categoryName.equals(other.categoryName))
			return false;
		if (commentCount != other.commentCount)
			return false;
		if (likeCount != other.likeCount)
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
		return true;
	}
	
}
