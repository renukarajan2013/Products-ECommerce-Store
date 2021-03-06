require 'rails_helper'

RSpec.describe "cart_items/edit", :type => :view do
  before(:each) do
    @cart_item = assign(:cart_item, CartItem.create!(
      :book_id => 1,
      :cart_id => 1
    ))
  end

  it "renders the edit cart_item form" do
    render

    assert_select "form[action=?][method=?]", cart_item_path(@cart_item), "post" do

      assert_select "input#cart_item_book_id[name=?]", "cart_item[book_id]"

      assert_select "input#cart_item_cart_id[name=?]", "cart_item[cart_id]"
    end
  end
end
