class LllController < ApplicationController

    def index
#        @arans = Aran.paginate_by_board_id @board.id, :page => params[:page], :order => 'updated_at DESC'
        @arans = Aran.paginate :page => params[:page], :order => 'created_at DESC'
        if  params[:page] == nil
            params[:page] = "1"
        end             
        if  params[:id] == nil
            params[:id] = ((params[:page].to_i - 1)*12 + 1).to_s 
        end
        @pp = Aran.find(:first, :conditions => {:id => params[:id]}).path
        @np = Aran.find(:first, :conditions => {:id => params[:id]}).name
    end
end
