module WelcomeHelper
	def pupils_data
	    (4.weeks.ago.to_date..Date.today).map do |date| 
	    	{
		      created_at: date.strftime('%d/%m/%Y'),
		      pupil: PupilTrainer.where("date(created_at) = ? AND trainer_id = ?", date, current_trainer).count
		    }
		end
    end

    def weight_progression_data
	    (2.months.ago.to_date..Date.today).map do |date| 
	    	total = 0
	    	Weight.where("date(created_at) = ? AND pupil_id = ?", date, current_pupil).each {|w|
	    		total = w.value
	    	}
	    	{
		      created_at: date.strftime("%d/%m/%Y"),
		      weight: total
		    }
		end
    end
end
