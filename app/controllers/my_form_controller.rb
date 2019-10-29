class MyFormController < ApplicationController
    def show
        begin
            name = params["first"] + " " + params["last"]
            Message.create(city: params["city"],street:params["street"],name:name,message:params["message"],clicked:params["clicked"] )
            @messages = Message.all
            redirect_to '/kukusecretmessage'
        rescue StandardError => e
            puts e
        end 
    end
end



