class ContactsController < ApplicationController


  def create
    @contact = Contact.create(name: params[:name], email: params[:email], message: params[:message], call: params[:call],datetime_call: params[:datetime_call], state_call: params[:state_call], url_call: params[:url_call], contac_state: params[:contac_state], property_id: params[:property_id])

  
  end



  def  crear_call
     
     contact = Contact.find(params[:id])
   
  	 if current_runner.token != nil && !current_runner.token.blank?
            
            t = contact.datetime_call
            t.min < 10 ? min = "0" : min = ""
            t.hour < 10 ? hora = "0" : hora = ""
            startdate = "#{t.year}-#{t.month}-#{t.day}T#{hora}#{t.hour}:#{min}#{t.min}:00-05:00"

            te = t + (60*60)
            te.min < 10 ? mint = "0" : mint = ""
            te.hour < 10 ? horat = "0" : horat = ""
            enddate = "#{te.year}-#{te.month}-#{te.day}T#{horat}#{te.hour}:#{mint}#{te.min}:00-05:00"
            @event = {
            'summary' => 'Video llamada',
            'description' => "Video llamado para ver una propiedad",
            'location' => contact.property.city,
            'start' => { 'dateTime' => startdate },
            'end' => {'dateTime' => enddate  },
            'attendees' => [ { "email" => current_runner.email } ] ,
            'conferenceData' => { "createRequest" => { "requestId" => "7qxalsvy0e"} }

          }



            client = Google::APIClient.new
            client.authorization.refresh_token = current_runner.refresh_token_if_expired
            client.authorization.access_token = current_runner.token
            service = client.discovered_api('calendar', 'v3')
            #@set_event = client.execute(:api_method => service.events.insert,
             #                       :parameters => {'calendarId' => current_runner.email, 'sendNotifications' => true, "conferenceDataVersion" => 1},
              #                      :body => JSON.dump(@event),
               #                     :headers => {'Content-Type' => 'application/json'})
            #@appointment.google_event_id = @set_event.data.id
           
            #contact.url_call =  "holaaaaaaaaaaaaaaaaaaaa"
            #contact.save

    end
             
      # if !@patient.email.blank?                                                 
       # CitaMailer.programacion_cita(@patient,@appointment).deliver
       #end
  	
  end

end
