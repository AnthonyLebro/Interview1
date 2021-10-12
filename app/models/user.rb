class User < ApplicationRecord
    validate :valid_age,

    def valid_age
      if self.birthday.to_date < 150.years.ago.to_date
        errors.add(:birthday, 'you must be at most 150 years old to register.')
      end
    end

    def age
      now = Time.now.utc.to_date
      now.year - birthday.year - ((now.month > birthday.month || (birthday.month == birthday.month && now.day >= birthday.day)) ? 0 : 1)
    end
    
    def valid_date_range
      maximum_date..minimum_date
    end
  
    def minimum_date
      1.years.ago.to_date
    end
  
    def maximum_date
      150.years.ago.to_date
    end
end
