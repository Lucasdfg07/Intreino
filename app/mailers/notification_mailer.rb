class NotificationMailer < ApplicationMailer
	default from: "intreinoapp@gmail.com"

  def notification_message(trainer, pupil)
    @pupil = pupil
    @trainer = trainer

    mail( :to => @pupil.email, :subject => "Novo treino salvo pra você no app!")
  end
end
