class OfficesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]

  def index
    @offices = policy_scope(Office).all
  end
end
