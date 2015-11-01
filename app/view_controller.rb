class ViewController < UIViewController
  def viewDidLoad
    # [super viewDidLoad];
    super

    # self.customScrollView = [[CustomScrollView alloc] initWithFrame:self.view.bounds];
    @pathwayView = PathwayView.alloc.initWithFrame(view.bounds)

    # self.customScrollView.contentSize = CGSizeMake(self.view.bounds.size.width, 1000);
    @pathwayView.contentSize = CGSizeMake(view.bounds.size.width, 1000)

    # UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView = UIView.alloc.initWithFrame(CGRectMake(20, 20, 100, 100))

    # UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 160, 150, 200)];
    greenView = UIView.alloc.initWithFrame(CGRectMake(150, 160, 150, 200))

    # UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView = UIView.alloc.initWithFrame(CGRectMake(40, 400, 200, 150))

    # UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowView = UIView.alloc.initWithFrame(CGRectMake(100, 600, 180, 150))

    # redView.backgroundColor = [UIColor colorWithRed:0.815 green:0.007 blue:0.105 alpha:1];
    redView.backgroundColor = UIColor.colorWithRed(0.49, green:0.007, blue:0.105, alpha:1)

    # greenView.backgroundColor = [UIColor colorWithRed:0.494 green:0.827 blue:0.129 alpha:1];
    greenView.backgroundColor = UIColor.colorWithRed(0.494, green:0.827, blue:0.129, alpha:1)

    # blueView.backgroundColor = [UIColor colorWithRed:0.29 green:0.564 blue:0.886 alpha:1];
    blueView.backgroundColor = UIColor.colorWithRed(0.29, green:0.564, blue:0.886, alpha:1)

    # yellowView.backgroundColor = [UIColor colorWithRed:0.972 green:0.905 blue:0.109 alpha:1];
    yellowView.backgroundColor = UIColor.colorWithRed(0.972, green:0.905, blue:0.109, alpha:1)

    # [self.customScrollView addSubview:redView];
    @pathwayView.addSubview(redView)

    # [self.customScrollView addSubview:greenView];
    @pathwayView.addSubview(greenView)

    # [self.customScrollView addSubview:blueView];
    @pathwayView.addSubview(blueView)

    # [self.customScrollView addSubview:yellowView];
    @pathwayView.addSubview(yellowView)

    # UIView *redView1 = [[UIView alloc] initWithFrame:CGRectMake(20, 500+20, 100, 100)];
    purpleView = UIView.alloc.initWithFrame(CGRectMake(20, 500+20, 100, 100))

    # UIView *greenView1 = [[UIView alloc] initWithFrame:CGRectMake(150, 500+160, 150, 200)];
    redView2 = UIView.alloc.initWithFrame(CGRectMake(150, 500+160, 150, 200))

    # UIView *blueView1 = [[UIView alloc] initWithFrame:CGRectMake(40, 500+400, 200, 150)];
    grayView = UIView.alloc.initWithFrame(CGRectMake(40, 500+400, 200, 150))

    # UIView *yellowView1 = [[UIView alloc] initWithFrame:CGRectMake(100, 500+600, 180, 150)];
    blackView = UIView.alloc.initWithFrame(CGRectMake(100, 500+600, 180, 150))

    # redView1.backgroundColor = [UIColor purpleColor];
    purpleView.backgroundColor = UIColor.purpleColor

    # greenView1.backgroundColor = [UIColor redColor];
    redView2.backgroundColor = UIColor.redColor

    # blueView1.backgroundColor = [UIColor grayColor];
    grayView.backgroundColor = UIColor.grayColor

    # yellowView1.backgroundColor = [UIColor blackColor];
    blackView.backgroundColor = UIColor.blackColor

    # [self.customScrollView addSubview:redView1];
    @pathwayView.addSubview(purpleView)

    # [self.customScrollView addSubview:greenView1];
    @pathwayView.addSubview(redView2)

    # [self.customScrollView addSubview:blueView1];
    @pathwayView.addSubview(grayView)

    # [self.customScrollView addSubview:yellowView1];
    @pathwayView.addSubview(blackView)

    # [self.view addSubview:self.customScrollView];
    view.addSubview(@pathwayView)
  end
end