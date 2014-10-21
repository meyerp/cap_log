class CompaniesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  respond_to :html, :xml, :js



  def show
    respond_with(@company)
  end

  def new
    @company = Company.new
    respond_with(@company)

  end

  def edit
  end

  def create
    @company = Company.new(company_params)
    @company.save
    respond_with(@company)
    current_user.company_id = @company.id
    current_user.save
  end

  def update
    @company.update(company_params)
    respond_with(@company)
  end

  def destroy
    @company.destroy
    respond_with(@company)
  end

  private
    def set_company
      @company = current_user.company


    end

    def company_params
      params.require(:company).permit(:name, :type, :registration_number, :vat_number, :age, :size, :address, :zip_code, :city, :country, :phone_number, :website, :logo)
    end
end
