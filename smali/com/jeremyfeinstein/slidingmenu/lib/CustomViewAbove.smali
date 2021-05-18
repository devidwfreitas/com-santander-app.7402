.class public Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String; = "CustomViewAbove"

.field private static final f:Z = false

.field private static final g:Z = false

.field private static final h:I = 0x258

.field private static final i:I = 0x19

.field private static final j:Landroid/view/animation/Interpolator;

.field private static final v:I = -0x1


# instance fields
.field private A:Lfbj;

.field private B:Lfbj;

.field private C:Lfcd;

.field private D:Lfcf;

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private F:Z

.field private G:F

.field protected a:I

.field protected b:Landroid/view/VelocityTracker;

.field protected c:I

.field protected d:I

.field private k:Landroid/view/View;

.field private l:I

.field private m:Landroid/widget/Scroller;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:I

.field private s:F

.field private t:F

.field private u:F

.field private w:I

.field private x:I

.field private y:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lfbh;

    invoke-direct {v0}, Lfbh;-><init>()V

    sput-object v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->j:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->z:Z

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->E:Ljava/util/List;

    .line 565
    iput v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->d:I

    .line 611
    iput-boolean v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->F:Z

    .line 838
    const/4 v0, 0x0

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->G:F

    .line 157
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a()V

    .line 158
    return-void
.end method

.method private a(FII)I
    .locals 3

    .prologue
    .line 811
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l:I

    .line 812
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->x:I

    if-le v1, v2, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->w:I

    if-le v1, v2, :cond_2

    .line 813
    if-lez p2, :cond_1

    if-lez p3, :cond_1

    .line 814
    add-int/lit8 v0, v0, -0x1

    .line 821
    :cond_0
    :goto_0
    return v0

    .line 815
    :cond_1
    if-gez p2, :cond_0

    if-gez p3, :cond_0

    .line 816
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 819
    :cond_2
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;I)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 605
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 606
    if-ne v0, v1, :cond_0

    .line 607
    iput v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    .line 608
    :cond_0
    return v0
.end method

.method public static synthetic a(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;)Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->y:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    return-object v0
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 874
    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->n:Z

    if-eq v0, p1, :cond_0

    .line 875
    iput-boolean p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->n:Z

    .line 886
    :cond_0
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 334
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 335
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 336
    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 337
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 339
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(F)Z
    .locals 1

    .prologue
    .line 593
    .line 594
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->y:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->b(F)Z

    move-result v0

    .line 601
    :goto_0
    return v0

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->y:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a(F)Z

    move-result v0

    goto :goto_0
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 576
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->G:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 577
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 578
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->y:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Landroid/view/View;

    iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a(Landroid/view/View;IF)Z

    move-result v0

    .line 589
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 580
    :cond_1
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->d:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 586
    :pswitch_1
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->y:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->b(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0

    .line 582
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 580
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 781
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    .line 782
    invoke-direct {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 783
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 786
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->t:F

    sub-float v3, v2, v0

    .line 787
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 788
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 789
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->u:F

    sub-float v0, v1, v0

    .line 790
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 791
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->r:I

    div-int/lit8 v0, v0, 0x2

    :goto_1
    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_3

    cmpl-float v0, v4, v5

    if-lez v0, :cond_3

    invoke-direct {p0, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b(F)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 792
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->p()V

    .line 793
    iput v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->t:F

    .line 794
    iput v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->u:F

    .line 795
    invoke-direct {p0, v6}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(Z)V

    goto :goto_0

    .line 791
    :cond_2
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->r:I

    goto :goto_1

    .line 797
    :cond_3
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->r:I

    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_0

    .line 798
    iput-boolean v6, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->q:Z

    goto :goto_0
.end method

.method private d(I)V
    .locals 4

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getWidth()I

    move-result v0

    .line 513
    div-int v1, p1, v0

    .line 514
    rem-int v2, p1, v0

    .line 515
    int-to-float v3, v2

    int-to-float v0, v0

    div-float v0, v3, v0

    .line 517
    invoke-virtual {p0, v1, v0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(IFI)V

    .line 518
    return-void
.end method

.method private d(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 842
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 843
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 844
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    if-ne v1, v2, :cond_0

    .line 847
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 848
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->t:F

    .line 849
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    .line 850
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 854
    :cond_0
    return-void

    .line 847
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()I
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->y:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private n()I
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->y:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->b(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private o()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 542
    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->o:Z

    .line 543
    if-eqz v0, :cond_2

    .line 545
    invoke-direct {p0, v4}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(Z)V

    .line 546
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 547
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollX()I

    move-result v0

    .line 548
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollY()I

    move-result v1

    .line 549
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->m:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 550
    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->m:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 551
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 552
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V

    .line 554
    :cond_1
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 555
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->D:Lfcf;

    if-eqz v0, :cond_2

    .line 556
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->D:Lfcf;

    invoke-interface {v0}, Lfcf;->a()V

    .line 562
    :cond_2
    :goto_0
    iput-boolean v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->o:Z

    .line 563
    return-void

    .line 558
    :cond_3
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->C:Lfcd;

    if-eqz v0, :cond_2

    .line 559
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->C:Lfcd;

    invoke-interface {v0}, Lfcd;->a()V

    goto :goto_0
.end method

.method private p()V
    .locals 1

    .prologue
    .line 857
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->p:Z

    .line 858
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->F:Z

    .line 859
    return-void
.end method

.method private q()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 862
    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->F:Z

    .line 863
    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->p:Z

    .line 864
    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->q:Z

    .line 865
    const/4 v0, -0x1

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    .line 867
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 869
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    .line 871
    :cond_0
    return-void
.end method


# virtual methods
.method a(F)F
    .locals 4

    .prologue
    .line 301
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    .line 302
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 303
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public a(I)I
    .locals 2

    .prologue
    .line 307
    packed-switch p1, :pswitch_data_0

    .line 314
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 310
    :pswitch_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->y:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a(Landroid/view/View;I)I

    move-result v0

    goto :goto_0

    .line 312
    :pswitch_1
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method a(Lfbj;)Lfbj;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->B:Lfbj;

    .line 278
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->B:Lfbj;

    .line 279
    return-object v0
.end method

.method a()V
    .locals 3

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setWillNotDraw(Z)V

    .line 162
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setDescendantFocusability(I)V

    .line 163
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setFocusable(Z)V

    .line 164
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 165
    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->j:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->m:Landroid/widget/Scroller;

    .line 166
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 167
    invoke-static {v1}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v2

    iput v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->r:I

    .line 168
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->w:I

    .line 169
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->c:I

    .line 170
    new-instance v1, Lfbi;

    invoke-direct {v1, p0}, Lfbi;-><init>(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;)V

    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(Lfbj;)Lfbj;

    .line 186
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 187
    const/high16 v1, 0x41c80000    # 25.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->x:I

    .line 188
    return-void
.end method

.method protected a(IFI)V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->A:Lfbj;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->A:Lfbj;

    invoke-interface {v0, p1, p2, p3}, Lfbj;->a(IFI)V

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->B:Lfbj;

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->B:Lfbj;

    invoke-interface {v0, p1, p2, p3}, Lfbj;->a(IFI)V

    .line 539
    :cond_1
    return-void
.end method

.method a(II)V
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(III)V

    .line 377
    return-void
.end method

.method a(III)V
    .locals 10

    .prologue
    const/16 v5, 0x258

    const/4 v6, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    .line 387
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 389
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(Z)V

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollX()I

    move-result v1

    .line 393
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollY()I

    move-result v2

    .line 394
    sub-int v3, p1, v1

    .line 395
    sub-int v4, p2, v2

    .line 396
    if-nez v3, :cond_3

    if-nez v4, :cond_3

    .line 397
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->o()V

    .line 398
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->D:Lfcf;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->D:Lfcf;

    invoke-interface {v0}, Lfcf;->a()V

    goto :goto_0

    .line 402
    :cond_2
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->C:Lfcd;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->C:Lfcd;

    invoke-interface {v0}, Lfcd;->a()V

    goto :goto_0

    .line 408
    :cond_3
    invoke-direct {p0, v6}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(Z)V

    .line 409
    iput-boolean v6, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->o:Z

    .line 411
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->f()I

    move-result v0

    .line 412
    div-int/lit8 v6, v0, 0x2

    .line 413
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v9

    int-to-float v8, v0

    div-float/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 414
    int-to-float v8, v6

    int-to-float v6, v6

    .line 415
    invoke-virtual {p0, v7}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(F)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v6, v8

    .line 418
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 419
    if-lez v7, :cond_4

    .line 420
    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 426
    :goto_1
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 428
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->m:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 429
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->invalidate()V

    goto :goto_0

    .line 422
    :cond_4
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v0, v0

    div-float v0, v6, v0

    .line 423
    add-float/2addr v0, v9

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v0, v6

    float-to-int v0, v0

    move v0, v5

    .line 424
    goto :goto_1
.end method

.method a(IZZ)V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(IZZI)V

    .line 217
    return-void
.end method

.method a(IZZI)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 220
    if-nez p3, :cond_0

    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l:I

    if-ne v0, p1, :cond_0

    .line 221
    invoke-direct {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(Z)V

    .line 242
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->y:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a(I)I

    move-result v2

    .line 227
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l:I

    if-eq v0, v2, :cond_3

    const/4 v0, 0x1

    .line 228
    :goto_1
    iput v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l:I

    .line 229
    iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l:I

    invoke-virtual {p0, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(I)I

    move-result v3

    .line 230
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->A:Lfbj;

    if-eqz v4, :cond_1

    .line 231
    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->A:Lfbj;

    invoke-interface {v4, v2}, Lfbj;->a(I)V

    .line 233
    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->B:Lfbj;

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->B:Lfbj;

    invoke-interface {v0, v2}, Lfbj;->a(I)V

    .line 236
    :cond_2
    if-eqz p2, :cond_4

    .line 237
    invoke-virtual {p0, v3, v1, p4}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(III)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 227
    goto :goto_1

    .line 239
    :cond_4
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->o()V

    .line 240
    invoke-virtual {p0, v3, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->E:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->E:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_0
    return-void
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 936
    const/4 v0, 0x0

    .line 937
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 938
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 958
    :cond_0
    :goto_0
    return v0

    .line 940
    :sswitch_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->c(I)Z

    move-result v0

    goto :goto_0

    .line 943
    :sswitch_1
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->c(I)Z

    move-result v0

    goto :goto_0

    .line 946
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 949
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 950
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->c(I)Z

    move-result v0

    goto :goto_0

    .line 951
    :cond_1
    invoke-static {p1, v3}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 952
    invoke-virtual {p0, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->c(I)Z

    move-result v0

    goto :goto_0

    .line 938
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method protected a(Landroid/view/View;ZIII)Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    .line 900
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v6, p1

    .line 901
    check-cast v6, Landroid/view/ViewGroup;

    .line 902
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    .line 903
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    .line 904
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 906
    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_0
    if-ltz v7, :cond_2

    .line 907
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 908
    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p5, v9

    .line 909
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p4, v8

    .line 910
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v9

    .line 911
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    .line 910
    invoke-virtual/range {v0 .. v5}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 917
    :cond_0
    :goto_1
    return v2

    .line 906
    :cond_1
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_0

    .line 917
    :cond_2
    if-eqz p2, :cond_3

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public b()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l:I

    return v0
.end method

.method public b(I)I
    .locals 1

    .prologue
    .line 351
    packed-switch p1, :pswitch_data_0

    .line 357
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 353
    :pswitch_0
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->f()I

    move-result v0

    goto :goto_0

    .line 355
    :pswitch_1
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->E:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 290
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 294
    return-void
.end method

.method public c(I)Z
    .locals 5

    .prologue
    const/16 v4, 0x42

    const/16 v3, 0x11

    .line 962
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 963
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 965
    :cond_0
    const/4 v1, 0x0

    .line 967
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 969
    if-eqz v2, :cond_4

    if-eq v2, v0, :cond_4

    .line 970
    if-ne p1, v3, :cond_2

    .line 971
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    .line 988
    :goto_0
    if-eqz v0, :cond_1

    .line 989
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->playSoundEffect(I)V

    .line 991
    :cond_1
    return v0

    .line 972
    :cond_2
    if-ne p1, v4, :cond_8

    .line 975
    if-eqz v0, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-gt v1, v0, :cond_3

    .line 976
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l()Z

    move-result v0

    goto :goto_0

    .line 978
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_0

    .line 981
    :cond_4
    if-eq p1, v3, :cond_5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 983
    :cond_5
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k()Z

    move-result v0

    goto :goto_0

    .line 984
    :cond_6
    if-eq p1, v4, :cond_7

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 986
    :cond_7
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l()Z

    move-result v0

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    .line 489
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 490
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 491
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollX()I

    move-result v0

    .line 492
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollY()I

    move-result v1

    .line 493
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->m:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 494
    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->m:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 496
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 497
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V

    .line 498
    invoke-direct {p0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->d(I)V

    .line 502
    :cond_1
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->invalidate()V

    .line 509
    :goto_0
    return-void

    .line 508
    :cond_2
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->o()V

    goto :goto_0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 830
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 832
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->y:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 833
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->y:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Landroid/view/View;

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->j()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a(Landroid/view/View;Landroid/graphics/Canvas;F)V

    .line 834
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->y:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Landroid/view/View;

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->j()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->b(Landroid/view/View;Landroid/graphics/Canvas;F)V

    .line 835
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 924
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 330
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->y:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    if-nez v0, :cond_0

    .line 344
    const/4 v0, 0x0

    .line 346
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->y:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->b()I

    move-result v0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->z:Z

    return v0
.end method

.method public h()Landroid/view/View;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Landroid/view/View;

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->d:I

    return v0
.end method

.method protected j()F
    .locals 2

    .prologue
    .line 825
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->G:F

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->f()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method k()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 995
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l:I

    if-lez v1, :cond_0

    .line 996
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(IZ)V

    .line 999
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method l()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1003
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l:I

    if-ge v1, v0, :cond_0

    .line 1004
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(IZ)V

    .line 1007
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 616
    iget-boolean v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->z:Z

    if-nez v2, :cond_1

    .line 663
    :cond_0
    :goto_0
    return v0

    .line 619
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 625
    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    if-eq v2, v1, :cond_2

    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->q:Z

    if-eqz v3, :cond_3

    .line 627
    :cond_2
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->q()V

    goto :goto_0

    .line 631
    :cond_3
    sparse-switch v2, :sswitch_data_0

    .line 657
    :cond_4
    :goto_1
    iget-boolean v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->p:Z

    if-nez v2, :cond_6

    .line 658
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    if-nez v2, :cond_5

    .line 659
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    .line 661
    :cond_5
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 663
    :cond_6
    iget-boolean v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->p:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->F:Z

    if-eqz v2, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0

    .line 633
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->c(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 636
    :sswitch_1
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 637
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    .line 638
    iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 640
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->s:F

    iput v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->t:F

    .line 641
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->u:F

    .line 642
    invoke-direct {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 643
    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->p:Z

    .line 644
    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->q:Z

    .line 645
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->y:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Landroid/view/View;

    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->G:F

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->b(Landroid/view/View;IF)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 646
    iput-boolean v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->F:Z

    goto :goto_1

    .line 649
    :cond_8
    iput-boolean v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->q:Z

    goto :goto_1

    .line 653
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->d(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 631
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 474
    sub-int v0, p4, p2

    .line 475
    sub-int v1, p5, p3

    .line 476
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 477
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 450
    invoke-static {v2, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getDefaultSize(II)I

    move-result v0

    .line 451
    invoke-static {v2, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getDefaultSize(II)I

    move-result v1

    .line 452
    invoke-virtual {p0, v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setMeasuredDimension(II)V

    .line 454
    invoke-static {p1, v2, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getChildMeasureSpec(III)I

    move-result v0

    .line 455
    invoke-static {p2, v2, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getChildMeasureSpec(III)I

    move-result v1

    .line 456
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 457
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 461
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 463
    if-eq p1, p3, :cond_0

    .line 467
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->o()V

    .line 468
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l:I

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V

    .line 470
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x1

    .line 670
    iget-boolean v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->z:Z

    if-nez v1, :cond_1

    .line 777
    :cond_0
    :goto_0
    return v0

    .line 673
    :cond_1
    iget-boolean v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->p:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 679
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 681
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    if-nez v2, :cond_3

    .line 682
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    .line 684
    :cond_3
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 686
    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    move v0, v3

    .line 777
    goto :goto_0

    .line 692
    :pswitch_1
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->o()V

    .line 695
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 696
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    .line 697
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->s:F

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->t:F

    goto :goto_1

    .line 700
    :pswitch_2
    iget-boolean v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->p:Z

    if-nez v1, :cond_5

    .line 701
    invoke-direct {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->c(Landroid/view/MotionEvent;)V

    .line 702
    iget-boolean v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->q:Z

    if-nez v1, :cond_0

    .line 705
    :cond_5
    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->p:Z

    if-eqz v0, :cond_4

    .line 707
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    invoke-direct {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 708
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    if-eq v1, v5, :cond_4

    .line 710
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 711
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->t:F

    sub-float/2addr v1, v0

    .line 712
    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->t:F

    .line 713
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    .line 714
    add-float v2, v0, v1

    .line 715
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->m()I

    move-result v0

    int-to-float v0, v0

    .line 716
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->n()I

    move-result v1

    int-to-float v1, v1

    .line 717
    cmpg-float v4, v2, v0

    if-gez v4, :cond_6

    .line 723
    :goto_2
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->t:F

    float-to-int v2, v0

    int-to-float v2, v2

    sub-float v2, v0, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->t:F

    .line 724
    float-to-int v1, v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V

    .line 725
    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->d(I)V

    goto :goto_1

    .line 719
    :cond_6
    cmpl-float v0, v2, v1

    if-lez v0, :cond_9

    move v0, v1

    .line 720
    goto :goto_2

    .line 729
    :pswitch_3
    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->p:Z

    if-eqz v0, :cond_8

    .line 730
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    .line 731
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->c:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 732
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    .line 734
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollX()I

    move-result v1

    .line 738
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l:I

    invoke-virtual {p0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->f()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 739
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    invoke-direct {p0, p1, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 740
    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    if-eq v4, v5, :cond_7

    .line 741
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 742
    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->s:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 743
    invoke-direct {p0, v1, v0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(FII)I

    move-result v1

    .line 744
    invoke-virtual {p0, v1, v3, v3, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(IZZI)V

    .line 748
    :goto_3
    iput v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    .line 749
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->q()V

    goto/16 :goto_1

    .line 746
    :cond_7
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l:I

    invoke-virtual {p0, v1, v3, v3, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(IZZI)V

    goto :goto_3

    .line 750
    :cond_8
    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->F:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->y:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Landroid/view/View;

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->G:F

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v4}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->b(Landroid/view/View;IF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 752
    invoke-virtual {p0, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(I)V

    .line 753
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->q()V

    goto/16 :goto_1

    .line 757
    :pswitch_4
    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->p:Z

    if-eqz v0, :cond_4

    .line 758
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l:I

    invoke-virtual {p0, v0, v3, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(IZZ)V

    .line 759
    iput v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    .line 760
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->q()V

    goto/16 :goto_1

    .line 764
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 765
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->t:F

    .line 766
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    goto/16 :goto_1

    .line 770
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->d(Landroid/view/MotionEvent;)V

    .line 771
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    invoke-direct {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 772
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    if-eq v1, v5, :cond_4

    .line 774
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->t:F

    goto/16 :goto_1

    :cond_9
    move v0, v2

    goto/16 :goto_2

    .line 686
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public scrollTo(II)V
    .locals 2

    .prologue
    .line 804
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 805
    int-to-float v0, p1

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->G:F

    .line 806
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->y:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a(Landroid/view/View;II)V

    .line 807
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->j()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(F)V

    .line 808
    return-void
.end method

.method public setAboveOffset(I)V
    .locals 4

    .prologue
    .line 482
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Landroid/view/View;

    .line 483
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 482
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 484
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->removeView(Landroid/view/View;)V

    .line 435
    :cond_0
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Landroid/view/View;

    .line 436
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->addView(Landroid/view/View;)V

    .line 437
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .prologue
    .line 198
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(IZZ)V

    .line 199
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(IZZ)V

    .line 209
    return-void
.end method

.method public setCustomViewBehind(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->y:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    .line 445
    return-void
.end method

.method public setOnClosedListener(Lfcd;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->C:Lfcd;

    .line 268
    return-void
.end method

.method public setOnOpenedListener(Lfcf;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->D:Lfcf;

    .line 264
    return-void
.end method

.method public setOnPageChangeListener(Lfbj;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->A:Lfbj;

    .line 252
    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 0

    .prologue
    .line 366
    iput-boolean p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->z:Z

    .line 367
    return-void
.end method

.method public setTouchMode(I)V
    .locals 0

    .prologue
    .line 568
    iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->d:I

    .line 569
    return-void
.end method
