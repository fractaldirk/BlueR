class PositionsController < ApplicationController
  # GET /positions
  # GET /positions.json
  def index
    if user_signed_in?
      redirect_to home_page_path
    else
      redirect_to new_user_session_path
    end
  end

  # GET /positions/1
  # GET /positions/1.json
  def show
    @position = Position.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @position }
    end
  end

  # GET /positions/new
  # GET /positions/new.json
  def new
    @position = Position.new
    1.times { @position.competencies.build }

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @position }
    end
  end

  # GET /positions/1/edit
  def edit
    @position = Position.find(params[:id])
  end

  # POST /positions
  # POST /positions.json
  def create
    @position = Position.new(params[:position])

    respond_to do |format|
      if @position.save
        format.html { redirect_to positions_path, notice: 'Position was successfully created.' }
        format.json { render json: positions_path, status: :created, location: @position }
      else
        format.html { render action: "new" }
        format.json { render json: @position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /positions/1
  # PUT /positions/1.json
  def update
    @position = Position.find(params[:id])

    respond_to do |format|
      if @position.update_attributes(params[:position])
        if params[:jobdescription_button]
          format.html { redirect_to jobdescription_position_path, notice: 'Job description was successfully updated.' }
          format.json { head :no_content }
        elsif params[:personal_profile_button]
          format.html { redirect_to personalprofile_position_path, notice: 'Personal profile have been successfully updated'}
        elsif params[:competencies_button]
          format.html { redirect_to competencies_position_path, notice: 'Competencies have been successfully updated'}
        else
          format.html { redirect_to @position, notice: 'Position was successfully updated.' }
          format.json { head :no_content }
        end
      else
        format.html { render action: "edit" }
        format.json { render json: @position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /positions/1
  # DELETE /positions/1.json
  def destroy
    @position = Position.find(params[:id])
    @position.destroy

    respond_to do |format|
      format.html { redirect_to positions_url }
      format.json { head :no_content }
    end
  end

  def jobdescription
    @position = Position.find(params[:id])
    @wiki = Wiki.find(1)

    respond_to do |format|
      format.html { render html: jobdescription_position_path }
      format.doc
    end
  end

  def personalprofile
    @position = Position.find(params[:id])
    @wiki = Wiki.find(1)
  end

  def competencies
    @position = Position.find(params[:id])
    @wiki = Wiki.find(1)

    respond_to do |format|
      format.html { render html: competencies_position_path }
      format.xls
    end
  end

  def editjobdescription
     @position = Position.find(params[:id])
  end

  def editcompetencies
    @position = Position.find(params[:id])
  end

  def editpersonalprofile
    @position = Position.find(params[:id])
  end

  def newzealand
    @search = Position.search(params[:q])
    @positions = @search.result
    @posts = Post.all
    @wiki = Wiki.find(1)

    respond_to do |format|
      format.html { render html: positions_newzealand_path }
      format.json { render json: positions_newzealand_path }

    end
  end

  def international
    @search = Position.search(params[:q])
    @positions = @search.result
    @posts = Post.all
    @wiki = Wiki.find(1)

    respond_to do |format|
      format.html { render html: positions_international_path }
      format.json { render json: positions_international_path }
    end
  end

  def unitedkingdom
    @search = Position.search(params[:q])
    @positions = @search.result
    @posts = Post.all
    @wiki = Wiki.find(1)

    respond_to do |format|
      format.html { render html: positions_unitedkingdom_path }
      format.json { render json: positions_unitedkingdom_path }

    end
  end

  def netherlands
    @search = Position.search(params[:q])
    @positions = @search.result
    @posts = Post.all
    @wiki = Wiki.find(1)

    respond_to do |format|
      format.html { render html: positions_netherlands_path }
      format.json { render json: positions_netherlands_path }

    end
  end

  def dictionary
    @competencies = Competency.all
    @wiki = Wiki.find(1)

    respond_to do |format|
      format.html { render html: positions_dictionary_path }
      format.xls
    end
  end

  def home_page_path
    if @current_user.user_office == 1
      positions_international_path
    elsif @current_user.user_office == 2
      positions_unitedkingdom_path
    elsif @current_user.user_office == 3
      positions_netherlands_path
    elsif @current_user.user_office == 4
      positions_newzealand_path
    elsif @current_user.user_office == 5
      positions_livescreen_path
    end
  end

  def livescreen
    @search = Position.search(params[:q])
    @positions = @search.result
    @posts = Post.all
    @wiki = Wiki.find(1)

    respond_to do |format|
      format.html { render html: positions_livescreen_path }
      format.json { render json: positions_livescreen_path }
    end
  end

  def recruitment
    @position = Position.find(params[:id])
    @wiki = Wiki.find(1)

    respond_to do |format|
      format.html { render html: jobdescription_position_path }
      format.doc
      format.xls
    end
  end
end
