class ButtonController < UIBarButtonItem
  def init
    checkInImage = UIImage.imageNamed('nav-button.png')
    checkInPressed = UIImage.imageNamed('nav-button-green.png')

    button = UIBarButtonItem.alloc.init
    button.title = 'Add'
    button.setBackgroundImage(checkInImage, forState:UIControlStateNormal, barMetrics:UIBarMetricsDefault)
    button.setBackgroundImage(checkInPressed, forState:UIControlStateHighlighted, barMetrics:UIBarMetricsDefault)
    button
  end
end