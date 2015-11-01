class PathwayView < UIView
  # @property (nonatomic) CGSize contentSize;
  attr_accessor :contentSize

  # @property (nonatomic) BOOL scrollVertical;
  attr_accessor :scrollVertical

  # @property (nonatomic) BOOL scrollHorizontal;
  attr_accessor :scrollHorizontal

  #- (id)initWithFrame:(CGRect)frame
  def initWithFrame(rect)
    # self = [super initWithFrame:frame];
    # if (self == nil) {
    #    return nil;
    # }
    super

    # UIPanGestureRecognizer *gestureRecognizer = [[UIPanGestureRecognizer alloc]
    #    initWithTarget:self action:@selector(handlePanGesture:)];
    gestureRecognizer = UIPanGestureRecognizer.alloc.initWithTarget(self, action: 'handlePanGesture:')

    # [self addGestureRecognizer:gestureRecognizer];
    self.addGestureRecognizer(gestureRecognizer)
  end

  #  - (void)handlePanGesture:(UIPanGestureRecognizer *)gestureRecognizer
  def handlePanGesture(recognizer)
    #  CGPoint translation = [gestureRecognizer translationInView:self];
    translation = recognizer.translationInView(self)

    # CGRect bounds = self.bounds;
    bounds = self.bounds

    # // Translate the view's bounds, but do not permit values that would violate contentSize
    # CGFloat newBoundsOriginX = bounds.origin.x - translation.x;
    newBoundsOriginX = bounds.origin.x - translation.x

    # CGFloat minBoundsOriginX = 0.0;
    minBoundsOriginX = 0.0

    # CGFloat maxBoundsOriginX = self.contentSize.width - bounds.size.width
    maxBoundsOriginX = @contentSize.width - bounds.size.width

    # bounds.origin.x = fmax(minBoundsOriginX, fmin(newBoundsOriginX, maxBoundsOriginX));
    bounds.origin.x = [minBoundsOriginX, [newBoundsOriginX, maxBoundsOriginX].min].max

    # CGFloat newBoundsOriginY = bounds.origin.y - translation.y;
    newBoundsOriginY = bounds.origin.y - translation.y

    # CGFloat minBoundsOriginY = 0.0;
    minBoundsOriginY = 0.0

    # CGFloat maxBoundsOriginY = self.contentSize.height - bounds.size.height;
    maxBoundsOriginY = @contentSize.height - bounds.size.height

    # bounds.origin.y = fmax(minBoundsOriginY, fmin(newBoundsOriginY, maxBoundsOriginY));
    bounds.origin.y = [minBoundsOriginY, [newBoundsOriginY, maxBoundsOriginY].min].max

    # self.bounds = bounds;
    self.bounds = bounds

    # [gestureRecognizer setTranslation:CGPointZero inView:self];
    recognizer.setTranslation(CGPointZero, inView:self)
  end
end