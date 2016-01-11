class NotesController < ApplicationController

  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
  end

  def create
    # Instantiate new
    @note = Note.new(note_params)
    @user = User.find_or_create_by(name: params[:note][:user])
    @user.notes << @note
    @note.user = @user
    #save it
    # if save succeeds, redirect to the index action
    if @note.save
      redirect_to(:action => 'index')
    # if save fails, redisplay the form
    else
      render('new')
    end
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    # @note = Note.find(params[:id])
    # if @note.update_attributes(note_params)
    #   redirect_to @note
    # else
    #   render ('edit')
    # end
  end

  def destroy
    note = Note.find(params[:id]).destroy
    redirect_to(:action => 'index')
  end

  private

  def note_params
    #same as using "params[:subject]" except that it:
    # - raises an error is :note isn't present
    # - allows listed attributes to be mass-assigned
    params.require(:note).permit(:title, :text)
  end
end
