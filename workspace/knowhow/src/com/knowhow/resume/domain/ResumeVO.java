package com.knowhow.resume.domain;

public class ResumeVO {
	private Long resumeId;
	private String resumeOriginalName; 
	private String resumeSystemName; 
	private String resumePath;
	private Long memberId;
	
	public ResumeVO() {;}

	public Long getResumeId() {
		return resumeId;
	}

	public void setResumeId(Long resumeId) {
		this.resumeId = resumeId;
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

	public String getResumePath() {
		return resumePath;
	}

	public void setResumePath(String resumePath) {
		this.resumePath = resumePath;
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
		result = prime * result + ((memberId == null) ? 0 : memberId.hashCode());
		result = prime * result + ((resumeId == null) ? 0 : resumeId.hashCode());
		result = prime * result + ((resumeOriginalName == null) ? 0 : resumeOriginalName.hashCode());
		result = prime * result + ((resumePath == null) ? 0 : resumePath.hashCode());
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
		ResumeVO other = (ResumeVO) obj;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
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
		if (resumePath == null) {
			if (other.resumePath != null)
				return false;
		} else if (!resumePath.equals(other.resumePath))
			return false;
		if (resumeSystemName == null) {
			if (other.resumeSystemName != null)
				return false;
		} else if (!resumeSystemName.equals(other.resumeSystemName))
			return false;
		return true;
	}
	
}
