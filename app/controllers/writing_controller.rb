class WritingController < ApplicationController
    def index
        @writings = Writing.all
    end
end