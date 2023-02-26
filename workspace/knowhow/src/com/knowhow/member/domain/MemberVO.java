package com.knowhow.member.domain;






public class MemberVO {
	private Long memberId;
	private Long resumeId;
	private String memberIdentification;
	private String memberPassword;
	private String memberName;
	private String memberEmail;
	private String memberJob;
	private String memberNickname;
	private String memberProfileSystemName;
	private String memberProfileOriginalName;
	private String memberProfileFilePath;
	private int memberAge;
	private boolean resumeExistence;
	
	
	public MemberVO() {;}


	public Long getMemberId() {
		return memberId;
	}


	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}


	public Long getResumeId() {
		return resumeId;
	}


	public void setResumeId(Long resumeId) {
		this.resumeId = resumeId;
	}


	public String getMemberIdentification() {
		return memberIdentification;
	}


	public void setMemberIdentification(String memberIdentification) {
		this.memberIdentification = memberIdentification;
	}


	public String getMemberPassword() {
		return memberPassword;
	}


	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}


	public String getMemberName() {
		return memberName;
	}


	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}


	public String getMemberEmail() {
		return memberEmail;
	}


	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}


	public String getMemberJob() {
		return memberJob;
	}


	public void setMemberJob(String memberJob) {
		this.memberJob = memberJob;
	}


	public String getMemberNickname() {
		return memberNickname;
	}


	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}


	public String getMemberProfileSystemName() {
		return memberProfileSystemName;
	}


	public void setMemberProfileSystemName(String memberProfileSystemName) {
		this.memberProfileSystemName = memberProfileSystemName;
	}


	public String getMemberProfileOriginalName() {
		return memberProfileOriginalName;
	}


	public void setMemberProfileOriginalName(String memberProfileOriginalName) {
		this.memberProfileOriginalName = memberProfileOriginalName;
	}


	public String getMemberProfileFilePath() {
		return memberProfileFilePath;
	}


	public void setMemberProfileFilePath(String memberProfileFilePath) {
		this.memberProfileFilePath = memberProfileFilePath;
	}


	public int getMemberAge() {
		return memberAge;
	}


	public void setMemberAge(int memberAge) {
		this.memberAge = memberAge;
	}


	public boolean isResumeExistence() {
		return resumeExistence;
	}


	public void setResumeExistence(boolean resumeExistence) {
		this.resumeExistence = resumeExistence;
	}


	@Override
	public String toString() {
		return "MemberVO [memberId=" + memberId + ", resumeId=" + resumeId + ", memberIdentification="
				+ memberIdentification + ", memberPassword=" + memberPassword + ", memberName=" + memberName
				+ ", memberEmail=" + memberEmail + ", memberJob=" + memberJob + ", memberNickname=" + memberNickname
				+ ", memberProfileSystemName=" + memberProfileSystemName + ", memberProfileOriginalName="
				+ memberProfileOriginalName + ", memberProfileFilePath=" + memberProfileFilePath + ", memberAge="
				+ memberAge + ", resumeExistence=" + resumeExistence + "]";
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + memberAge;
		result = prime * result + ((memberEmail == null) ? 0 : memberEmail.hashCode());
		result = prime * result + ((memberId == null) ? 0 : memberId.hashCode());
		result = prime * result + ((memberIdentification == null) ? 0 : memberIdentification.hashCode());
		result = prime * result + ((memberJob == null) ? 0 : memberJob.hashCode());
		result = prime * result + ((memberName == null) ? 0 : memberName.hashCode());
		result = prime * result + ((memberNickname == null) ? 0 : memberNickname.hashCode());
		result = prime * result + ((memberPassword == null) ? 0 : memberPassword.hashCode());
		result = prime * result + ((memberProfileFilePath == null) ? 0 : memberProfileFilePath.hashCode());
		result = prime * result + ((memberProfileOriginalName == null) ? 0 : memberProfileOriginalName.hashCode());
		result = prime * result + ((memberProfileSystemName == null) ? 0 : memberProfileSystemName.hashCode());
		result = prime * result + (resumeExistence ? 1231 : 1237);
		result = prime * result + ((resumeId == null) ? 0 : resumeId.hashCode());
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
		MemberVO other = (MemberVO) obj;
		if (memberAge != other.memberAge)
			return false;
		if (memberEmail == null) {
			if (other.memberEmail != null)
				return false;
		} else if (!memberEmail.equals(other.memberEmail))
			return false;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		if (memberIdentification == null) {
			if (other.memberIdentification != null)
				return false;
		} else if (!memberIdentification.equals(other.memberIdentification))
			return false;
		if (memberJob == null) {
			if (other.memberJob != null)
				return false;
		} else if (!memberJob.equals(other.memberJob))
			return false;
		if (memberName == null) {
			if (other.memberName != null)
				return false;
		} else if (!memberName.equals(other.memberName))
			return false;
		if (memberNickname == null) {
			if (other.memberNickname != null)
				return false;
		} else if (!memberNickname.equals(other.memberNickname))
			return false;
		if (memberPassword == null) {
			if (other.memberPassword != null)
				return false;
		} else if (!memberPassword.equals(other.memberPassword))
			return false;
		if (memberProfileFilePath == null) {
			if (other.memberProfileFilePath != null)
				return false;
		} else if (!memberProfileFilePath.equals(other.memberProfileFilePath))
			return false;
		if (memberProfileOriginalName == null) {
			if (other.memberProfileOriginalName != null)
				return false;
		} else if (!memberProfileOriginalName.equals(other.memberProfileOriginalName))
			return false;
		if (memberProfileSystemName == null) {
			if (other.memberProfileSystemName != null)
				return false;
		} else if (!memberProfileSystemName.equals(other.memberProfileSystemName))
			return false;
		if (resumeExistence != other.resumeExistence)
			return false;
		if (resumeId == null) {
			if (other.resumeId != null)
				return false;
		} else if (!resumeId.equals(other.resumeId))
			return false;
		return true;
	}
	
	
	
	
	
}
