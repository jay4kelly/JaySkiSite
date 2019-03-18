class WelcomeController < ApplicationController
  def index
    @reviews = Review.all
  end
  def sugarbush
  #  SiteVisitor.new
  #  SiteVisitor.new.visit_page('sugarbush')visit_mountain(mountain)
  visit_mountain('Sugarbush')
  end
  def wachusettMountain
  visit_mountain('Wachusett mountain')
  end
  def mountAbram
    visit_mountain('Mount Abram')
  end
  def sundayRiver
    visit_mountain('Sunday River')
  end
  def blueHillsSkiArea
    visit_mountain('blue hills Ski Area')
  end
  def sugarloaf
  visit_mountain('sugarloaf')
  end
  def mountSunapee
    visit_mountain('Mount Sunapee')
  end
  def patsPeak
  visit_mountain('Pats peak')
  end
  def berkshireEast
    visit_mountain('berkshire east')
  end
  def show
     @review = Review.find(params[:id])
  end
    def new
    end

    def create
     @review = Review.new(review_params)
      @review.save
      redirect_to @review
    end
    private
    def review_params
      params.require(:review).permit(:title,:text)
  end
end
def visit_mountain(mountain_name)
site_visitor = SiteVisitor.new(mountain_name)
@trails = site_visitor.print_trails_open
@lifts = site_visitor.print_lifts_open
@base_depth = site_visitor.print_base_depth
@summit_depth = site_visitor.print_summit_depth
@summit_temp = site_visitor.print_summit_temp
@base_temp = site_visitor.print_base_temp
end
