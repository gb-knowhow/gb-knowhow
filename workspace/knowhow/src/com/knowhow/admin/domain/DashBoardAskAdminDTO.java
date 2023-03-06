package com.knowhow.admin.domain;

public class DashBoardAskAdminDTO {
	private Long askAdminId;
	private boolean resumeExistence;
	private String memberNickname;
	private String askAdminTitle;
	private String askAdminRegdate;
	
	public DashBoardAskAdminDTO() {;}

	public Long getAskAdminId() {
		return askAdminId;
	}

	public void setAskAdminId(Long askAdminId) {
		this.askAdminId = askAdminId;
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

	public String getAskAdminTitle() {
		return askAdminTitle;
	}

	public void setAskAdminTitle(String askAdminTitle) {
		this.askAdminTitle = askAdminTitle;
	}

	public String getAskAdminRegdate() {
		return askAdminRegdate;
	}

	public void setAskAdminRegdate(String askAdminRegdate) {
		this.askAdminRegdate = askAdminRegdate;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((askAdminId == null) ? 0 : askAdminId.hashCode());
		result = prime * result + ((askAdminRegdate == null) ? 0 : askAdminRegdate.hashCode());
		result = prime * result + ((askAdminTitle == null) ? 0 : askAdminTitle.hashCode());
		result = prime * result + ((memberNickname == null) ? 0 : memberNickname.hashCode());
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
		DashBoardAskAdminDTO other = (DashBoardAskAdminDTO) obj;
		if (askAdminId == null) {
			if (other.askAdminId != null)
				return false;
		} else if (!askAdminId.equals(other.askAdminId))
			return false;
		if (askAdminRegdate == null) {
			if (other.askAdminRegdate != null)
				return false;
		} else if (!askAdminRegdate.equals(other.askAdminRegdate))
			return false;
		if (askAdminTitle == null) {
			if (other.askAdminTitle != null)
				return false;
		} else if (!askAdminTitle.equals(other.askAdminTitle))
			return false;
		if (memberNickname == null) {
			if (other.memberNickname != null)
				return false;
		} else if (!memberNickname.equals(other.memberNickname))
			return false;
		if (resumeExistence != other.resumeExistence)
			return false;
		return true;
	}
	
}
