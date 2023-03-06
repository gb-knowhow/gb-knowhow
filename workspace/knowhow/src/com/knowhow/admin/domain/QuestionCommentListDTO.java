package com.knowhow.admin.domain;

public class QuestionCommentListDTO {
	private Long commentId; 
	private Long questionId; 
	private String categoryName; 
	private boolean resumeExistence; 
	private String memberNickname; 
	private String commentContent; 
	private String commentRegdate;
	
	public QuestionCommentListDTO() {;}

	public Long getCommentId() {
		return commentId;
	}

	public void setCommentId(Long commentId) {
		this.commentId = commentId;
	}

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

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public String getCommentRegdate() {
		return commentRegdate;
	}

	public void setCommentRegdate(String commentRegdate) {
		this.commentRegdate = commentRegdate;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((categoryName == null) ? 0 : categoryName.hashCode());
		result = prime * result + ((commentContent == null) ? 0 : commentContent.hashCode());
		result = prime * result + ((commentId == null) ? 0 : commentId.hashCode());
		result = prime * result + ((commentRegdate == null) ? 0 : commentRegdate.hashCode());
		result = prime * result + ((memberNickname == null) ? 0 : memberNickname.hashCode());
		result = prime * result + ((questionId == null) ? 0 : questionId.hashCode());
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
		QuestionCommentListDTO other = (QuestionCommentListDTO) obj;
		if (categoryName == null) {
			if (other.categoryName != null)
				return false;
		} else if (!categoryName.equals(other.categoryName))
			return false;
		if (commentContent == null) {
			if (other.commentContent != null)
				return false;
		} else if (!commentContent.equals(other.commentContent))
			return false;
		if (commentId == null) {
			if (other.commentId != null)
				return false;
		} else if (!commentId.equals(other.commentId))
			return false;
		if (commentRegdate == null) {
			if (other.commentRegdate != null)
				return false;
		} else if (!commentRegdate.equals(other.commentRegdate))
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
		if (resumeExistence != other.resumeExistence)
			return false;
		return true;
	}

}
