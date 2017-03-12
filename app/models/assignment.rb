class Assignment < ApplicationRecord
  belongs_to :section
  has_many :quizzes

  def deadline
    if self.duedate.present?
      self.duedate.strftime('%Y-%m-%d %H:%M')
    else
      ""
    end
  end
end
