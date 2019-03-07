class WelcomeController < ApplicationController
  def index
    @reviews = Review.all

  end
  def sugarbush
  #  SiteVisitor.new
  #  SiteVisitor.new.visit_page('sugarbush')
  visit_mountain('Sugar bush')
  end
  def wachusettMountain
    SiteVisitor.new.visit_page('wachusett')
    trails_open = SiteVisitor.new.print_trails_open
    @trails = trails_open
    lifts_open = SiteVisitor.new.print_lifts_open
    @lifts = lifts_open
    base_depth = SiteVisitor.new.print_base_depth
    @base_depth = base_depth
    summit_depth= SiteVisitor.new.print_summit_depth
    @summit_depth = summit_depth
    summit_temp = SiteVisitor.new.print_summit_temp
    @summit_temp = summit_temp
    base_temp = SiteVisitor.new.print_base_temp
    @base_temp = base_temp
  end
  def mountAbram
    SiteVisitor.new.visit_page('mount abram')
    trails_open = SiteVisitor.new.print_trails_open
    @trails = trails_open
    lifts_open = SiteVisitor.new.print_lifts_open
    @lifts = lifts_open
    base_depth = SiteVisitor.new.print_base_depth
    @base_depth = base_depth
    summit_depth= SiteVisitor.new.print_summit_depth
    @summit_depth = summit_depth
    summit_temp = SiteVisitor.new.print_summit_temp
    @summit_temp = summit_temp
    base_temp = SiteVisitor.new.print_base_temp
    @base_temp = base_temp
  end
  def sundayRiver
    SiteVisitor.new.visit_page('sunday river')
    trails_open = SiteVisitor.new.print_trails_open
    @trails = trails_open
    lifts_open = SiteVisitor.new.print_lifts_open
    @lifts = lifts_open
    base_depth = SiteVisitor.new.print_base_depth
    @base_depth = base_depth
    summit_depth= SiteVisitor.new.print_summit_depth
    @summit_depth = summit_depth
    summit_temp = SiteVisitor.new.print_summit_temp
    @summit_temp = summit_temp
    base_temp = SiteVisitor.new.print_base_temp
    @base_temp = base_temp
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
def visit_mountain(mountain)
site_visitor = SiteVisitor.new.visit_page(mountain)
@trails = site_visitor.print_trails_open
@lifts = site_visitor.print_trails_open
@base_depth = site_visitor.print_base_depth
@summit_depth = site_visitor.print_summit_depth
@summit_temp = site_visitor.print_summit_temp
@base_temp = site_visitor.print_base_temp
end
