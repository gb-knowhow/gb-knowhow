package com.knowhow.askAdmin.domain;






public class AskAdminVO{
	private Long askAdminId;
	private Long memberId;
	private String askAdminTitle;
	private String askAdminContent;
	private String askAdminRegDate;
	private String askAdminUpdDate;
	private boolean askAdminAnswerStatus;
	
	public AskAdminVO() {;}

	public Long getAskAdminId() {
		return askAdminId;
	}

	public void setAskAdminId(Long askAdminId) {
		this.askAdminId = askAdminId;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public String getAskAdminTitle() {
		return askAdminTitle;
	}

	public void setAskAdminTitle(String askAdminTitle) {
		this.askAdminTitle = askAdminTitle;
	}

	public String getAskAdminContent() {
		return askAdminContent;
	}

	public void setAskAdminContent(String askAdminContent) {
		this.askAdminContent = askAdminContent;
	}

	public String getAskAdminRegDate() {
		return askAdminRegDate;
	}

	public void setAskAdminRegDate(String askAdminRegDate) {
		this.askAdminRegDate = askAdminRegDate;
	}

	public String getAskAdminUpdDate() {
		return askAdminUpdDate;
	}

	public void setAskAdminUpdDate(String askAdminUpdDate) {
		this.askAdminUpdDate = askAdminUpdDate;
	}

	public boolean isAskAdminAnswerStatus() {
		return askAdminAnswerStatus;
	}

	public void setAskAdminAnswerStatus(boolean askAdminAnswerStatus) {
		this.askAdminAnswerStatus = askAdminAnswerStatus;
	}

	@Override
	public String toString() {
		return "AskAdminVO [askAdminId=" + askAdminId + ", memberId=" + memberId + ", askAdminTitle=" + askAdminTitle
				+ ", askAdminContent=" + askAdminContent + ", askAdminRegDate=" + askAdminRegDate + ", askAdminUpdDate="
				+ askAdminUpdDate + ", askAdminAnswerStatus=" + askAdminAnswerStatus + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (askAdminAnswerStatus ? 1231 : 1237);
		result = prime * result + ((askAdminContent == null) ? 0 : askAdminContent.hashCode());
		result = prime * result + ((askAdminId == null) ? 0 : askAdminId.hashCode());
		result = prime * result + ((askAdminRegDate == null) ? 0 : askAdminRegDate.hashCode());
		result = prime * result + ((askAdminTitle == null) ? 0 : askAdminTitle.hashCode());
		result = prime * result + ((askAdminUpdDate == null) ? 0 : askAdminUpdDate.hashCode());
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
		AskAdminVO other = (AskAdminVO) obj;
		if (askAdminAnswerStatus != other.askAdminAnswerStatus)
			return false;
		if (askAdminContent == null) {
			if (other.askAdminContent != null)
				return false;
		} else if (!askAdminContent.equals(other.askAdminContent))
			return false;
		if (askAdminId == null) {
			if (other.askAdminId != null)
				return false;
		} else if (!askAdminId.equals(other.askAdminId))
			return false;
		if (askAdminRegDate == null) {
			if (other.askAdminRegDate != null)
				return false;
		} else if (!askAdminRegDate.equals(other.askAdminRegDate))
			return false;
		if (askAdminTitle == null) {
			if (other.askAdminTitle != null)
				return false;
		} else if (!askAdminTitle.equals(other.askAdminTitle))
			return false;
		if (askAdminUpdDate == null) {
			if (other.askAdminUpdDate != null)
				return false;
		} else if (!askAdminUpdDate.equals(other.askAdminUpdDate))
			return false;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		return true;
	}
	
	
	
	
	
}
