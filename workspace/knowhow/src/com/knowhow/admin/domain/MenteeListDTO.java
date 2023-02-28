package com.knowhow.admin.domain;

public class MenteeListDTO {
   private Long memberId;
   private Boolean resumeExistence;
   private String memberName;
   private String memberEmail;
//   질문 수
   private int questionCount;
   
//   내가 작성한 댓글 수는 질문의 댓글 수와 답글의 댓글 수를 더해야 한다.
//   내가 작성한 질문의 댓글 수
   private int CommentCount;
//   내가 작성한 답글의 댓글 수
   private int answerCommentCount;
   public Long getMemberId() {
      return memberId;
   }
   public void setMemberId(Long memberId) {
      this.memberId = memberId;
   }
   public Boolean getResumeExistence() {
      return resumeExistence;
   }
   public void setResumeExistence(Boolean resumeExistence) {
      this.resumeExistence = resumeExistence;
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
   public int getQuestionCount() {
      return questionCount;
   }
   public void setQuestionCount(int questionCount) {
      this.questionCount = questionCount;
   }
   public int getCommentCount() {
      return CommentCount;
   }
   public void setCommentCount(int commentCount) {
      CommentCount = commentCount;
   }
   public int getAnswerCommentCount() {
      return answerCommentCount;
   }
   public void setAnswerCommentCount(int answerCommentCount) {
      this.answerCommentCount = answerCommentCount;
   }
   
   @Override
   public int hashCode() {
      final int prime = 31;
      int result = 1;
      result = prime * result + CommentCount;
      result = prime * result + answerCommentCount;
      result = prime * result + ((memberEmail == null) ? 0 : memberEmail.hashCode());
      result = prime * result + ((memberId == null) ? 0 : memberId.hashCode());
      result = prime * result + ((memberName == null) ? 0 : memberName.hashCode());
      result = prime * result + questionCount;
      result = prime * result + ((resumeExistence == null) ? 0 : resumeExistence.hashCode());
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
      MenteeListDTO other = (MenteeListDTO) obj;
      if (CommentCount != other.CommentCount)
         return false;
      if (answerCommentCount != other.answerCommentCount)
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
      if (memberName == null) {
         if (other.memberName != null)
            return false;
      } else if (!memberName.equals(other.memberName))
         return false;
      if (questionCount != other.questionCount)
         return false;
      if (resumeExistence == null) {
         if (other.resumeExistence != null)
            return false;
      } else if (!resumeExistence.equals(other.resumeExistence))
         return false;
      return true;
   }
   
   @Override
   public String toString() {
      return "MenteeListDTO [memberId=" + memberId + ", resumeExistence=" + resumeExistence + ", memberName="
            + memberName + ", memberEmail=" + memberEmail + ", questionCount=" + questionCount + ", CommentCount="
            + CommentCount + ", answerCommentCount=" + answerCommentCount + "]";
   }
   
   
   

}