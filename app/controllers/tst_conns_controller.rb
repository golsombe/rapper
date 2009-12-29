class TstConnsController < ApplicationController
  # GET /tst_conns
  # GET /tst_conns.xml
  def index
    @tst_conns = TstConn.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tst_conns }
    end
  end

  # GET /tst_conns/1
  # GET /tst_conns/1.xml
  def show
    @tst_conn = TstConn.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tst_conn }
    end
  end

  # GET /tst_conns/new
  # GET /tst_conns/new.xml
  def new
    @tst_conn = TstConn.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tst_conn }
    end
  end

  # GET /tst_conns/1/edit
  def edit
    @tst_conn = TstConn.find(params[:id])
  end

  # POST /tst_conns
  # POST /tst_conns.xml
  def create
    @tst_conn = TstConn.new(params[:tst_conn])

    respond_to do |format|
      if @tst_conn.save
        flash[:notice] = 'TstConn was successfully created.'
        format.html { redirect_to(@tst_conn) }
        format.xml  { render :xml => @tst_conn, :status => :created, :location => @tst_conn }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tst_conn.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tst_conns/1
  # PUT /tst_conns/1.xml
  def update
    @tst_conn = TstConn.find(params[:id])

    respond_to do |format|
      if @tst_conn.update_attributes(params[:tst_conn])
        flash[:notice] = 'TstConn was successfully updated.'
        format.html { redirect_to(@tst_conn) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tst_conn.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tst_conns/1
  # DELETE /tst_conns/1.xml
  def destroy
    @tst_conn = TstConn.find(params[:id])
    @tst_conn.destroy

    respond_to do |format|
      format.html { redirect_to(tst_conns_url) }
      format.xml  { head :ok }
    end
  end
end
