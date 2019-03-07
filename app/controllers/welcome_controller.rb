class WelcomeController < ApplicationController
  def index
    @reviews = Review.all

  end
  def sugarbush
  #  SiteVisitor.new
    SiteVisitor.new.visit_page('sugarbush')
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
    SiteVisitor.new.visit_page('blue hills ski area')
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

  def sugarloaf
    SiteVisitor.new.visit_page('sugarloaf')

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
  def mountSunapee
    SiteVisitor.new.visit_page('mount sunapee')
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
  def patsPeak
    SiteVisitor.new.visit_page('pats peak')
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
  def berkshireEast
    SiteVisitor.new.visit_page('berkshire east')
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
