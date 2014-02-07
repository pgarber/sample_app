class AttributesController < ApplicationController
end

  def index
    @attributes = Attribute.all
  end

  def show
    @attributes = Attribute.all
  end