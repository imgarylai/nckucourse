class ExpsController < ApplicationController
  # GET /exps
  # GET /exps.json
  def index
    @exps = Exp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exps }
    end
  end

  # GET /exps/1
  # GET /exps/1.json
  def show
    @exp = Exp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exp }
    end
  end

  # GET /exps/new
  # GET /exps/new.json
  def new
    @exp = Exp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exp }
    end
  end

  # GET /exps/1/edit
  def edit
    @exp = Exp.find(params[:id])
  end

  # POST /exps
  # POST /exps.json
  def create
    @exp = Exp.new(params[:exp])

    respond_to do |format|
      if @exp.save
        format.html { redirect_to @exp, notice: 'Exp was successfully created.' }
        format.json { render json: @exp, status: :created, location: @exp }
      else
        format.html { render action: "new" }
        format.json { render json: @exp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exps/1
  # PUT /exps/1.json
  def update
    @exp = Exp.find(params[:id])

    respond_to do |format|
      if @exp.update_attributes(params[:exp])
        format.html { redirect_to @exp, notice: 'Exp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exps/1
  # DELETE /exps/1.json
  def destroy
    @exp = Exp.find(params[:id])
    @exp.destroy

    respond_to do |format|
      format.html { redirect_to exps_url }
      format.json { head :no_content }
    end
  end

  def exps_admin
    @exps = Exp.all
  end
end
