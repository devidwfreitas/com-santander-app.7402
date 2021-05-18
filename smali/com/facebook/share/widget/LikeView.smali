.class public Lcom/facebook/share/widget/LikeView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final a:I = -0x1


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lccn;

.field private d:Landroid/widget/LinearLayout;

.field private e:Lcom/facebook/share/internal/LikeButton;

.field private f:Lcom/facebook/share/internal/LikeBoxCountView;

.field private g:Landroid/widget/TextView;

.field private h:Lbww;

.field private i:Lcco;

.field private j:Landroid/content/BroadcastReceiver;

.field private k:Lccl;

.field private l:Lccp;

.field private m:Lcck;

.field private n:Lccj;

.field private o:I

.field private p:I

.field private q:I

.field private r:Lbpa;

.field private s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 300
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 282
    sget-object v0, Lccp;->DEFAULT:Lccp;

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->l:Lccp;

    .line 283
    sget-object v0, Lcck;->DEFAULT:Lcck;

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->m:Lcck;

    .line 284
    sget-object v0, Lccj;->DEFAULT:Lccj;

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->n:Lccj;

    .line 285
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/share/widget/LikeView;->o:I

    .line 301
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView;->a(Landroid/content/Context;)V

    .line 302
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 311
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 282
    sget-object v0, Lccp;->DEFAULT:Lccp;

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->l:Lccp;

    .line 283
    sget-object v0, Lcck;->DEFAULT:Lcck;

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->m:Lcck;

    .line 284
    sget-object v0, Lccj;->DEFAULT:Lccj;

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->n:Lccj;

    .line 285
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/share/widget/LikeView;->o:I

    .line 312
    invoke-direct {p0, p2}, Lcom/facebook/share/widget/LikeView;->a(Landroid/util/AttributeSet;)V

    .line 313
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView;->a(Landroid/content/Context;)V

    .line 314
    return-void
.end method

.method public static synthetic a(Lcom/facebook/share/widget/LikeView;Lccl;)Lccl;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->k:Lccl;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 495
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lbjs;->com_facebook_likeview_edge_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/share/widget/LikeView;->p:I

    .line 496
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lbjs;->com_facebook_likeview_internal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/share/widget/LikeView;->q:I

    .line 497
    iget v0, p0, Lcom/facebook/share/widget/LikeView;->o:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lbjr;->com_facebook_likeview_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/share/widget/LikeView;->o:I

    .line 501
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/share/widget/LikeView;->setBackgroundColor(I)V

    .line 503
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->d:Landroid/widget/LinearLayout;

    .line 504
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 507
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView;->b(Landroid/content/Context;)V

    .line 510
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView;->c(Landroid/content/Context;)V

    .line 511
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView;->d(Landroid/content/Context;)V

    .line 513
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->e:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 514
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 515
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->f:Lcom/facebook/share/internal/LikeBoxCountView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 517
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/share/widget/LikeView;->addView(Landroid/view/View;)V

    .line 519
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->c:Lccn;

    invoke-direct {p0, v0, v1}, Lcom/facebook/share/widget/LikeView;->a(Ljava/lang/String;Lccn;)V

    .line 520
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->f()V

    .line 521
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 448
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lbjz;->com_facebook_like_view:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 454
    if-eqz v0, :cond_0

    .line 458
    sget v1, Lbjz;->com_facebook_like_view_com_facebook_object_id:I

    .line 459
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 458
    invoke-static {v1, v2}, Lbqq;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->b:Ljava/lang/String;

    .line 460
    sget v1, Lbjz;->com_facebook_like_view_com_facebook_object_type:I

    sget-object v2, Lccn;->DEFAULT:Lccn;

    .line 462
    invoke-virtual {v2}, Lccn;->getValue()I

    move-result v2

    .line 461
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 460
    invoke-static {v1}, Lccn;->fromInt(I)Lccn;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->c:Lccn;

    .line 463
    sget v1, Lbjz;->com_facebook_like_view_com_facebook_style:I

    sget-object v2, Lccp;->DEFAULT:Lccp;

    .line 465
    invoke-static {v2}, Lccp;->access$000(Lccp;)I

    move-result v2

    .line 464
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 463
    invoke-static {v1}, Lccp;->fromInt(I)Lccp;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->l:Lccp;

    .line 466
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->l:Lccp;

    if-nez v1, :cond_2

    .line 467
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported value for LikeView \'style\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_2
    sget v1, Lbjz;->com_facebook_like_view_com_facebook_auxiliary_view_position:I

    sget-object v2, Lccj;->DEFAULT:Lccj;

    .line 472
    invoke-static {v2}, Lccj;->access$100(Lccj;)I

    move-result v2

    .line 471
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 470
    invoke-static {v1}, Lccj;->fromInt(I)Lccj;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->n:Lccj;

    .line 473
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->n:Lccj;

    if-nez v1, :cond_3

    .line 474
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported value for LikeView \'auxiliary_view_position\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_3
    sget v1, Lbjz;->com_facebook_like_view_com_facebook_horizontal_alignment:I

    sget-object v2, Lcck;->DEFAULT:Lcck;

    .line 480
    invoke-static {v2}, Lcck;->access$200(Lcck;)I

    move-result v2

    .line 479
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 478
    invoke-static {v1}, Lcck;->fromInt(I)Lcck;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->m:Lcck;

    .line 481
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->m:Lcck;

    if-nez v1, :cond_4

    .line 482
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported value for LikeView \'horizontal_alignment\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_4
    sget v1, Lbjz;->com_facebook_like_view_com_facebook_foreground_color:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/share/widget/LikeView;->o:I

    .line 489
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0
.end method

.method private a(Lbww;)V
    .locals 3

    .prologue
    .line 630
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->h:Lbww;

    .line 632
    new-instance v0, Lccm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccm;-><init>(Lcom/facebook/share/widget/LikeView;Lcch;)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->j:Landroid/content/BroadcastReceiver;

    .line 634
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 637
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 638
    const-string v2, "com.facebook.sdk.LikeActionController.UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 639
    const-string v2, "com.facebook.sdk.LikeActionController.DID_ERROR"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 640
    const-string v2, "com.facebook.sdk.LikeActionController.DID_RESET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 642
    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 643
    return-void
.end method

.method public static synthetic a(Lcom/facebook/share/widget/LikeView;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/facebook/share/widget/LikeView;Lbww;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView;->a(Lbww;)V

    return-void
.end method

.method public static synthetic a(Lcom/facebook/share/widget/LikeView;Ljava/lang/String;Lccn;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/widget/LikeView;->a(Ljava/lang/String;Lccn;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lccn;)V
    .locals 2

    .prologue
    .line 611
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->e()V

    .line 613
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->b:Ljava/lang/String;

    .line 614
    iput-object p2, p0, Lcom/facebook/share/widget/LikeView;->c:Lccn;

    .line 616
    invoke-static {p1}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    new-instance v0, Lccl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccl;-><init>(Lcom/facebook/share/widget/LikeView;Lcch;)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->k:Lccl;

    .line 621
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->k:Lccl;

    invoke-static {p1, p2, v0}, Lbww;->a(Ljava/lang/String;Lccn;Lbxo;)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/facebook/share/widget/LikeView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 566
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->h:Lbww;

    if-eqz v0, :cond_1

    .line 567
    const/4 v0, 0x0

    .line 568
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->r:Lbpa;

    if-nez v1, :cond_0

    .line 569
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->c()Landroid/app/Activity;

    move-result-object v0

    .line 572
    :cond_0
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->h:Lbww;

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->r:Lbpa;

    .line 575
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->d()Landroid/os/Bundle;

    move-result-object v3

    .line 572
    invoke-virtual {v1, v0, v2, v3}, Lbww;->a(Landroid/app/Activity;Lbpa;Landroid/os/Bundle;)V

    .line 577
    :cond_1
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 524
    new-instance v1, Lcom/facebook/share/internal/LikeButton;

    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->h:Lbww;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->h:Lbww;

    .line 526
    invoke-virtual {v0}, Lbww;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, p1, v0}, Lcom/facebook/share/internal/LikeButton;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->e:Lcom/facebook/share/internal/LikeButton;

    .line 527
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->e:Lcom/facebook/share/internal/LikeButton;

    new-instance v1, Lcch;

    invoke-direct {v1, p0}, Lcch;-><init>(Lcom/facebook/share/widget/LikeView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/LikeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 538
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->e:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v1, v0}, Lcom/facebook/share/internal/LikeButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    return-void

    .line 526
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 581
    :goto_0
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    .line 582
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 585
    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 586
    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 588
    :cond_1
    new-instance v0, Lbhp;

    const-string v1, "Unable to get Activity."

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 542
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->g:Landroid/widget/TextView;

    .line 543
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 545
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbjs;->com_facebook_likeview_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 543
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 546
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->g:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 547
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->g:Landroid/widget/TextView;

    iget v1, p0, Lcom/facebook/share/widget/LikeView;->o:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 548
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->g:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 550
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 553
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 554
    return-void
.end method

.method public static synthetic c(Lcom/facebook/share/widget/LikeView;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->f()V

    return-void
.end method

.method private d()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 592
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 593
    const-string v1, "style"

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->l:Lccp;

    invoke-virtual {v2}, Lccp;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v1, "auxiliary_position"

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->n:Lccj;

    .line 596
    invoke-virtual {v2}, Lccj;->toString()Ljava/lang/String;

    move-result-object v2

    .line 594
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v1, "horizontal_alignment"

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->m:Lcck;

    .line 599
    invoke-virtual {v2}, Lcck;->toString()Ljava/lang/String;

    move-result-object v2

    .line 597
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v1, "object_id"

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->b:Ljava/lang/String;

    const-string v3, ""

    .line 602
    invoke-static {v2, v3}, Lbqq;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 600
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v1, "object_type"

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->c:Lccn;

    .line 605
    invoke-virtual {v2}, Lccn;->toString()Ljava/lang/String;

    move-result-object v2

    .line 603
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    return-object v0
.end method

.method public static synthetic d(Lcom/facebook/share/widget/LikeView;)Lcco;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->i:Lcco;

    return-object v0
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 557
    new-instance v0, Lcom/facebook/share/internal/LikeBoxCountView;

    invoke-direct {v0, p1}, Lcom/facebook/share/internal/LikeBoxCountView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->f:Lcom/facebook/share/internal/LikeBoxCountView;

    .line 559
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 562
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->f:Lcom/facebook/share/internal/LikeBoxCountView;

    invoke-virtual {v1, v0}, Lcom/facebook/share/internal/LikeBoxCountView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 563
    return-void
.end method

.method public static synthetic e(Lcom/facebook/share/widget/LikeView;)Lccn;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->c:Lccn;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 646
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->j:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 648
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 649
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 651
    iput-object v2, p0, Lcom/facebook/share/widget/LikeView;->j:Landroid/content/BroadcastReceiver;

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->k:Lccl;

    if-eqz v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->k:Lccl;

    invoke-virtual {v0}, Lccl;->a()V

    .line 660
    iput-object v2, p0, Lcom/facebook/share/widget/LikeView;->k:Lccl;

    .line 663
    :cond_1
    iput-object v2, p0, Lcom/facebook/share/widget/LikeView;->h:Lbww;

    .line 664
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 667
    iget-boolean v0, p0, Lcom/facebook/share/widget/LikeView;->s:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 669
    :goto_0
    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->h:Lbww;

    if-nez v2, :cond_1

    .line 670
    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->e:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v2, v1}, Lcom/facebook/share/internal/LikeButton;->setSelected(Z)V

    .line 671
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->f:Lcom/facebook/share/internal/LikeBoxCountView;

    invoke-virtual {v1, v3}, Lcom/facebook/share/internal/LikeBoxCountView;->setText(Ljava/lang/String;)V

    .line 681
    :goto_1
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 682
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->e:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v1, v0}, Lcom/facebook/share/internal/LikeButton;->setEnabled(Z)V

    .line 684
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->g()V

    .line 685
    return-void

    :cond_0
    move v0, v1

    .line 667
    goto :goto_0

    .line 674
    :cond_1
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->e:Lcom/facebook/share/internal/LikeButton;

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->h:Lbww;

    invoke-virtual {v2}, Lbww;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/facebook/share/internal/LikeButton;->setSelected(Z)V

    .line 675
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->h:Lbww;

    invoke-virtual {v2}, Lbww;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->f:Lcom/facebook/share/internal/LikeBoxCountView;

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->h:Lbww;

    invoke-virtual {v2}, Lbww;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/share/internal/LikeBoxCountView;->setText(Ljava/lang/String;)V

    .line 678
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->h:Lbww;

    invoke-virtual {v1}, Lbww;->e()Z

    move-result v1

    and-int/2addr v0, v1

    goto :goto_1
.end method

.method private g()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 689
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 690
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->e:Lcom/facebook/share/internal/LikeButton;

    .line 691
    invoke-virtual {v1}, Lcom/facebook/share/internal/LikeButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 692
    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->m:Lcck;

    sget-object v5, Lcck;->LEFT:Lcck;

    if-ne v2, v5, :cond_3

    const/4 v2, 0x3

    .line 697
    :goto_0
    or-int/lit8 v5, v2, 0x30

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 698
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 701
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 702
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->f:Lcom/facebook/share/internal/LikeBoxCountView;

    invoke-virtual {v0, v6}, Lcom/facebook/share/internal/LikeBoxCountView;->setVisibility(I)V

    .line 705
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->l:Lccp;

    sget-object v1, Lccp;->STANDARD:Lccp;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->h:Lbww;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->h:Lbww;

    .line 707
    invoke-virtual {v0}, Lbww;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 708
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->g:Landroid/widget/TextView;

    move-object v1, v0

    .line 718
    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 722
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 723
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 725
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->n:Lccj;

    sget-object v5, Lccj;->INLINE:Lccj;

    if-ne v2, v5, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 730
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->n:Lccj;

    sget-object v2, Lccj;->TOP:Lccj;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->n:Lccj;

    sget-object v2, Lccj;->INLINE:Lccj;

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->m:Lcck;

    sget-object v2, Lcck;->RIGHT:Lcck;

    if-ne v0, v2, :cond_6

    .line 734
    :cond_1
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->e:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 735
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->e:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 742
    :goto_2
    sget-object v0, Lcci;->a:[I

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->n:Lccj;

    invoke-virtual {v2}, Lccj;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 757
    :cond_2
    :goto_3
    return-void

    .line 692
    :cond_3
    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->m:Lcck;

    sget-object v5, Lcck;->CENTER:Lcck;

    if-ne v2, v5, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    goto :goto_0

    .line 709
    :cond_5
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->l:Lccp;

    sget-object v1, Lccp;->BOX_COUNT:Lccp;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->h:Lbww;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->h:Lbww;

    .line 711
    invoke-virtual {v0}, Lbww;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 712
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->h()V

    .line 713
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->f:Lcom/facebook/share/internal/LikeBoxCountView;

    move-object v1, v0

    goto :goto_1

    .line 738
    :cond_6
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 739
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 744
    :pswitch_0
    iget v0, p0, Lcom/facebook/share/widget/LikeView;->p:I

    iget v2, p0, Lcom/facebook/share/widget/LikeView;->p:I

    iget v3, p0, Lcom/facebook/share/widget/LikeView;->p:I

    iget v4, p0, Lcom/facebook/share/widget/LikeView;->q:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 747
    :pswitch_1
    iget v0, p0, Lcom/facebook/share/widget/LikeView;->p:I

    iget v2, p0, Lcom/facebook/share/widget/LikeView;->q:I

    iget v3, p0, Lcom/facebook/share/widget/LikeView;->p:I

    iget v4, p0, Lcom/facebook/share/widget/LikeView;->p:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 750
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->m:Lcck;

    sget-object v2, Lcck;->RIGHT:Lcck;

    if-ne v0, v2, :cond_7

    .line 751
    iget v0, p0, Lcom/facebook/share/widget/LikeView;->p:I

    iget v2, p0, Lcom/facebook/share/widget/LikeView;->p:I

    iget v3, p0, Lcom/facebook/share/widget/LikeView;->q:I

    iget v4, p0, Lcom/facebook/share/widget/LikeView;->p:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 753
    :cond_7
    iget v0, p0, Lcom/facebook/share/widget/LikeView;->q:I

    iget v2, p0, Lcom/facebook/share/widget/LikeView;->p:I

    iget v3, p0, Lcom/facebook/share/widget/LikeView;->p:I

    iget v4, p0, Lcom/facebook/share/widget/LikeView;->p:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 742
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private h()V
    .locals 3

    .prologue
    .line 760
    sget-object v0, Lcci;->a:[I

    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->n:Lccj;

    invoke-virtual {v1}, Lccj;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 776
    :goto_0
    return-void

    .line 762
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->f:Lcom/facebook/share/internal/LikeBoxCountView;

    sget-object v1, Lbyc;->BOTTOM:Lbyc;

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/LikeBoxCountView;->setCaretPosition(Lbyc;)V

    goto :goto_0

    .line 766
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->f:Lcom/facebook/share/internal/LikeBoxCountView;

    sget-object v1, Lbyc;->TOP:Lbyc;

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/LikeBoxCountView;->setCaretPosition(Lbyc;)V

    goto :goto_0

    .line 770
    :pswitch_2
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->f:Lcom/facebook/share/internal/LikeBoxCountView;

    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->m:Lcck;

    sget-object v2, Lcck;->RIGHT:Lcck;

    if-ne v0, v2, :cond_0

    sget-object v0, Lbyc;->RIGHT:Lbyc;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/facebook/share/internal/LikeBoxCountView;->setCaretPosition(Lbyc;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lbyc;->LEFT:Lbyc;

    goto :goto_1

    .line 760
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a()Lcco;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->i:Lcco;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 442
    const/4 v0, 0x0

    sget-object v1, Lccn;->UNKNOWN:Lccn;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/share/widget/LikeView;->setObjectIdAndType(Ljava/lang/String;Lccn;)V

    .line 444
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 445
    return-void
.end method

.method public setAuxiliaryViewPosition(Lccj;)V
    .locals 1

    .prologue
    .line 353
    if-eqz p1, :cond_1

    .line 355
    :goto_0
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->n:Lccj;

    if-eq v0, p1, :cond_0

    .line 356
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->n:Lccj;

    .line 358
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->g()V

    .line 360
    :cond_0
    return-void

    .line 353
    :cond_1
    sget-object p1, Lccj;->DEFAULT:Lccj;

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 434
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/share/widget/LikeView;->s:Z

    .line 436
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->f()V

    .line 437
    return-void

    .line 434
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setForegroundColor(I)V
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/facebook/share/widget/LikeView;->o:I

    if-eq v0, p1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 387
    :cond_0
    return-void
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .locals 1

    .prologue
    .line 429
    new-instance v0, Lbpa;

    invoke-direct {v0, p1}, Lbpa;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->r:Lbpa;

    .line 430
    return-void
.end method

.method public setFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 417
    new-instance v0, Lbpa;

    invoke-direct {v0, p1}, Lbpa;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->r:Lbpa;

    .line 418
    return-void
.end method

.method public setHorizontalAlignment(Lcck;)V
    .locals 1

    .prologue
    .line 368
    if-eqz p1, :cond_1

    .line 370
    :goto_0
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->m:Lcck;

    if-eq v0, p1, :cond_0

    .line 371
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->m:Lcck;

    .line 373
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->g()V

    .line 375
    :cond_0
    return-void

    .line 368
    :cond_1
    sget-object p1, Lcck;->DEFAULT:Lcck;

    goto :goto_0
.end method

.method public setLikeViewStyle(Lccp;)V
    .locals 1

    .prologue
    .line 338
    if-eqz p1, :cond_1

    .line 339
    :goto_0
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->l:Lccp;

    if-eq v0, p1, :cond_0

    .line 340
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->l:Lccp;

    .line 342
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->g()V

    .line 344
    :cond_0
    return-void

    .line 338
    :cond_1
    sget-object p1, Lccp;->DEFAULT:Lccp;

    goto :goto_0
.end method

.method public setObjectIdAndType(Ljava/lang/String;Lccn;)V
    .locals 2

    .prologue
    .line 321
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbqq;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    if-eqz p2, :cond_2

    .line 324
    :goto_0
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lbqq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->c:Lccn;

    if-eq p2, v1, :cond_1

    .line 325
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/facebook/share/widget/LikeView;->a(Ljava/lang/String;Lccn;)V

    .line 327
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->f()V

    .line 329
    :cond_1
    return-void

    .line 322
    :cond_2
    sget-object p2, Lccn;->DEFAULT:Lccn;

    goto :goto_0
.end method

.method public setOnErrorListener(Lcco;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->i:Lcco;

    .line 397
    return-void
.end method
