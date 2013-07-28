class ClubsController < ApplicationController

before_filter :find_member
before_filter :find_member, :only => [:show, :edit, :update, :destroy]


  def new
    @club = @member.clubs.build
  end

  def create
    @club = @member.clubs.build(params[:club])

    if @club.save
      flash[:notice] = "Club has been created."
      redirect_to [@member, @club]
    else
      flash[:alert] = "Club has not been created."
      render :action => "new"
    end

    def show
    end

    def edit
    end







end


  end




  private
    def find_member
      @member = Member.find(params[:member_id])
    end










end
