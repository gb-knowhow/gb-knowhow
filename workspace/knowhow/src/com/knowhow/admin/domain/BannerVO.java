package com.knowhow.admin.domain;

public class BannerVO {
	private String bannerOriginalName;
	private String bannerSystemName;
	private String bannerFileName;
	
	public BannerVO() {;}

	public String getBannerOriginalName() {
		return bannerOriginalName;
	}

	public void setBannerOriginalName(String bannerOriginalName) {
		this.bannerOriginalName = bannerOriginalName;
	}

	public String getBannerSystemName() {
		return bannerSystemName;
	}

	public void setBannerSystemName(String bannerSystemName) {
		this.bannerSystemName = bannerSystemName;
	}

	public String getBannerFileName() {
		return bannerFileName;
	}

	public void setBannerFileName(String bannerFileName) {
		this.bannerFileName = bannerFileName;
	}

	@Override
	public String toString() {
		return "BannerVO [bannerOriginalName=" + bannerOriginalName + ", bannerSystemName=" + bannerSystemName
				+ ", bannerFileName=" + bannerFileName + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((bannerFileName == null) ? 0 : bannerFileName.hashCode());
		result = prime * result + ((bannerOriginalName == null) ? 0 : bannerOriginalName.hashCode());
		result = prime * result + ((bannerSystemName == null) ? 0 : bannerSystemName.hashCode());
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
		BannerVO other = (BannerVO) obj;
		if (bannerFileName == null) {
			if (other.bannerFileName != null)
				return false;
		} else if (!bannerFileName.equals(other.bannerFileName))
			return false;
		if (bannerOriginalName == null) {
			if (other.bannerOriginalName != null)
				return false;
		} else if (!bannerOriginalName.equals(other.bannerOriginalName))
			return false;
		if (bannerSystemName == null) {
			if (other.bannerSystemName != null)
				return false;
		} else if (!bannerSystemName.equals(other.bannerSystemName))
			return false;
		return true;
	}
	
	
	
}
