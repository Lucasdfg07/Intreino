class Exercise < ApplicationRecord
	belongs_to :train

	validates :name, :reps, :series, :video, :observation, presence: false

	def add
		name = self.name.push("")
		reps = self.reps.push("")
		series = self.series.push("")
		video = self.video.push("")

		self.update(name: name, reps: reps, series: series, video: video)
	end

	def remove
		self.name.pop
		self.reps.pop
		self.series.pop
		self.video.pop

		self.update(name: name, reps: reps, series: series, video: video)
	end
end
