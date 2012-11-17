class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    # Set status bar color to black

    application.setStatusBarStyle(UIStatusBarStyleBlackOpaque, animated:false)

    # Create the main controller

    firstController = FirstController.alloc.initWithNibName(nil, bundle: nil)

    # Create the navbar controller

    navbarController = UINavigationController.alloc.initWithRootViewController(firstController)

    # Style the navigation bar

    backgroundImage = UIImage.imageNamed('navigationbar.png') 

    navbarController.navigationBar.setBackgroundImage(backgroundImage, forBarMetrics:UIBarMetricsDefault)

    # Create the main window

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navbarController
    @window.makeKeyAndVisible

    true
  end
end
