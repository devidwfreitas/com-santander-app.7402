.class public Lcom/facebook/login/widget/LoginButton;
.super Lcom/facebook/FacebookButtonBase;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lbtj;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lbtu;

.field private i:Lbtm;

.field private j:J

.field private k:Lbtp;

.field private l:Lbgz;

.field private m:Lbsp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const-class v0, Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/login/widget/LoginButton;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 195
    const/4 v2, 0x0

    const-string v5, "fb_login_button_create"

    const-string v6, "fb_login_button_did_tap"

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/FacebookButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v0, Lbtj;

    invoke-direct {v0}, Lbtj;-><init>()V

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->e:Lbtj;

    .line 124
    const-string v0, "fb_login_view_usage"

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->f:Ljava/lang/String;

    .line 126
    sget-object v0, Lbtu;->BLUE:Lbtu;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->h:Lbtu;

    .line 128
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/facebook/login/widget/LoginButton;->j:J

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 210
    const-string v5, "fb_login_button_create"

    const-string v6, "fb_login_button_did_tap"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/FacebookButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v0, Lbtj;

    invoke-direct {v0}, Lbtj;-><init>()V

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->e:Lbtj;

    .line 124
    const-string v0, "fb_login_view_usage"

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->f:Ljava/lang/String;

    .line 126
    sget-object v0, Lbtu;->BLUE:Lbtu;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->h:Lbtu;

    .line 128
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/facebook/login/widget/LoginButton;->j:J

    .line 217
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    .line 225
    const/4 v4, 0x0

    const-string v5, "fb_login_button_create"

    const-string v6, "fb_login_button_did_tap"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/FacebookButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v0, Lbtj;

    invoke-direct {v0}, Lbtj;-><init>()V

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->e:Lbtj;

    .line 124
    const-string v0, "fb_login_view_usage"

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->f:Ljava/lang/String;

    .line 126
    sget-object v0, Lbtu;->BLUE:Lbtu;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->h:Lbtu;

    .line 128
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/facebook/login/widget/LoginButton;->j:J

    .line 232
    return-void
.end method

.method public static synthetic a(Lcom/facebook/login/widget/LoginButton;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->e()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private a(Lboj;)V
    .locals 1

    .prologue
    .line 479
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lboj;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 480
    invoke-virtual {p1}, Lboj;->b()Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-direct {p0, v0}, Lcom/facebook/login/widget/LoginButton;->b(Ljava/lang/String;)V

    .line 483
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/facebook/login/widget/LoginButton;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/facebook/login/widget/LoginButton;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lcom/facebook/login/widget/LoginButton;Lboj;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/facebook/login/widget/LoginButton;->a(Lboj;)V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .prologue
    .line 606
    sget-object v0, Lbtm;->DEFAULT:Lbtm;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->i:Lbtm;

    .line 607
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lbjz;->com_facebook_login_view:[I

    invoke-virtual {v0, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 613
    :try_start_0
    sget v0, Lbjz;->com_facebook_login_view_com_facebook_confirm_logout:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/login/widget/LoginButton;->b:Z

    .line 614
    sget v0, Lbjz;->com_facebook_login_view_com_facebook_login_text:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->c:Ljava/lang/String;

    .line 615
    sget v0, Lbjz;->com_facebook_login_view_com_facebook_logout_text:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->d:Ljava/lang/String;

    .line 616
    sget v0, Lbjz;->com_facebook_login_view_com_facebook_tooltip_mode:I

    sget-object v2, Lbtm;->DEFAULT:Lbtm;

    .line 618
    invoke-virtual {v2}, Lbtm;->getValue()I

    move-result v2

    .line 616
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Lbtm;->fromInt(I)Lbtm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->i:Lbtm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 622
    return-void

    .line 620
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static synthetic b(Lcom/facebook/login/widget/LoginButton;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/facebook/login/widget/LoginButton;->q()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 486
    new-instance v0, Lbtp;

    invoke-direct {v0, p1, p0}, Lbtp;-><init>(Ljava/lang/String;Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->k:Lbtp;

    .line 487
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->k:Lbtp;

    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton;->h:Lbtu;

    invoke-virtual {v0, v1}, Lbtp;->a(Lbtu;)V

    .line 488
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->k:Lbtp;

    iget-wide v2, p0, Lcom/facebook/login/widget/LoginButton;->j:J

    invoke-virtual {v0, v2, v3}, Lbtp;->a(J)V

    .line 489
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->k:Lbtp;

    invoke-virtual {v0}, Lbtp;->a()V

    .line 490
    return-void
.end method

.method private c(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 656
    invoke-virtual {p0, p1}, Lcom/facebook/login/widget/LoginButton;->a(Ljava/lang/String;)I

    move-result v0

    .line 657
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getCompoundPaddingLeft()I

    move-result v1

    .line 658
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getCompoundDrawablePadding()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 660
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getCompoundPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 657
    return v0
.end method

.method public static synthetic c(Lcom/facebook/login/widget/LoginButton;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Lcom/facebook/login/widget/LoginButton;)Lbtj;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->e:Lbtj;

    return-object v0
.end method

.method public static synthetic e(Lcom/facebook/login/widget/LoginButton;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->e()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f(Lcom/facebook/login/widget/LoginButton;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->e()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 493
    sget-object v0, Lbti;->a:[I

    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton;->i:Lbtm;

    invoke-virtual {v1}, Lbtm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 518
    :goto_0
    return-void

    .line 496
    :pswitch_0
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbqq;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 497
    invoke-static {}, Lbhv;->f()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lbtf;

    invoke-direct {v2, p0, v0}, Lbtf;-><init>(Lcom/facebook/login/widget/LoginButton;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 511
    :pswitch_1
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lbjx;->com_facebook_tooltip_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 513
    invoke-direct {p0, v0}, Lcom/facebook/login/widget/LoginButton;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 493
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic g(Lcom/facebook/login/widget/LoginButton;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/facebook/login/widget/LoginButton;->b:Z

    return v0
.end method

.method private q()V
    .locals 4

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 665
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->d:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/login/widget/LoginButton;->setText(Ljava/lang/CharSequence;)V

    .line 688
    :goto_1
    return-void

    .line 666
    :cond_0
    sget v0, Lbjx;->com_facebook_loginview_log_out_button:I

    .line 668
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 670
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 671
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/facebook/login/widget/LoginButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 673
    :cond_2
    sget v0, Lbjx;->com_facebook_loginview_log_in_button_continue:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 675
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getWidth()I

    move-result v2

    .line 677
    if-eqz v2, :cond_3

    .line 679
    invoke-direct {p0, v0}, Lcom/facebook/login/widget/LoginButton;->c(Ljava/lang/String;)I

    move-result v3

    .line 680
    if-le v3, v2, :cond_3

    .line 682
    sget v0, Lbjx;->com_facebook_loginview_log_in_button:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 685
    :cond_3
    invoke-virtual {p0, v0}, Lcom/facebook/login/widget/LoginButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 692
    sget-object v0, Lbnl;->Login:Lbnl;

    invoke-virtual {v0}, Lbnl;->toRequestCode()I

    move-result v0

    return v0
.end method

.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 559
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 560
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->h()Lbtk;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/login/widget/LoginButton;->a(Landroid/view/View$OnClickListener;)V

    .line 562
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/login/widget/LoginButton;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 564
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lbjr;->com_facebook_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/login/widget/LoginButton;->setBackgroundColor(I)V

    .line 570
    const-string v0, "Continue with Facebook"

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->c:Ljava/lang/String;

    .line 582
    :goto_0
    invoke-direct {p0}, Lcom/facebook/login/widget/LoginButton;->q()V

    .line 586
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lbjt;->com_facebook_button_login_logo:I

    invoke-static {v0, v1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 585
    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/facebook/login/widget/LoginButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 590
    return-void

    .line 572
    :cond_0
    new-instance v0, Lbth;

    invoke-direct {v0, p0}, Lbth;-><init>(Lcom/facebook/login/widget/LoginButton;)V

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->l:Lbgz;

    goto :goto_0
.end method

.method public a(Lbhd;Lbhl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbhd;",
            "Lbhl",
            "<",
            "Lbsx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->p()Lbsp;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbsp;->a(Lbhd;Lbhl;)V

    .line 457
    return-void
.end method

.method a(Lbsp;)V
    .locals 0

    .prologue
    .line 703
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->m:Lbsp;

    .line 704
    return-void
.end method

.method a(Lbtj;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->e:Lbtj;

    .line 551
    return-void
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 598
    sget v0, Lbjy;->com_facebook_loginview_default_style:I

    return v0
.end method

.method protected h()Lbtk;
    .locals 1

    .prologue
    .line 593
    new-instance v0, Lbtk;

    invoke-direct {v0, p0}, Lbtk;-><init>(Lcom/facebook/login/widget/LoginButton;)V

    return-object v0
.end method

.method public i()Lbrn;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->e:Lbtj;

    invoke-virtual {v0}, Lbtj;->a()Lbrn;

    move-result-object v0

    return-object v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->e:Lbtj;

    invoke-virtual {v0}, Lbtj;->c()V

    .line 357
    return-void
.end method

.method public k()Lbse;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->e:Lbtj;

    invoke-virtual {v0}, Lbtj;->d()Lbse;

    move-result-object v0

    return-object v0
.end method

.method public l()Lbtm;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->i:Lbtm;

    return-object v0
.end method

.method public m()J
    .locals 2

    .prologue
    .line 434
    iget-wide v0, p0, Lcom/facebook/login/widget/LoginButton;->j:J

    return-wide v0
.end method

.method public n()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->k:Lbtp;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->k:Lbtp;

    invoke-virtual {v0}, Lbtp;->b()V

    .line 443
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->k:Lbtp;

    .line 445
    :cond_0
    return-void
.end method

.method o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 546
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->e:Lbtj;

    invoke-virtual {v0}, Lbtj;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 461
    invoke-super {p0}, Lcom/facebook/FacebookButtonBase;->onAttachedToWindow()V

    .line 462
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->l:Lbgz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->l:Lbgz;

    invoke-virtual {v0}, Lbgz;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->l:Lbgz;

    invoke-virtual {v0}, Lbgz;->a()V

    .line 464
    invoke-direct {p0}, Lcom/facebook/login/widget/LoginButton;->q()V

    .line 466
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 528
    invoke-super {p0}, Lcom/facebook/FacebookButtonBase;->onDetachedFromWindow()V

    .line 529
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->l:Lbgz;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->l:Lbgz;

    invoke-virtual {v0}, Lbgz;->b()V

    .line 532
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->n()V

    .line 533
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 470
    invoke-super {p0, p1}, Lcom/facebook/FacebookButtonBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 472
    iget-boolean v0, p0, Lcom/facebook/login/widget/LoginButton;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/login/widget/LoginButton;->g:Z

    .line 474
    invoke-direct {p0}, Lcom/facebook/login/widget/LoginButton;->g()V

    .line 476
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 522
    invoke-super/range {p0 .. p5}, Lcom/facebook/FacebookButtonBase;->onLayout(ZIIII)V

    .line 523
    invoke-direct {p0}, Lcom/facebook/login/widget/LoginButton;->q()V

    .line 524
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 627
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getCompoundPaddingTop()I

    move-result v1

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 628
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    add-int/2addr v0, v1

    .line 629
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getCompoundPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    .line 631
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 632
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->c:Ljava/lang/String;

    .line 635
    if-nez v0, :cond_0

    .line 636
    sget v0, Lbjx;->com_facebook_loginview_log_in_button_continue:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 637
    invoke-direct {p0, v0}, Lcom/facebook/login/widget/LoginButton;->c(Ljava/lang/String;)I

    move-result v3

    .line 638
    invoke-static {v3, p1}, Lcom/facebook/login/widget/LoginButton;->resolveSize(II)I

    move-result v4

    .line 639
    if-ge v4, v3, :cond_0

    .line 640
    sget v0, Lbjx;->com_facebook_loginview_log_in_button:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 643
    :cond_0
    invoke-direct {p0, v0}, Lcom/facebook/login/widget/LoginButton;->c(Ljava/lang/String;)I

    move-result v3

    .line 645
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->d:Ljava/lang/String;

    .line 646
    if-nez v0, :cond_1

    .line 647
    sget v0, Lbjx;->com_facebook_loginview_log_out_button:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 649
    :cond_1
    invoke-direct {p0, v0}, Lcom/facebook/login/widget/LoginButton;->c(Ljava/lang/String;)I

    move-result v0

    .line 651
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p1}, Lcom/facebook/login/widget/LoginButton;->resolveSize(II)I

    move-result v0

    .line 652
    invoke-virtual {p0, v0, v1}, Lcom/facebook/login/widget/LoginButton;->setMeasuredDimension(II)V

    .line 653
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 537
    invoke-super {p0, p1, p2}, Lcom/facebook/FacebookButtonBase;->onVisibilityChanged(Landroid/view/View;I)V

    .line 539
    if-eqz p2, :cond_0

    .line 540
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->n()V

    .line 542
    :cond_0
    return-void
.end method

.method p()Lbsp;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->m:Lbsp;

    if-nez v0, :cond_0

    .line 697
    invoke-static {}, Lbsp;->c()Lbsp;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->m:Lbsp;

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->m:Lbsp;

    return-object v0
.end method

.method public setDefaultAudience(Lbrn;)V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->e:Lbtj;

    invoke-virtual {v0, p1}, Lbtj;->a(Lbrn;)V

    .line 243
    return-void
.end method

.method public setLoginBehavior(Lbse;)V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->e:Lbtj;

    invoke-virtual {v0, p1}, Lbtj;->a(Lbse;)V

    .line 370
    return-void
.end method

.method public setPublishPermissions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->e:Lbtj;

    invoke-virtual {v0, p1}, Lbtj;->b(Ljava/util/List;)V

    .line 325
    return-void
.end method

.method public varargs setPublishPermissions([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->e:Lbtj;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbtj;->b(Ljava/util/List;)V

    .line 349
    return-void
.end method

.method public setReadPermissions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->e:Lbtj;

    invoke-virtual {v0, p1}, Lbtj;->a(Ljava/util/List;)V

    .line 277
    return-void
.end method

.method public varargs setReadPermissions([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->e:Lbtj;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbtj;->a(Ljava/util/List;)V

    .line 300
    return-void
.end method

.method public setToolTipDisplayTime(J)V
    .locals 1

    .prologue
    .line 425
    iput-wide p1, p0, Lcom/facebook/login/widget/LoginButton;->j:J

    .line 426
    return-void
.end method

.method public setToolTipMode(Lbtm;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->i:Lbtm;

    .line 404
    return-void
.end method

.method public setToolTipStyle(Lbtu;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->h:Lbtu;

    .line 393
    return-void
.end method
