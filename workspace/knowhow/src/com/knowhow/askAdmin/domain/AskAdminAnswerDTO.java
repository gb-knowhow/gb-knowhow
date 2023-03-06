package com.knowhow.askAdmin.domain;

public class AskAdminAnswerDTO {
	private Long askAdminAnswerId;
	private Long askAdminId;
	private String askAdminAnswerContent;
	private String askAdminAnswerRegDate;
	private String askAdminAnswerUpdDate;
	private String memberName;
	private String memberNickname;
	
	public AskAdminAnswerDTO() {;}

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

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	@Override
	public String toString() {
		return "AskAdminAnswerDTO [askAdminAnswerId=" + askAdminAnswerId + ", askAdminId=" + askAdminId
				+ ", askAdminAnswerContent=" + askAdminAnswerContent + ", askAdminAnswerRegDate="
				+ askAdminAnswerRegDate + ", askAdminAnswerUpdDate=" + askAdminAnswerUpdDate + ", memberName="
				+ memberName + ", memberNickname=" + memberNickname + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((askAdminAnswerId == null) ? 0 : askAdminAnswerId.hashCode());
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
		AskAdminAnswerDTO other = (AskAdminAnswerDTO) obj;
		if (askAdminAnswerId == null) {
			if (other.askAdminAnswerId != null)
				return false;
		} else if (!askAdminAnswerId.equals(other.askAdminAnswerId))
			return false;
		return true;
	}

}
