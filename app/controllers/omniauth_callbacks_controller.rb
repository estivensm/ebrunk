class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
  	puts request.env["omniauth.auth"]
  	puts "ENVIROMENNNNNNNNNNNNNNNNNNNNNNN"
    @runner = Runner.find_for_google_oauth2(request.env["omniauth.auth"])

    if @user
      flash[:notice] = I18n.t "Tu autenticacion con Google calendar fue exitosa", :kind => "Google"
      sign_in_and_redirect @runner, :event => :authentication
    else
      redirect_to new_runner_session_path, notice: 'Esta cuenta no tiene Acceso'
    end
  end
end