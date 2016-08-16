require 'boris_bikes'

describe "boris bikes" do
  it " should recognise DockingStation when instantiated" do
    expect(DockingStation).to exist
  end
end
