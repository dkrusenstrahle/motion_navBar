class SecondController < UIViewController
  def initWithNibName(name, bundle: bundle)
    super
    add_elements
    self
  end

  def viewDidLoad
    super
  end

  def add_elements

    # Set views title in the navigationBar

    self.title = "Second"

    # Set the window background color

    view.backgroundColor = UIColor.whiteColor 

    # Create the images

    tabNormal = UIImage.imageNamed('tabbar-activity-selected.png')
    tabSelected = UIImage.imageNamed('tabbar-activity-selected.png')

    backButtonNormal = UIImage.imageNamed('navbar_images/button_back.png').stretchableImageWithLeftCapWidth(17, topCapHeight:0)
    backButtonSelected = UIImage.imageNamed('navbar_images/button_back.png').stretchableImageWithLeftCapWidth(17, topCapHeight:0)

    # Style the tabBar item

    self.tabBarItem = UITabBarItem.alloc.initWithTitle('Second', image: nil, tag: 0)
    self.tabBarItem.setFinishedSelectedImage(tabSelected, withFinishedUnselectedImage: tabNormal) 

    # Style and adjust the back button

    offset = UIOffset.new(3, 0)

    UIBarButtonItem.appearance.setBackButtonBackgroundImage(backButtonNormal, forState:UIControlStateNormal, barMetrics:UIBarMetricsDefault)
    UIBarButtonItem.appearance.setBackButtonBackgroundImage(backButtonSelected, forState: UIControlStateHighlighted, barMetrics: UIBarMetricsDefault)
    UIBarButtonItem.appearance.setBackButtonTitlePositionAdjustment(offset, forBarMetrics:UIBarMetricsDefault)
  end
end