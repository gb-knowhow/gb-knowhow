package com.knowhow.admin.domain;

public class DashBoardMentorReplyDTO {
    private long answerId;
	private String answerTitle;
	private String memberName;
	private int likeCount;
	private String answerRegdate;
	
	public DashBoardMentorReplyDTO() {;}

	public long getAnswerId() {
		return answerId;
	}

	public void setAnswerId(long answerId) {
		this.answerId = answerId;
	}

	public String getAnswerTitle() {
		return answerTitle;
	}

	public void setAnswerTitle(String answerTitle) {
		this.answerTitle = answerTitle;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
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

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (answerId ^ (answerId >>> 32));
		result = prime * result + ((answerRegdate == null) ? 0 : answerRegdate.hashCode());
		result = prime * result + ((answerTitle == null) ? 0 : answerTitle.hashCode());
		result = prime * result + likeCount;
		result = prime * result + ((memberName == null) ? 0 : memberName.hashCode());
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
		DashBoardMentorReplyDTO other = (DashBoardMentorReplyDTO) obj;
		if (answerId != other.answerId)
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
		if (likeCount != other.likeCount)
			return false;
		if (memberName == null) {
			if (other.memberName != null)
				return false;
		} else if (!memberName.equals(other.memberName))
			return false;
		return true;
	}
	
	
}
