package com.knowhow.questionComment.domain;

public class QuestionCommentDTO {
	private Long commentId;
	private Long memberId;
	private Long questionId;
	private String commentContent;
	private String commentRegDate;
	private String commentUpdDate;
	private int commentDepth;
	private Long commentGroup;
	private String memberNickname;
	
	public QuestionCommentDTO() {;}

	public Long getCommentId() {
		return commentId;
	}

	public void setCommentId(Long commentId) {
		this.commentId = commentId;
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

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public String getCommentRegDate() {
		return commentRegDate;
	}

	public void setCommentRegDate(String commentRegDate) {
		this.commentRegDate = commentRegDate;
	}

	public String getCommentUpdDate() {
		return commentUpdDate;
	}

	public void setCommentUpdDate(String commentUpdDate) {
		this.commentUpdDate = commentUpdDate;
	}

	public int getCommentDepth() {
		return commentDepth;
	}

	public void setCommentDepth(int commentDepth) {
		this.commentDepth = commentDepth;
	}

	

	public Long getCommentGroup() {
		return commentGroup;
	}

	public void setCommentGroup(Long commentGroup) {
		this.commentGroup = commentGroup;
	}
	
	
	
	

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	

	@Override
	public String toString() {
		return "QuestionCommentDTO [commentId=" + commentId + ", memberId=" + memberId + ", questionId=" + questionId
				+ ", commentContent=" + commentContent + ", commentRegDate=" + commentRegDate + ", commentUpdDate="
				+ commentUpdDate + ", commentDepth=" + commentDepth + ", commentGroup=" + commentGroup
				+ ", memberNickname=" + memberNickname + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((commentId == null) ? 0 : commentId.hashCode());
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
		QuestionCommentDTO other = (QuestionCommentDTO) obj;
		if (commentId == null) {
			if (other.commentId != null)
				return false;
		} else if (!commentId.equals(other.commentId))
			return false;
		return true;
	}


	
	
	
	
}
