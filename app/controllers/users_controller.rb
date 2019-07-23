# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    if params[:page].present?
      # @index = (params[:page].to_i - 1) * 13
      @users = User.all.page(params[:page]).per(13)
    else
      # @index = 1
      @users = User.all.page(1).per(13)
    end

    # respond_to do |format|
    #   format.html {}
    #   format.js {
    #     render @users
    #   }
    # end
  end

  def new; end

  def show
    @user = User.find_by id: params[:id]
    # send_data generate_pdf(@user),
    #   filename: "123.pdf",
    #   type: "application/pdf"
    # respond_to do |format|
    #   format.html {redirect_to root_path, status: 400}
    #   format.pdf { send_data generate_pdf(@user),
    #                filename: "123.pdf",
    #                type: "application/pdf" }
    # end
    render :index if @user.nil?
  end

  def edit
    @user = User.find params[:id]
    respond_to do |format|
      format.js
    end
  end

  def update
    @user = User.find_by id: params[:id]
    if @user.update_attributes user_params
      respond_to do |format|
        format.js { render "update", locals: {message: "Success", user: @user}}
      end
    else
      respond_to do |format|
        format.js { render "update", locals: {message: "Failed"}}
      end
    end
  end

  private

  def generate_pdf(client)
    Prawn::Document.new do
      text client.name, align: :center
      text "Email: #{client.email}"
    end.render
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
