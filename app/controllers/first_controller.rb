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

    # Set views title in the navigationBar

    self.title = "First"

    # Create images and set default font

    defaultFont = UIFont.fontWithName('Futura-Medium', size:13)
    buttonNormal = UIImage.imageNamed('navbar_images/button.png')
    buttonSelected = UIImage.imageNamed('navbar_images/button.png')
    backgroundBody = UIImage.imageNamed('body/background_body.png')

    # Set the window background color

    view.backgroundColor = UIColor.whiteColor
    view.backgroundColor = UIColor.alloc.initWithPatternImage(backgroundBody)

    # Create button 

    button = UIBarButtonItem.alloc.init
    button.title = 'Add'
    button.target = self
    button.action = 'performAdd'
    button.setBackgroundImage(buttonNormal, forState:UIControlStateNormal, barMetrics:UIBarMetricsDefault)
    button.setBackgroundImage(buttonSelected, forState:UIControlStateHighlighted, barMetrics:UIBarMetricsDefault)
    button.setTitleTextAttributes({UITextAttributeFont => defaultFont}, forState:UIControlStateNormal)

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