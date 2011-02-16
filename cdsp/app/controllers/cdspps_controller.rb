class CdsppsController < ApplicationController
  # GET /cdspps
  # GET /cdspps.xml
  def index
    @cdspps = Cdspp.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cdspps }
    end
  end

  # GET /cdspps/1
  # GET /cdspps/1.xml
  def show
    @cdspp = Cdspp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cdspp }
    end
  end

  # GET /cdspps/new
  # GET /cdspps/new.xml
  def new
    @cdspp = Cdspp.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cdspp }
    end
  end

  # GET /cdspps/1/edit
  def edit
    @cdspp = Cdspp.find(params[:id])
  end

  # POST /cdspps
  # POST /cdspps.xml
  def create
    @cdspp = Cdspp.new(params[:cdspp])

    respond_to do |format|
      if @cdspp.save
        format.html { redirect_to(@cdspp, :notice => 'Cdspp was successfully created.') }
        format.xml  { render :xml => @cdspp, :status => :created, :location => @cdspp }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cdspp.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cdspps/1
  # PUT /cdspps/1.xml
  def update
    @cdspp = Cdspp.find(params[:id])

    respond_to do |format|
      if @cdspp.update_attributes(params[:cdspp])
        format.html { redirect_to(@cdspp, :notice => 'Cdspp was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cdspp.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cdspps/1
  # DELETE /cdspps/1.xml
  def destroy
    @cdspp = Cdspp.find(params[:id])
    @cdspp.destroy

    respond_to do |format|
      format.html { redirect_to(cdspps_url) }
      format.xml  { head :ok }
    end
  end
end
