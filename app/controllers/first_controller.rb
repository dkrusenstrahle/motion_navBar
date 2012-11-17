class FirstController < UIViewController
  def initWithNibName(name, bundle: bundle)
    super
    customize
    self
  end

  def viewDidLoad
    super
  end

  def customize

    # Set main view attributes

    self.title = "First"
    view.backgroundColor = UIColor.whiteColor 

    # Create images

    selected = UIImage.imageNamed('tabbar-activity-selected.png')
    unselected = UIImage.imageNamed('tabbar-activity-selected.png')
    checkInImage = UIImage.imageNamed('nav-button.png')
    checkInPressed = UIImage.imageNamed('nav-button-green.png')

    # Style tabBar item

    self.tabBarItem = UITabBarItem.alloc.initWithTitle('First', image: nil, tag: 0)
    self.tabBarItem.setFinishedSelectedImage(selected, withFinishedUnselectedImage: unselected)

    # Create button 

    button = UIBarButtonItem.alloc.init
    button.title = 'Add'
    button.target = self
    button.action = 'performAdd'
    button.setBackgroundImage(checkInImage, forState:UIControlStateNormal, barMetrics:UIBarMetricsDefault)
    button.setBackgroundImage(checkInPressed, forState:UIControlStateHighlighted, barMetrics:UIBarMetricsDefault)

    # Add button to navigation controller

    self.navigationItem.rightBarButtonItem = button
  end

  def performAdd

    # Create the controller

    controller = SecondController.alloc.init

    # Open the controller page
    
    self.navigationController.pushViewController(controller, animated:true)
  end
end