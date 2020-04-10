module WelcomeHelper
	def pupils_data
	    (4.weeks.ago.to_date..Date.today).map do |date| 
	    	{
		      created_at: date.strftime("%d/%m/%Y"),
		      pupil: PupilTrainer.where("date(created_at) = ? AND trainer_id = ?", date, current_trainer).count
		    }
		end
    end
end
