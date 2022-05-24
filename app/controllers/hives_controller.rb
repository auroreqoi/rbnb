class HivesController < ApplicationController
  def new
  end

  def create
  end

  def show
  end

  def index
    @hives = Hive.all
  end
end
