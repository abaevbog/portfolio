class VisitorsController < ApplicationController
    def show
        @visitors = Visitor.all
        puts Visitor.all
    end
    
end
