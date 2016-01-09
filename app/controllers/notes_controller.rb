class NotesController < ApplicationController

  def index
    @notes = Note.all
  end

  def show
    # @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
  end

  def create
    # @note = Note.create(note_params)
    # redirect_to @note
  end

  def edit
    # @note = Note.find(params[:id])
  end

  def update
    # @note = Note.find(params[:id])
    # if @note.update_attributes(note_params)
    #   redirect_to @note
    # else
    #   render ('edit')
    # end
  end
    #do I need private stuff here?
end
