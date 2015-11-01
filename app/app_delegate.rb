class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    # self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)

    # self.window.backgroundColor = [UIColor whiteColor];
    @window.backgroundColor = UIColor.whiteColor;

    # ViewController *viewController = [[ViewController alloc] init];
    # self.window.rootViewController = viewController;
    @window.rootViewController = ViewController.alloc.init;

    # [self.window makeKeyAndVisible];
    @window.makeKeyAndVisible

    # return YES;
    true
  end
end
