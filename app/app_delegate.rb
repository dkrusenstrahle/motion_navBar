class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    # Set status bar color to black

    application.setStatusBarStyle(UIStatusBarStyleBlackOpaque, animated:false)

    # Create the main controller

    firstViewController = FirstController.alloc.initWithNibName(nil, bundle: nil)

    # Create the navbar controller

    navbarController = UINavigationController.alloc.initWithRootViewController(firstViewController)

    # Style the navigation bar

    backgroundImage = UIImage.imageNamed('navbar_images/background_navbar.png')

    navbarController.navigationBar.setBackgroundImage(backgroundImage, forBarMetrics:UIBarMetricsDefault)
    navbarController.navigationBar.setTitleTextAttributes({
      UITextAttributeFont => UIFont.fontWithName('Futura-Medium', size:17),
      UITextAttributeTextShadowColor => UIColor.colorWithWhite(0.0, alpha:0.4)
    })

    # Create the main window

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navbarController
    @window.makeKeyAndVisible

    true
  end
end
