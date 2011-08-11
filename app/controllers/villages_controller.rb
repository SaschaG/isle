class VillagesController < ApplicationController
  # GET /villages
  # GET /villages.xml
  def index
    @villages = Village.where(:user_id => current_user.id)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @villages }
    end
  end

  # GET /villages/1
  # GET /villages/1.xml
  def show
    @village = Village.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @village }
    end
  end

  # GET /villages/new
  # GET /villages/new.xml
  def new
    @village = Village.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @village }
    end
  end

  # GET /villages/1/edit
  def edit
    @village = Village.find(params[:id])
  end

  # POST /villages
  # POST /villages.xml
  def create
    @village = Village.new(params[:village])

    respond_to do |format|
      if @village.save
        @village.x = rand(100)
        @village.y = rand(100)
        if @village.x == Village.where(:x => @village.x) && @village.x == Village.where(:y => @village.y)
            while @village.x == Village.where(:x => @village.x) && @village.x == Village.where(:y => @village.y)
              @village.x = rand(100)
              @village.y = rand(100)
            end
        else
          @village.hq_id = 1
          @village.woodhouse_id = 1
          @village.mine_id = 1
          @village.pit_id = 1
          @village.user_id = current_user.id
          @village.save
          format.html { redirect_to(@village, :notice => 'Village was successfully created.') }
          format.xml  { render :xml => @village, :status => :created, :location => @village }
		end      
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @village.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /villages/1
  # PUT /villages/1.xml
  def update
    @village = Village.find(params[:id])
    @village.points = Hq.where(:id => @village.hq_id).first.points + 
    				  Woodhouse.where(:id => @village.woodhouse_id).first.points +
    				  Pit.where(:id => @village.pit_id).first.points +
    				  Mine.where(:id => @village.mine_id).first.points
    @village.save
    respond_to do |format|
      if @village.update_attributes(params[:village])
        format.html { redirect_to(@village, :notice => 'Village was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @village.errors, :status => :unprocessable_entity }
      end
    end
  end


  # DELETE /villages/1
  # DELETE /villages/1.xml
  def destroy
    @village = Village.find(params[:id])
    @village.destroy

    respond_to do |format|
      format.html { redirect_to(villages_url) }
      format.xml  { head :ok }
    end
  end
end
