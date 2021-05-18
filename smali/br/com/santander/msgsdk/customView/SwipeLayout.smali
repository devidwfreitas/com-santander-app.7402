.class public Lbr/com/santander/msgsdk/customView/SwipeLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RtlHardcoded"
    }
.end annotation


# static fields
.field private static final DEFAULT_MIN_DIST_REQUEST_DISALLOW_PARENT:I = 0x1

.field private static final DEFAULT_MIN_FLING_VELOCITY:I = 0x12c

.field public static final DRAG_EDGE_BOTTOM:I = 0x8

.field public static final DRAG_EDGE_LEFT:I = 0x1

.field public static final DRAG_EDGE_RIGHT:I = 0x2

.field public static final DRAG_EDGE_TOP:I = 0x4

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_SAME_LEVEL:I = 0x1

.field protected static final STATE_CLOSE:I = 0x0

.field protected static final STATE_CLOSING:I = 0x1

.field protected static final STATE_DRAGGING:I = 0x4

.field protected static final STATE_OPEN:I = 0x2

.field protected static final STATE_OPENING:I = 0x3


# instance fields
.field private volatile mAborted:Z

.field private mDragEdge:I

.field private mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private final mDragHelperCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

.field private mDragStateChangeListener:Lbr/com/santander/msgsdk/customView/SwipeLayout$DragStateChangeListener;

.field private mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

.field private final mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mIsOpenBeforeInit:Z

.field private volatile mIsScrolling:Z

.field private mLastMainLeft:I

.field private mLastMainTop:I

.field private volatile mLockDrag:Z

.field private mMainView:Landroid/view/View;

.field private mMinDistRequestDisallowParent:I

.field private mMinFlingVelocity:I

.field private mMode:I

.field private mOnLayoutCount:I

.field private mRectMainClose:Landroid/graphics/Rect;

.field private mRectMainOpen:Landroid/graphics/Rect;

.field private mRectSecClose:Landroid/graphics/Rect;

.field private mRectSecOpen:Landroid/graphics/Rect;

.field private mSecondaryView:Landroid/view/View;

.field private mState:I

.field private mSwipeListener:Lbr/com/santander/msgsdk/customView/SwipeLayout$SwipeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainClose:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainOpen:Landroid/graphics/Rect;

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectSecClose:Landroid/graphics/Rect;

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectSecOpen:Landroid/graphics/Rect;

    .line 41
    iput v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMinDistRequestDisallowParent:I

    .line 42
    iput-boolean v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mIsOpenBeforeInit:Z

    .line 43
    iput-boolean v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mAborted:Z

    .line 44
    iput-boolean v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mIsScrolling:Z

    .line 45
    iput-boolean v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mLockDrag:Z

    .line 46
    const/16 v0, 0x12c

    iput v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMinFlingVelocity:I

    .line 47
    iput v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mState:I

    .line 48
    iput v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMode:I

    .line 49
    iput v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mLastMainLeft:I

    .line 50
    iput v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mLastMainTop:I

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragEdge:I

    .line 56
    iput v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mOnLayoutCount:I

    .line 554
    new-instance v0, Lbr/com/santander/msgsdk/customView/SwipeLayout$1;

    invoke-direct {v0, p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout$1;-><init>(Lbr/com/santander/msgsdk/customView/SwipeLayout;)V

    iput-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 649
    new-instance v0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;

    invoke-direct {v0, p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;-><init>(Lbr/com/santander/msgsdk/customView/SwipeLayout;)V

    iput-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragHelperCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainClose:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainOpen:Landroid/graphics/Rect;

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectSecClose:Landroid/graphics/Rect;

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectSecOpen:Landroid/graphics/Rect;

    .line 41
    iput v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMinDistRequestDisallowParent:I

    .line 42
    iput-boolean v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mIsOpenBeforeInit:Z

    .line 43
    iput-boolean v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mAborted:Z

    .line 44
    iput-boolean v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mIsScrolling:Z

    .line 45
    iput-boolean v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mLockDrag:Z

    .line 46
    const/16 v0, 0x12c

    iput v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMinFlingVelocity:I

    .line 47
    iput v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mState:I

    .line 48
    iput v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMode:I

    .line 49
    iput v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mLastMainLeft:I

    .line 50
    iput v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mLastMainTop:I

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragEdge:I

    .line 56
    iput v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mOnLayoutCount:I

    .line 554
    new-instance v0, Lbr/com/santander/msgsdk/customView/SwipeLayout$1;

    invoke-direct {v0, p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout$1;-><init>(Lbr/com/santander/msgsdk/customView/SwipeLayout;)V

    iput-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 649
    new-instance v0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;

    invoke-direct {v0, p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;-><init>(Lbr/com/santander/msgsdk/customView/SwipeLayout;)V

    iput-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragHelperCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 91
    invoke-direct {p0, p1, p2}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainClose:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainOpen:Landroid/graphics/Rect;

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectSecClose:Landroid/graphics/Rect;

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectSecOpen:Landroid/graphics/Rect;

    .line 41
    iput v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMinDistRequestDisallowParent:I

    .line 42
    iput-boolean v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mIsOpenBeforeInit:Z

    .line 43
    iput-boolean v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mAborted:Z

    .line 44
    iput-boolean v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mIsScrolling:Z

    .line 45
    iput-boolean v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mLockDrag:Z

    .line 46
    const/16 v0, 0x12c

    iput v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMinFlingVelocity:I

    .line 47
    iput v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mState:I

    .line 48
    iput v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMode:I

    .line 49
    iput v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mLastMainLeft:I

    .line 50
    iput v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mLastMainTop:I

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragEdge:I

    .line 56
    iput v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mOnLayoutCount:I

    .line 554
    new-instance v0, Lbr/com/santander/msgsdk/customView/SwipeLayout$1;

    invoke-direct {v0, p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout$1;-><init>(Lbr/com/santander/msgsdk/customView/SwipeLayout;)V

    iput-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 649
    new-instance v0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;

    invoke-direct {v0, p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;-><init>(Lbr/com/santander/msgsdk/customView/SwipeLayout;)V

    iput-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragHelperCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 96
    return-void
.end method

.method static synthetic access$002(Lbr/com/santander/msgsdk/customView/SwipeLayout;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mIsScrolling:Z

    return p1
.end method

.method static synthetic access$100(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getDistToClosestEdge()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lbr/com/santander/msgsdk/customView/SwipeLayout;I)I
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->pxToDp(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMinFlingVelocity:I

    return v0
.end method

.method static synthetic access$1200(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getHalfwayPivotHorizontal()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getHalfwayPivotVertical()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMode:I

    return v0
.end method

.method static synthetic access$1500(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mLastMainLeft:I

    return v0
.end method

.method static synthetic access$1502(Lbr/com/santander/msgsdk/customView/SwipeLayout;I)I
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mLastMainLeft:I

    return p1
.end method

.method static synthetic access$1600(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mLastMainTop:I

    return v0
.end method

.method static synthetic access$1602(Lbr/com/santander/msgsdk/customView/SwipeLayout;I)I
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mLastMainTop:I

    return p1
.end method

.method static synthetic access$1700(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Lbr/com/santander/msgsdk/customView/SwipeLayout$SwipeListener;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSwipeListener:Lbr/com/santander/msgsdk/customView/SwipeLayout$SwipeListener;

    return-object v0
.end method

.method static synthetic access$1800(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainOpen:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1900(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mState:I

    return v0
.end method

.method static synthetic access$1902(Lbr/com/santander/msgsdk/customView/SwipeLayout;I)I
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mState:I

    return p1
.end method

.method static synthetic access$200(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMinDistRequestDisallowParent:I

    return v0
.end method

.method static synthetic access$2000(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Lbr/com/santander/msgsdk/customView/SwipeLayout$DragStateChangeListener;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragStateChangeListener:Lbr/com/santander/msgsdk/customView/SwipeLayout$DragStateChangeListener;

    return-object v0
.end method

.method static synthetic access$300(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mAborted:Z

    return v0
.end method

.method static synthetic access$302(Lbr/com/santander/msgsdk/customView/SwipeLayout;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mAborted:Z

    return p1
.end method

.method static synthetic access$400(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mLockDrag:Z

    return v0
.end method

.method static synthetic access$500(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    return-object v0
.end method

.method static synthetic access$700(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragEdge:I

    return v0
.end method

.method static synthetic access$800(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainClose:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$900(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    return-object v0
.end method

.method private dpToPx(I)I
    .locals 3

    .prologue
    .line 908
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 909
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 910
    int-to-float v1, p1

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v0, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getDistToClosestEdge()I
    .locals 3

    .prologue
    .line 596
    iget v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragEdge:I

    packed-switch v0, :pswitch_data_0

    .line 630
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 598
    :pswitch_1
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainClose:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 600
    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMainView:Landroid/view/View;

    .line 601
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainClose:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMainView:Landroid/view/View;

    .line 602
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    .line 600
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 606
    :pswitch_2
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainClose:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 608
    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMainView:Landroid/view/View;

    .line 609
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int v0, v1, v0

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainClose:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMainView:Landroid/view/View;

    .line 610
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 608
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 614
    :pswitch_3
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainClose:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 616
    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMainView:Landroid/view/View;

    .line 617
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMainView:Landroid/view/View;

    .line 618
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    .line 616
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 622
    :pswitch_4
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainClose:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 624
    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainClose:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMainView:Landroid/view/View;

    .line 625
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMainView:Landroid/view/View;

    .line 626
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v0, v2, v0

    .line 624
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto/16 :goto_0

    .line 596
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private getHalfwayPivotHorizontal()I
    .locals 2

    .prologue
    .line 634
    iget v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragEdge:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 635
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainClose:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 637
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainClose:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getHalfwayPivotVertical()I
    .locals 2

    .prologue
    .line 642
    iget v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragEdge:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 643
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainClose:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 645
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainClose:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getMainOpenLeft()I
    .locals 2

    .prologue
    .line 435
    iget v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragEdge:I

    packed-switch v0, :pswitch_data_0

    .line 449
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 437
    :pswitch_1
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainClose:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 440
    :pswitch_2
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainClose:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 443
    :pswitch_3
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainClose:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 446
    :pswitch_4
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainClose:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 435
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private getMainOpenTop()I
    .locals 2

    .prologue
    .line 454
    iget v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragEdge:I

    packed-switch v0, :pswitch_data_0

    .line 468
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 456
    :pswitch_1
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainClose:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 459
    :pswitch_2
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainClose:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 462
    :pswitch_3
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainClose:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 465
    :pswitch_4
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainClose:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 454
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private getSecOpenLeft()I
    .locals 2

    .prologue
    .line 473
    iget v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragEdge:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragEdge:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 474
    :cond_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectSecClose:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 480
    :goto_0
    return v0

    .line 477
    :cond_1
    iget v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragEdge:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 478
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectSecClose:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 480
    :cond_2
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectSecClose:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getSecOpenTop()I
    .locals 2

    .prologue
    .line 485
    iget v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragEdge:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragEdge:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 486
    :cond_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectSecClose:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 492
    :goto_0
    return v0

    .line 489
    :cond_1
    iget v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragEdge:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 490
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectSecClose:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 492
    :cond_2
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectSecClose:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public static getStateString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 880
    packed-switch p0, :pswitch_data_0

    .line 897
    const-string v0, "undefined"

    :goto_0
    return-object v0

    .line 882
    :pswitch_0
    const-string v0, "state_close"

    goto :goto_0

    .line 885
    :pswitch_1
    const-string v0, "state_closing"

    goto :goto_0

    .line 888
    :pswitch_2
    const-string v0, "state_open"

    goto :goto_0

    .line 891
    :pswitch_3
    const-string v0, "state_opening"

    goto :goto_0

    .line 894
    :pswitch_4
    const-string v0, "state_dragging"

    goto :goto_0

    .line 880
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 531
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 532
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lbr/com/santander/msgsdk/R$styleable;->SwipeLayout:[I

    invoke-virtual {v0, p2, v1, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 538
    sget v1, Lbr/com/santander/msgsdk/R$styleable;->SwipeLayout_msgDragEdge:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragEdge:I

    .line 539
    sget v1, Lbr/com/santander/msgsdk/R$styleable;->SwipeLayout_flingVelocity:I

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMinFlingVelocity:I

    .line 540
    sget v1, Lbr/com/santander/msgsdk/R$styleable;->SwipeLayout_msgSwipeMode:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMode:I

    .line 542
    sget v1, Lbr/com/santander/msgsdk/R$styleable;->SwipeLayout_minDistRequestDisallowParent:I

    .line 544
    invoke-direct {p0, v4}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->dpToPx(I)I

    move-result v2

    .line 542
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMinDistRequestDisallowParent:I

    .line 548
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragHelperCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-static {p0, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 549
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 551
    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat;

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    .line 552
    return-void
.end method

.method private initRects()V
    .locals 6

    .prologue
    .line 498
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainClose:Landroid/graphics/Rect;

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMainView:Landroid/view/View;

    .line 499
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMainView:Landroid/view/View;

    .line 500
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMainView:Landroid/view/View;

    .line 501
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMainView:Landroid/view/View;

    .line 502
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 498
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 506
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectSecClose:Landroid/graphics/Rect;

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    .line 507
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    .line 508
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    .line 509
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    .line 510
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 506
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 514
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainOpen:Landroid/graphics/Rect;

    .line 515
    invoke-direct {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getMainOpenLeft()I

    move-result v1

    .line 516
    invoke-direct {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getMainOpenTop()I

    move-result v2

    .line 517
    invoke-direct {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getMainOpenLeft()I

    move-result v3

    iget-object v4, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMainView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 518
    invoke-direct {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getMainOpenTop()I

    move-result v4

    iget-object v5, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMainView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 514
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 522
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectSecOpen:Landroid/graphics/Rect;

    .line 523
    invoke-direct {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getSecOpenLeft()I

    move-result v1

    .line 524
    invoke-direct {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getSecOpenTop()I

    move-result v2

    .line 525
    invoke-direct {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getSecOpenLeft()I

    move-result v3

    iget-object v4, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 526
    invoke-direct {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getSecOpenTop()I

    move-result v4

    iget-object v5, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 522
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 528
    return-void
.end method

.method private pxToDp(I)I
    .locals 3

    .prologue
    .line 902
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 903
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 904
    int-to-float v1, p1

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v0, v2

    div-float v0, v1, v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method protected abort()V
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mAborted:Z

    .line 427
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    .line 428
    return-void
.end method

.method public close(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 352
    iput-boolean v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mIsOpenBeforeInit:Z

    .line 353
    iput-boolean v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mAborted:Z

    .line 355
    if-eqz p1, :cond_1

    .line 356
    const/4 v0, 0x1

    iput v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mState:I

    .line 357
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMainView:Landroid/view/View;

    iget-object v2, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainClose:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainClose:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 359
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragStateChangeListener:Lbr/com/santander/msgsdk/customView/SwipeLayout$DragStateChangeListener;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragStateChangeListener:Lbr/com/santander/msgsdk/customView/SwipeLayout$DragStateChangeListener;

    iget v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mState:I

    invoke-interface {v0, v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout$DragStateChangeListener;->onDragStateChanged(I)V

    .line 382
    :cond_0
    :goto_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 383
    return-void

    .line 364
    :cond_1
    iput v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mState:I

    .line 365
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    .line 367
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMainView:Landroid/view/View;

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainClose:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainClose:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainClose:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainClose:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 374
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectSecClose:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectSecClose:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectSecClose:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectSecClose:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 316
    :cond_0
    return-void
.end method

.method public getDragEdge()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragEdge:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMinFlingVelocity:I

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDragLocked()Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mLockDrag:Z

    return v0
.end method

.method public isOpened()Z
    .locals 2

    .prologue
    .line 414
    iget v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 119
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 122
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 123
    invoke-virtual {p0, v2}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    .line 124
    invoke-virtual {p0, v3}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMainView:Landroid/view/View;

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getChildCount()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 126
    invoke-virtual {p0, v2}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMainView:Landroid/view/View;

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 108
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 110
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 111
    :goto_0
    iget-object v3, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mIsScrolling:Z

    if-eqz v3, :cond_3

    move v3, v1

    .line 114
    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 110
    goto :goto_0

    :cond_3
    move v3, v2

    .line 111
    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 13

    .prologue
    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mAborted:Z

    .line 135
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 136
    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 139
    const/4 v4, 0x0

    .line 141
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getPaddingLeft()I

    move-result v7

    .line 142
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getPaddingRight()I

    move-result v1

    sub-int v1, p4, v1

    sub-int/2addr v1, p2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 143
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getPaddingTop()I

    move-result v9

    .line 144
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getPaddingBottom()I

    move-result v1

    sub-int v1, p5, v1

    sub-int v1, v1, p3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 146
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 147
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 150
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 151
    const/4 v1, 0x0

    .line 152
    const/4 v2, 0x0

    .line 154
    if-eqz v11, :cond_0

    .line 155
    iget v1, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    .line 156
    :goto_1
    iget v2, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v12, -0x1

    if-ne v2, v12, :cond_3

    const/4 v2, 0x1

    .line 159
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    .line 160
    sub-int v1, v10, v9

    .line 161
    iput v1, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v5, v1

    .line 164
    :cond_1
    if-eqz v2, :cond_7

    .line 165
    sub-int v1, v8, v7

    .line 166
    iput v1, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 169
    :goto_3
    iget v2, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragEdge:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v1, v4

    move v2, v4

    move v3, v4

    .line 199
    :goto_4
    invoke-virtual {v6, v3, v4, v2, v1}, Landroid/view/View;->layout(IIII)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 156
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 171
    :pswitch_1
    sub-int v1, p4, v1

    invoke-virtual {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 172
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getPaddingTop()I

    move-result v1

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 173
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getPaddingRight()I

    move-result v1

    sub-int v1, p4, v1

    sub-int/2addr v1, p2

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 174
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v5

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_4

    .line 178
    :pswitch_2
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getPaddingLeft()I

    move-result v2

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 179
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getPaddingTop()I

    move-result v2

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 180
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 181
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v5

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_4

    .line 185
    :pswitch_3
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getPaddingLeft()I

    move-result v2

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 186
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getPaddingTop()I

    move-result v2

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 187
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 188
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v5

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_4

    .line 192
    :pswitch_4
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getPaddingLeft()I

    move-result v2

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 193
    sub-int v2, p5, v5

    invoke-virtual {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int v2, v2, p3

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 194
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 195
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getPaddingBottom()I

    move-result v1

    sub-int v1, p5, v1

    sub-int v1, v1, p3

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto/16 :goto_4

    .line 202
    :cond_4
    iget v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 203
    iget v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragEdge:I

    packed-switch v0, :pswitch_data_1

    .line 221
    :cond_5
    :goto_5
    :pswitch_5
    invoke-direct {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->initRects()V

    .line 223
    iget-boolean v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mIsOpenBeforeInit:Z

    if-eqz v0, :cond_6

    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->open(Z)V

    .line 229
    :goto_6
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mLastMainLeft:I

    .line 230
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mLastMainTop:I

    .line 232
    iget v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mOnLayoutCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mOnLayoutCount:I

    .line 233
    return-void

    .line 205
    :pswitch_6
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_5

    .line 209
    :pswitch_7
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_5

    .line 213
    :pswitch_8
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_5

    .line 217
    :pswitch_9
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_5

    .line 226
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->close(Z)V

    goto :goto_6

    :cond_7
    move v1, v3

    goto/16 :goto_3

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 203
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 17

    .prologue
    .line 237
    invoke-virtual/range {p0 .. p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 238
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "O Layout deve ter dois filhos"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 241
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 243
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 244
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 246
    const/4 v5, 0x0

    .line 247
    const/4 v4, 0x0

    .line 249
    const/4 v3, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 250
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 251
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v6, v1, v2}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->measureChild(Landroid/view/View;II)V

    .line 252
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 253
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 249
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 255
    :cond_1
    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 256
    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 258
    invoke-static {v11}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 259
    invoke-static {v12}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 261
    const/4 v3, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getChildCount()I

    move-result v13

    if-ge v3, v13, :cond_4

    .line 262
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 263
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 265
    if-eqz v14, :cond_3

    .line 266
    iget v15, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 267
    invoke-virtual {v13, v7}, Landroid/view/View;->setMinimumHeight(I)V

    .line 270
    :cond_2
    iget v14, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_3

    .line 271
    invoke-virtual {v13, v6}, Landroid/view/View;->setMinimumWidth(I)V

    .line 275
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v11, v12}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->measureChild(Landroid/view/View;II)V

    .line 276
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 277
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 261
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 280
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getPaddingRight()I

    move-result v11

    add-int/2addr v3, v11

    add-int/2addr v3, v5

    .line 281
    invoke-virtual/range {p0 .. p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getPaddingBottom()I

    move-result v11

    add-int/2addr v5, v11

    add-int/2addr v4, v5

    .line 283
    const/high16 v5, 0x40000000    # 2.0f

    if-ne v9, v5, :cond_6

    .line 296
    :goto_2
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v10, v3, :cond_9

    move v3, v7

    .line 308
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v3}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->setMeasuredDimension(II)V

    .line 309
    return-void

    .line 286
    :cond_6
    iget v5, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    if-ne v5, v11, :cond_7

    move v3, v6

    .line 290
    :cond_7
    const/high16 v5, -0x80000000

    if-ne v9, v5, :cond_b

    .line 291
    if-le v3, v6, :cond_8

    move v3, v6

    :cond_8
    move v6, v3

    goto :goto_2

    .line 299
    :cond_9
    iget v3, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_a

    move v3, v7

    .line 303
    :goto_4
    const/high16 v4, -0x80000000

    if-ne v10, v4, :cond_5

    .line 304
    if-le v3, v7, :cond_5

    move v3, v7

    goto :goto_3

    :cond_a
    move v3, v4

    goto :goto_4

    :cond_b
    move v6, v3

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 101
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public open(Z)V
    .locals 5

    .prologue
    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mIsOpenBeforeInit:Z

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mAborted:Z

    .line 322
    if-eqz p1, :cond_1

    .line 323
    const/4 v0, 0x3

    iput v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mState:I

    .line 324
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMainView:Landroid/view/View;

    iget-object v2, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainOpen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainOpen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 326
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragStateChangeListener:Lbr/com/santander/msgsdk/customView/SwipeLayout$DragStateChangeListener;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragStateChangeListener:Lbr/com/santander/msgsdk/customView/SwipeLayout$DragStateChangeListener;

    iget v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mState:I

    invoke-interface {v0, v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout$DragStateChangeListener;->onDragStateChanged(I)V

    .line 348
    :cond_0
    :goto_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 349
    return-void

    .line 330
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mState:I

    .line 331
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    .line 333
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMainView:Landroid/view/View;

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainOpen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainOpen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainOpen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectMainOpen:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 340
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSecondaryView:Landroid/view/View;

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectSecOpen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectSecOpen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectSecOpen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mRectSecOpen:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public setDragEdge(I)V
    .locals 0

    .prologue
    .line 394
    iput p1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragEdge:I

    .line 395
    return-void
.end method

.method setDragStateChangeListener(Lbr/com/santander/msgsdk/customView/SwipeLayout$DragStateChangeListener;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mDragStateChangeListener:Lbr/com/santander/msgsdk/customView/SwipeLayout$DragStateChangeListener;

    .line 423
    return-void
.end method

.method public setLockDrag(Z)V
    .locals 0

    .prologue
    .line 406
    iput-boolean p1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mLockDrag:Z

    .line 407
    return-void
.end method

.method public setMinFlingVelocity(I)V
    .locals 0

    .prologue
    .line 386
    iput p1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mMinFlingVelocity:I

    .line 387
    return-void
.end method

.method public setSwipeListener(Lbr/com/santander/msgsdk/customView/SwipeLayout$SwipeListener;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mSwipeListener:Lbr/com/santander/msgsdk/customView/SwipeLayout$SwipeListener;

    .line 403
    return-void
.end method

.method protected shouldRequestLayout()Z
    .locals 2

    .prologue
    .line 431
    iget v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout;->mOnLayoutCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
