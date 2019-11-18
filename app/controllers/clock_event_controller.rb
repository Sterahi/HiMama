class ClockEventController < ApplicationController
    def index
        @events = ClockEvent.all
    end
    def show
        @event = ClockEvent.find(params[:id])
    end
    def edit
        @event = ClockEvent.find(params[:id])
        @users = User.all
    end
    def new
        @event = ClockEvent.new
        @users = User.all
    end
    def create
        @event = ClockEvent.new(event_params)

        if @event.save
            # @event.user_id = e
            puts params[:user_id]
            @event.user << User.find(params[:user_id])
            redirect_to '/clock_event'
        else
            render 'clock_event#new', notice: 'someting went wrong'
        end
    end
    def update
        @event = ClockEvent.find(params[:id])
        if @event.update(event_params)
            redirect_to '/'
        else
            render 'clock_event#edit', notice: 'Something went wrong'
        end
    end

    private
        def event_params
            params.require(:clock_event).permit(:user, :event_type)
        end
end
