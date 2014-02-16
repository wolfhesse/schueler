class AlgoErnsthaftEins
  def initialize
    @voriges_x=0
    @step = 0.2
  end

  def next_xy
    x=@voriges_x+@step
    y=Math::E
    @voriges_x =x

    return x, y
  end
end