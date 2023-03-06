package com.knowhow.resume.domain;

public class ResumeListDTO {
	private Long resumeId; 
	private String memberName; 
	private String memberJob; 
	private boolean resumeExistence; 
	private String resumeOriginalName; 
	private String resumeSystemName; 
	private String memberEmail; 
	private Long memberId;
	
	public ResumeListDTO() {;}

	public Long getResumeId() {
		return resumeId;
	}

	public void setResumeId(Long resumeId) {
		this.resumeId = resumeId;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberJob() {
		return memberJob;
	}

	public void setMemberJob(String memberJob) {
		this.memberJob = memberJob;
	}

	public boolean isResumeExistence() {
		return resumeExistence;
	}

	public void setResumeExistence(boolean resumeExistence) {
		this.resumeExistence = resumeExistence;
	}

	public String getResumeOriginalName() {
		return resumeOriginalName;
	}

	public void setResumeOriginalName(String resumeOriginalName) {
		this.resumeOriginalName = resumeOriginalName;
	}

	public String getResumeSystemName() {
		return resumeSystemName;
	}

	public void setResumeSystemName(String resumeSystemName) {
		this.resumeSystemName = resumeSystemName;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((memberEmail == null) ? 0 : memberEmail.hashCode());
		result = prime * result + ((memberId == null) ? 0 : memberId.hashCode());
		result = prime * result + ((memberJob == null) ? 0 : memberJob.hashCode());
		result = prime * result + ((memberName == null) ? 0 : memberName.hashCode());
		result = prime * result + (resumeExistence ? 1231 : 1237);
		result = prime * result + ((resumeId == null) ? 0 : resumeId.hashCode());
		result = prime * result + ((resumeOriginalName == null) ? 0 : resumeOriginalName.hashCode());
		result = prime * result + ((resumeSystemName == null) ? 0 : resumeSystemName.hashCode());
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
		ResumeListDTO other = (ResumeListDTO) obj;
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
		if (resumeExistence != other.resumeExistence)
			return false;
		if (resumeId == null) {
			if (other.resumeId != null)
				return false;
		} else if (!resumeId.equals(other.resumeId))
			return false;
		if (resumeOriginalName == null) {
			if (other.resumeOriginalName != null)
				return false;
		} else if (!resumeOriginalName.equals(other.resumeOriginalName))
			return false;
		if (resumeSystemName == null) {
			if (other.resumeSystemName != null)
				return false;
		} else if (!resumeSystemName.equals(other.resumeSystemName))
			return false;
		return true;
	}
	
}
