module ApplicationHelper
	def youtube_video(url)
		render :partial => 'shared/video', :locals => { :url => url.slice(32,42) }
	end 
end
