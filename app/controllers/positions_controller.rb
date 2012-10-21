class PositionsController < ApplicationController
  # GET /positions
  # GET /positions.json
  def index
    @search = Position.search(params[:q])
    @positions = @search.result
    @posts = Post.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @positions }
      format.json { render json: @posts }
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
  end

  def personalprofile
    @position = Position.find(params[:id])
  end

  def competencies
    @position = Position.find(params[:id])
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

    respond_to do |format|
      format.html { render html: positions_newzealand_path }
      format.json { render json: positions_newzealand_path }

    end
  end

  def international
    @search = Position.search(params[:q])
    @positions = @search.result
    @posts = Post.all

    respond_to do |format|
      format.html { render html: positions_international_path }
      format.json { render json: positions_international_path }
    end
  end

  def unitedkingdom
    @search = Position.search(params[:q])
    @positions = @search.result
    @posts = Post.all

    respond_to do |format|
      format.html { render html: positions_newzealand_path }
      format.json { render json: positions_newzealand_path }

    end
  end

  def netherlands
    @search = Position.search(params[:q])
    @positions = @search.result
    @posts = Post.all

    respond_to do |format|
      format.html { render html: positions_newzealand_path }
      format.json { render json: positions_newzealand_path }

    end
  end

  def dictionary
    @positions = Position.all

  end

end
