module WelcomeHelper
    def weight_progression_data(pupil)
	    (2.months.ago.to_date..Date.today).map do |date| 
	    	total = 0
	    	Weight.where("date(created_at) = ? AND pupil_id = ?", date, pupil).each {|w|
	    		total = w.value
	    	}
	    	{
		      created_at: date.strftime("%d/%m/%Y"),
		      weight: total
		    }
		end
    end
end
