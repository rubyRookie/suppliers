class SuppliersController < ApplicationController
  # GET /suppliers
  def index
    @suppliers = Supplier.order(:company).all
    @json = Supplier.order(:company).all.to_gmaps4rails
  end

  # GET /suppliers/1
  def show
    @supplier = Supplier.find(params[:id])
    @categories = Supplier.find(params[:id]).categories
  end

  # GET /suppliers/new
  def new
    @supplier = Supplier.new
  end

  # GET /suppliers/1/edit
  def edit
    @supplier = Supplier.find(params[:id])
  end

  # POST /suppliers
  def create
    @supplier = Supplier.new(params[:supplier])

    if @supplier.save
      redirect_to @supplier, notice: 'Supplier was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /suppliers/1
  def update
    params[:supplier][:category_ids] ||= [] 
    @supplier = Supplier.find(params[:id])
    
    if @supplier.update_attributes(params[:supplier])
      redirect_to @supplier, notice: 'Supplier was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /suppliers/1
  def destroy
    @supplier = Supplier.find(params[:id])
    @supplier.destroy

    redirect_to suppliers_url
  end
end
