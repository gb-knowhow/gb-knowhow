package com.knowhow.mypage.domain;

public class CountBoardsDTO {
	private Long memberId;
	private Long countQuestion;
	private Long countAnswer;
	private Long countAskAdmin;
	
	public CountBoardsDTO() {;}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public Long getCountQuestion() {
		return countQuestion;
	}

	public void setCountQuestion(Long countQuestion) {
		this.countQuestion = countQuestion;
	}

	public Long getCountAnswer() {
		return countAnswer;
	}

	public void setCountAnswer(Long countAnswer) {
		this.countAnswer = countAnswer;
	}

	public Long getCountAskAdmin() {
		return countAskAdmin;
	}

	public void setCountAskAdmin(Long countAskAdmin) {
		this.countAskAdmin = countAskAdmin;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (memberId ^ (memberId >>> 32));
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
		CountBoardsDTO other = (CountBoardsDTO) obj;
		if (memberId != other.memberId)
			return false;
		return true;
	}

	
}
