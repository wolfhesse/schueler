class AlgoErnsthaftEins
  def initialize
    @voriges_x=0
    @step = 0.2
  end

  def next_xy
    x=@voriges_x+@step
    y=Math::E ** x
    @voriges_x =x

    return x, y
  end

  def reset2
    @voriges_x =0
  end
end