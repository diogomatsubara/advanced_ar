class SalaryRange < ActiveRecord::Base
  belongs_to :job

  # :numericality validator provides this function but this is just an example
  # of a custom validator
  validate :min_is_less_than_max

  def min_is_less_than_max
    if min_salary > max_salary
      errors.add(:min_salary, "cannot be greater than maximum salary!")
    end
  end
end
