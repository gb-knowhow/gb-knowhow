package com.knowhow.askAdmin.domain;





public class AskAdminDTO{
	private Long askAdminId;
	private String memberName;
	private String memberNickname;
	private String askAdminTitle;
	private String askAdminContent;
	private String askAdminRegDate;
	private String askAdminUpdDate;
	private boolean askAdminAnswerStatus;
	
	public AskAdminDTO() {;}

	public Long getAskAdminId() {
		return askAdminId;
	}

	public void setAskAdminId(Long askAdminId) {
		this.askAdminId = askAdminId;
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
		return "AskAdminDTO [askAdminId=" + askAdminId + ", memberName=" + memberName + ", memberNickname="
				+ memberNickname + ", askAdminTitle=" + askAdminTitle + ", askAdminContent=" + askAdminContent
				+ ", askAdminRegDate=" + askAdminRegDate + ", askAdminUpdDate=" + askAdminUpdDate
				+ ", askAdminAnswerStatus=" + askAdminAnswerStatus + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((askAdminId == null) ? 0 : askAdminId.hashCode());
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
		AskAdminDTO other = (AskAdminDTO) obj;
		if (askAdminId == null) {
			if (other.askAdminId != null)
				return false;
		} else if (!askAdminId.equals(other.askAdminId))
			return false;
		return true;
	}

	
}
