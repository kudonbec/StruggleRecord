class InfomationsController < ApplicationController
  # GET /infomations
  # GET /infomations.xml
  def index
    @infomations = Infomation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @infomations }
    end
  end

  # GET /infomations/1
  # GET /infomations/1.xml
  def show
    @infomation = Infomation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @infomation }
    end
  end

  # GET /infomations/new
  # GET /infomations/new.xml
  def new
    @infomation = Infomation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @infomation }
    end
  end

  # GET /infomations/1/edit
  def edit
    @infomation = Infomation.find(params[:id])
  end

  # POST /infomations
  # POST /infomations.xml
  def create
    @infomation = Infomation.new(params[:infomation])

    respond_to do |format|
      if @infomation.save
        format.html { redirect_to(@infomation, :notice => 'Infomation was successfully created.') }
        format.xml  { render :xml => @infomation, :status => :created, :location => @infomation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @infomation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /infomations/1
  # PUT /infomations/1.xml
  def update
    @infomation = Infomation.find(params[:id])

    respond_to do |format|
      if @infomation.update_attributes(params[:infomation])
        format.html { redirect_to(@infomation, :notice => 'Infomation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @infomation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /infomations/1
  # DELETE /infomations/1.xml
  def destroy
    @infomation = Infomation.find(params[:id])
    @infomation.destroy

    respond_to do |format|
      format.html { redirect_to(infomations_url) }
      format.xml  { head :ok }
    end
  end
end
