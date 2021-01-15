class CouponsController < ApplicationController
    def index 
        @coupons = Coupon.all
    end

    def new 

    end 

    def create 
        c = Coupon.create!(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])

        redirect_to coupon_path(c)
    end

    def show 
        @coupon = Coupon.find_by_id(params[:id])
    end
end