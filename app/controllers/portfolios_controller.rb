class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:edit, :update, :show, :destroy]
  layout 'portfolios'
  access all: [:show, :index, :angular], user: {except: [:destroy, :new, :create, :update, :edit]}, company_admin: :all
def index
	@portfolio_items = Portfolio.all 
end
def angular
  @angular_portfolio_items = Portfolio.angular 
end
def new
	@portfolio_item = Portfolio.new
  3.times { @portfolio_item.technologies.build }
	end
	 def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live.' }
        format.json { render :show, status: :created, location: @portfolio_item}
      else
        format.html { render :new }
        format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      end
    end
  end
  def edit
    3.times { @portfolio_item.technologies.build }
  end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'You successfully updated your Portfolio.' }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end
  def show
  end
 def destroy
  
  #Perform the lookup
  
  #Destroy the record

    @portfolio_item.destroy
  # Redirect  
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Post was successfully destroyed.' }
     
    end
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title,
                                      :subtitle,
                                      :body,
                                      technologies_attributes: [:name]
                                      )
  end

end

def set_portfolio_item
  @portfolio_item = Portfolio.find(params[:id])
  end

