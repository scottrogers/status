class LaunchStatusesController < ApplicationController
  # GET /launch_statuses
  # GET /launch_statuses.json
  def index
    @launch_statuses = LaunchStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @launch_statuses }
    end
  end

  # GET /launch_statuses/1
  # GET /launch_statuses/1.json
  def show
    @launch_status = LaunchStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @launch_status }
    end
  end

  # GET /launch_statuses/new
  # GET /launch_statuses/new.json
  def new
    @launch_status = LaunchStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @launch_status }
    end
  end

  # GET /launch_statuses/1/edit
  def edit
    @launch_status = LaunchStatus.find(params[:id])
  end

  # POST /launch_statuses
  # POST /launch_statuses.json
  def create
    @launch_status = LaunchStatus.new(params[:launch_status])

    respond_to do |format|
      if @launch_status.save
        format.html { redirect_to @launch_status, :notice => 'Launch status was successfully created.' }
        format.json { render :json => @launch_status, :status => :created, :location => @launch_status }
      else
        format.html { render :action => "new" }
        format.json { render :json => @launch_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /launch_statuses/1
  # PUT /launch_statuses/1.json
  def update
    @launch_status = LaunchStatus.find(params[:id])

    respond_to do |format|
      if @launch_status.update_attributes(params[:launch_status])
        format.html { redirect_to @launch_status, :notice => 'Launch status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @launch_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /launch_statuses/1
  # DELETE /launch_statuses/1.json
  def destroy
    @launch_status = LaunchStatus.find(params[:id])
    @launch_status.destroy

    respond_to do |format|
      format.html { redirect_to launch_statuses_url }
      format.json { head :no_content }
    end
  end
end
