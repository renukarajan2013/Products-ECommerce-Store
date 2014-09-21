RSpec.describe MusicController, :type => :routing do
  describe "routing" do
    it "route /music/1" do
       expect(put: "/music/1").to route_to("music#update", id: "1", type: 'Music')
    end
  end
end
