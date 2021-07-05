class ProjectsController < ApplicationController
    before_action :read_projects
    def index
        #render :index
        # show all the resources
    end

    def show 
        #showing 1 of the resources
        @project = @projects.find do |project|
            project[:id] == params[:id].to_i
        end
    end

    def new
        # to have a form that allows you to create a new resources 
    end

    private 

    def read_projects
        @projects = [
            {
                id: 1,
                name: "terminal app",
                github_status: true,
                date_completed: "17/08/2020"
            },
            {
                id: 2,
                name: "react app",
                github_status: false,
                date_completed: "20/10 /2020"
            },
        ] 
    end

end
