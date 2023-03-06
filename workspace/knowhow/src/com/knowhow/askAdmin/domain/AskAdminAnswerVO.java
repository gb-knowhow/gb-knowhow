package com.knowhow.askAdmin.domain;

public class AskAdminAnswerVO {
	private Long askAdminAnswerId;
	private Long askAdminId;
	private Long memberId;
	private String askAdminAnswerContent;
	private String askAdminAnswerRegDate;
	private String askAdminAnswerUpdDate;
	
	public AskAdminAnswerVO() {;}

	public Long getAskAdminAnswerId() {
		return askAdminAnswerId;
	}

	public void setAskAdminAnswerId(Long askAdminAnswerId) {
		this.askAdminAnswerId = askAdminAnswerId;
	}

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

	public String getAskAdminAnswerContent() {
		return askAdminAnswerContent;
	}

	public void setAskAdminAnswerContent(String askAdminAnswerContent) {
		this.askAdminAnswerContent = askAdminAnswerContent;
	}

	public String getAskAdminAnswerRegDate() {
		return askAdminAnswerRegDate;
	}

	public void setAskAdminAnswerRegDate(String askAdminAnswerRegDate) {
		this.askAdminAnswerRegDate = askAdminAnswerRegDate;
	}

	public String getAskAdminAnswerUpdDate() {
		return askAdminAnswerUpdDate;
	}

	public void setAskAdminAnswerUpdDate(String askAdminAnswerUpdDate) {
		this.askAdminAnswerUpdDate = askAdminAnswerUpdDate;
	}

	@Override
	public String toString() {
		return "AskAdminAnswerVO [askAdminAnswerId=" + askAdminAnswerId + ", askAdminId=" + askAdminId + ", memberId="
				+ memberId + ", askAdminAnswerContent=" + askAdminAnswerContent + ", askAdminAnswerRegDate="
				+ askAdminAnswerRegDate + ", askAdminAnswerUpdDate=" + askAdminAnswerUpdDate + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((askAdminAnswerContent == null) ? 0 : askAdminAnswerContent.hashCode());
		result = prime * result + ((askAdminAnswerId == null) ? 0 : askAdminAnswerId.hashCode());
		result = prime * result + ((askAdminAnswerRegDate == null) ? 0 : askAdminAnswerRegDate.hashCode());
		result = prime * result + ((askAdminAnswerUpdDate == null) ? 0 : askAdminAnswerUpdDate.hashCode());
		result = prime * result + ((askAdminId == null) ? 0 : askAdminId.hashCode());
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
		AskAdminAnswerVO other = (AskAdminAnswerVO) obj;
		if (askAdminAnswerContent == null) {
			if (other.askAdminAnswerContent != null)
				return false;
		} else if (!askAdminAnswerContent.equals(other.askAdminAnswerContent))
			return false;
		if (askAdminAnswerId == null) {
			if (other.askAdminAnswerId != null)
				return false;
		} else if (!askAdminAnswerId.equals(other.askAdminAnswerId))
			return false;
		if (askAdminAnswerRegDate == null) {
			if (other.askAdminAnswerRegDate != null)
				return false;
		} else if (!askAdminAnswerRegDate.equals(other.askAdminAnswerRegDate))
			return false;
		if (askAdminAnswerUpdDate == null) {
			if (other.askAdminAnswerUpdDate != null)
				return false;
		} else if (!askAdminAnswerUpdDate.equals(other.askAdminAnswerUpdDate))
			return false;
		if (askAdminId == null) {
			if (other.askAdminId != null)
				return false;
		} else if (!askAdminId.equals(other.askAdminId))
			return false;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		return true;
	}
	
	
}
