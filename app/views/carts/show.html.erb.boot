<%- model_class = Cart -%>
<div class="page-header">
  <h1><%=t '.title', :default => model_class.model_name.human.titleize %></h1>
</div>

<dl class="dl-horizontal">
  <dt><strong><%= model_class.human_attribute_name(:cart_id) %>:</strong></dt>
  <dd><%=  @cart = Cart.find(session[:id]) %></dd>
  <dd><%= @cart.id %></dd>
</dl>

<%= link_to t('.back', :default => t("helpers.links.back")),
              carts_path, :class => 'btn btn-default'  %>
<%= link_to t('.edit', :default => t("helpers.links.edit")),
              edit_cart_path(@cart), :class => 'btn btn-default' %>
<%= link_to t('.destroy', :default => t("helpers.links.destroy")),
              cart_path(@cart),
              :method => 'delete',
              :data => { :confirm => t('.confirm', :default => t("helpers.links.confirm", :default => 'Are you sure?')) },
              :class => 'btn btn-danger' %>
