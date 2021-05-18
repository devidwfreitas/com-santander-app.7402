.class public Lird;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lipt;
.implements Lirc;


# instance fields
.field private a:Lirb;

.field private b:Lmip;

.field private c:Landroid/app/Activity;

.field private d:Landroid/content/SharedPreferences;

.field private e:Landroid/content/SharedPreferences;

.field private f:Lipq;

.field private g:Ljdf;

.field private h:Lipp;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Landroid/app/Dialog;

.field private o:Landroid/app/Dialog;

.field private p:Lgpe;

.field private q:I


# direct methods
.method public constructor <init>(Lirb;Landroid/app/Activity;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-boolean v0, p0, Lird;->i:Z

    .line 85
    iput-boolean v0, p0, Lird;->j:Z

    .line 86
    iput-boolean v0, p0, Lird;->k:Z

    .line 94
    iput v0, p0, Lird;->q:I

    .line 97
    iput-object p1, p0, Lird;->a:Lirb;

    .line 98
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lird;->b:Lmip;

    .line 99
    iput-object p2, p0, Lird;->c:Landroid/app/Activity;

    .line 100
    new-instance v0, Lipu;

    invoke-direct {v0, p2, p0}, Lipu;-><init>(Landroid/app/Activity;Lipt;)V

    iput-object v0, p0, Lird;->f:Lipq;

    .line 101
    return-void
.end method

.method private B()Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private C()Z
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private D()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 607
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->c(Ljava/lang/Boolean;)V

    .line 609
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->b(Ljava/lang/Boolean;)V

    .line 610
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->a(Ljava/lang/Boolean;)V

    .line 611
    iget-object v0, p0, Lird;->b:Lmip;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lmip;->k(Z)V

    .line 612
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->n()V

    .line 613
    return-void
.end method

.method private E()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 628
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    .line 629
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v1

    .line 630
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    .line 631
    invoke-static {}, Lmzr;->m()Ljava/lang/String;

    move-result-object v3

    move v5, v4

    .line 628
    invoke-interface/range {v0 .. v5}, Lbr/com/santander/msgsdk/MSG;->init(Landroid/content/Context;Lie;Ljava/lang/String;ZZ)V

    .line 636
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    new-instance v1, Lirg;

    invoke-direct {v1, p0}, Lirg;-><init>(Lird;)V

    invoke-interface {v0, v1}, Lbr/com/santander/msgsdk/MSG;->setTracking(Lbr/com/santander/msgsdk/Tracking;)V

    .line 709
    return-void
.end method

.method private F()V
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->p()V

    .line 779
    return-void
.end method

.method static synthetic a(Lird;)Lirb;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lird;->a:Lirb;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    .prologue
    .line 782
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "dd/MM/yyyy"

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 783
    const/4 v0, 0x0

    .line 785
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 790
    :goto_0
    return-object v0

    .line 786
    :catch_0
    move-exception v1

    .line 787
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 766
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 767
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 768
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 769
    return-void
.end method

.method private a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 772
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 773
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 774
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 775
    return-void
.end method

.method static synthetic a(Lird;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lird;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 837
    iput-object p1, p0, Lird;->m:Ljava/lang/String;

    .line 838
    invoke-virtual {p0}, Lird;->e()V

    .line 839
    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    .prologue
    .line 816
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->C()Lipi;

    move-result-object v0

    const-string v1, "00000137"

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    invoke-static {}, Lmzr;->d()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 821
    :cond_1
    iget-object v0, p0, Lird;->f:Lipq;

    new-instance v1, Liri;

    invoke-direct {v1, p0}, Liri;-><init>(Lird;)V

    invoke-interface {v0, v1}, Lipq;->a(Lipr;)V

    .line 828
    iget-object v0, p0, Lird;->f:Lipq;

    new-instance v1, Lirj;

    invoke-direct {v1, p0}, Lirj;-><init>(Lird;)V

    invoke-interface {v0, v1}, Lipq;->b(Lipr;)V

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->Y()V

    .line 512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lird;->l:Z

    .line 514
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->X()Lgki;

    move-result-object v0

    invoke-virtual {v0}, Lgki;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 516
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    new-instance v0, Lirf;

    invoke-direct {v0, p0}, Lirf;-><init>(Lird;)V

    invoke-static {v0}, Lgkl;->a(Lfoh;)V

    .line 532
    :cond_0
    invoke-direct {p0}, Lird;->E()V

    .line 533
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 737
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->C()Lipi;

    move-result-object v0

    const-string v1, "00000101"

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    const-string v0, "avisoFinalAno"

    .line 740
    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 741
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 742
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 744
    const-string v2, "dataFinalAno"

    .line 745
    const-string v3, "bloquearAviso"

    .line 746
    const-string v4, ""

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 747
    invoke-direct {p0, v0, v2, v1}, Lird;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-direct {p0, v0, v3, v5}, Lird;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 749
    invoke-direct {p0}, Lird;->F()V

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 751
    :cond_1
    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 752
    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 753
    invoke-direct {p0, v3}, Lird;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 754
    invoke-direct {p0, v1}, Lird;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 756
    invoke-virtual {v3, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 757
    invoke-direct {p0, v0, v2, v1}, Lird;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    invoke-direct {p0}, Lird;->F()V

    goto :goto_0
.end method

.method public a(Landroid/support/v7/app/ActionBar;)V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    invoke-static {}, Lmzr;->d()I

    move-result v0

    .line 373
    packed-switch v0, :pswitch_data_0

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 376
    :pswitch_0
    iget-object v0, p0, Lird;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020677

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 380
    :pswitch_1
    iget-object v0, p0, Lird;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020600

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 384
    :pswitch_2
    iget-object v0, p0, Lird;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020674

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 373
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 800
    new-instance v0, Lirh;

    new-instance v1, Lgph;

    invoke-direct {v1}, Lgph;-><init>()V

    invoke-direct {v0, p0, p1, v1}, Lirh;-><init>(Lird;Landroid/view/View;Lgpj;)V

    iput-object v0, p0, Lird;->p:Lgpe;

    .line 811
    iget-object v0, p0, Lird;->p:Lgpe;

    invoke-virtual {v0}, Lgpe;->a()Z

    .line 812
    return-void
.end method

.method public a(Lige;)V
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {p1}, Lige;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lmir;->a(I)V

    .line 484
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->W()V

    .line 485
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->Y()V

    .line 486
    const/4 v0, 0x1

    iput-boolean v0, p0, Lird;->l:Z

    .line 488
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->X()Lgki;

    move-result-object v0

    invoke-virtual {v0}, Lgki;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 490
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    new-instance v0, Lire;

    invoke-direct {v0, p0}, Lire;-><init>(Lird;)V

    invoke-static {v0}, Lgkl;->a(Lfoh;)V

    .line 506
    :cond_0
    invoke-direct {p0}, Lird;->E()V

    .line 507
    return-void
.end method

.method public a(Lipp;)V
    .locals 2

    .prologue
    .line 720
    sget-object v0, Lirl;->a:[I

    iget-object v1, p0, Lird;->h:Lipp;

    invoke-virtual {v1}, Lipp;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 732
    :goto_0
    return-void

    .line 723
    :pswitch_0
    invoke-virtual {p0}, Lird;->e()V

    goto :goto_0

    .line 726
    :pswitch_1
    invoke-virtual {p0}, Lird;->m()V

    goto :goto_0

    .line 729
    :pswitch_2
    invoke-virtual {p0}, Lird;->n()V

    goto :goto_0

    .line 720
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljdf;)V
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->af()V

    .line 618
    iput-object p1, p0, Lird;->g:Ljdf;

    .line 619
    iget-object v0, p0, Lird;->a:Lirb;

    iget-object v1, p0, Lird;->g:Ljdf;

    invoke-interface {v0, v1}, Lirb;->a(Ljdf;)V

    .line 620
    return-void
.end method

.method public a(Z)V
    .locals 4

    .prologue
    .line 440
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lird;->b:Lmip;

    .line 441
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 442
    iget-object v0, p0, Lird;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 443
    const-string v1, "state_carrossel_conta"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 444
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 445
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->H()Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    move-result-object v0

    new-instance v1, Lgln;

    iget-object v2, p0, Lird;->c:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lgln;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;->a(Lglb;)V

    .line 448
    :cond_0
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 449
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->u()Lhkr;

    move-result-object v0

    invoke-interface {v0}, Lhkr;->a()Lhxo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 450
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->u()Lhkr;

    move-result-object v0

    invoke-interface {v0}, Lhkr;->a()Lhxo;

    move-result-object v0

    invoke-virtual {v0}, Lhxo;->e()Lhxk;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lird;->b:Lmip;

    .line 451
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->u()Lhkr;

    move-result-object v0

    invoke-interface {v0}, Lhkr;->a()Lhxo;

    move-result-object v0

    invoke-virtual {v0}, Lhxo;->e()Lhxk;

    move-result-object v0

    invoke-virtual {v0}, Lhxk;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lird;->b:Lmip;

    .line 452
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->u()Lhkr;

    move-result-object v0

    invoke-interface {v0}, Lhkr;->a()Lhxo;

    move-result-object v0

    invoke-virtual {v0}, Lhxo;->f()Lhxk;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->u()Lhkr;

    move-result-object v0

    invoke-interface {v0}, Lhkr;->a()Lhxo;

    move-result-object v0

    invoke-virtual {v0}, Lhxo;->f()Lhxk;

    move-result-object v0

    invoke-virtual {v0}, Lhxk;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lird;->b:Lmip;

    .line 453
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->u()Lhkr;

    move-result-object v0

    invoke-interface {v0}, Lhkr;->a()Lhxo;

    move-result-object v0

    invoke-virtual {v0}, Lhxo;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 455
    :cond_3
    iget-object v0, p0, Lird;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 456
    const-string v1, "state_carrossel_emprestimos"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 457
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 458
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->K()Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    move-result-object v0

    new-instance v1, Lgmm;

    iget-object v2, p0, Lird;->c:Landroid/app/Activity;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {v1, v2, v3}, Lgmm;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;->a(Lglb;)V

    .line 462
    :cond_4
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 538
    sget-object v0, Lirl;->a:[I

    iget-object v1, p0, Lird;->h:Lipp;

    invoke-virtual {v1}, Lipp;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 540
    :pswitch_0
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->aa()V

    goto :goto_0

    .line 544
    :pswitch_1
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->ab()V

    goto :goto_0

    .line 548
    :pswitch_2
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->ac()V

    goto :goto_0

    .line 553
    :pswitch_3
    iget-boolean v0, p0, Lird;->i:Z

    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {p0}, Lird;->m()V

    goto :goto_0

    .line 559
    :pswitch_4
    iget-boolean v0, p0, Lird;->j:Z

    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lird;->n()V

    goto :goto_0

    .line 565
    :pswitch_5
    iget-boolean v0, p0, Lird;->k:Z

    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {p0}, Lird;->e()V

    goto :goto_0

    .line 538
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public b(Lipp;)V
    .locals 3

    .prologue
    .line 129
    iput-object p1, p0, Lird;->h:Lipp;

    .line 130
    const/4 v0, 0x0

    .line 132
    iget-object v1, p0, Lird;->h:Lipp;

    sget-object v2, Lipp;->POUPANCA_CARROSSEL_SELECTED:Lipp;

    invoke-virtual {v1, v2}, Lipp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lird;->h:Lipp;

    sget-object v2, Lipp;->POUPANCA_MENU_ITEM:Lipp;

    .line 133
    invoke-virtual {v1, v2}, Lipp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    :cond_0
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->c()Z

    move-result v0

    .line 145
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 146
    invoke-virtual {p0}, Lird;->b()V

    .line 152
    :goto_1
    return-void

    .line 137
    :cond_2
    iget-object v1, p0, Lird;->h:Lipp;

    sget-object v2, Lipp;->CARTOES_CARROSSEL_SELECTED:Lipp;

    invoke-virtual {v1, v2}, Lipp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lird;->h:Lipp;

    sget-object v2, Lipp;->BOTAO_PAGAR_CONTA_HOME:Lipp;

    .line 138
    invoke-virtual {v1, v2}, Lipp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lird;->h:Lipp;

    sget-object v2, Lipp;->BOTAO_PAGAR_FATURA_HOME:Lipp;

    .line 139
    invoke-virtual {v1, v2}, Lipp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lird;->h:Lipp;

    sget-object v2, Lipp;->BOTAO_PARCELAR_FATURA_HOME:Lipp;

    .line 140
    invoke-virtual {v1, v2}, Lipp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    :cond_3
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->i()Z

    move-result v0

    goto :goto_0

    .line 148
    :cond_4
    iget-object v0, p0, Lird;->f:Lipq;

    invoke-interface {v0, p1}, Lipq;->a(Lipp;)V

    goto :goto_1
.end method

.method public b(Ljdf;)V
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->ag()V

    .line 625
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->h()V

    .line 796
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->o()V

    .line 467
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 253
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const-string v0, "Pagamentos_Pagamento_Home_Acao"

    const-string v1, "Pagamentos"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->w()V

    .line 273
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->i()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lird;->k:Z

    if-eqz v0, :cond_2

    .line 261
    :cond_1
    const-string v0, "Pagamento"

    const-string v1, "Pagamentos"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v0, "Pagamentos_Pagamento_Home_Acao"

    const-string v1, "Pagamentos"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const/4 v0, 0x0

    sput-boolean v0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->b:Z

    .line 265
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lird;->c:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    const-string v1, "codBarDeepLink"

    iget-object v2, p0, Lird;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    iget-object v1, p0, Lird;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lird;->m:Ljava/lang/String;

    goto :goto_0

    .line 270
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lird;->k:Z

    .line 271
    sget-object v0, Lipp;->BOTAO_PAGAR_CONTA_HOME:Lipp;

    invoke-virtual {p0, v0}, Lird;->b(Lipp;)V

    goto :goto_0
.end method

.method public f()V
    .locals 3

    .prologue
    .line 277
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    const-string v0, "Transferencia"

    const-string v1, "Transferencias"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v0, "Transferencia_Acao"

    const-string v1, "AcessoRapidoHome"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lird;->c:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    iget-object v1, p0, Lird;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 288
    :goto_0
    return-void

    .line 285
    :cond_0
    const-string v0, "Transferencia_Acao"

    const-string v1, "AcessoRapidoHome"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->w()V

    goto :goto_0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lird;->b:Lmip;

    .line 394
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 395
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->x()V

    .line 397
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->y()V

    .line 402
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->P()V

    .line 403
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->z()V

    .line 408
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 412
    invoke-static {}, Lmzr;->d()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->u()Lhkr;

    move-result-object v0

    invoke-interface {v0}, Lhkr;->a()Lhxo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->A()V

    goto :goto_0
.end method

.method public k()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->r()Ljky;

    move-result-object v0

    invoke-interface {v0}, Ljky;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->r()Ljky;

    move-result-object v0

    invoke-interface {v0}, Ljky;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 423
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->B()V

    .line 425
    :cond_0
    return-void
.end method

.method public l()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 429
    iget-object v0, p0, Lird;->c:Landroid/app/Activity;

    const-string v1, "ContaPreferences"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lird;->d:Landroid/content/SharedPreferences;

    .line 430
    iget-object v0, p0, Lird;->d:Landroid/content/SharedPreferences;

    const-string v1, "state_carrossel_conta"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 432
    iget-object v0, p0, Lird;->c:Landroid/app/Activity;

    const-string v1, "EmprestimoPreferences"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lird;->e:Landroid/content/SharedPreferences;

    .line 433
    iget-object v0, p0, Lird;->e:Landroid/content/SharedPreferences;

    const-string v1, "state_carrossel_emprestimos"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 434
    return-void
.end method

.method public m()V
    .locals 3

    .prologue
    .line 292
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const-string v0, "Cartoes_Home_Acao"

    const-string v1, "PagarFatura"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->w()V

    .line 323
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->i()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lird;->i:Z

    if-eqz v0, :cond_4

    .line 299
    :cond_1
    invoke-direct {p0}, Lird;->B()Z

    move-result v0

    if-nez v0, :cond_3

    .line 300
    invoke-direct {p0}, Lird;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lird;->c:Landroid/app/Activity;

    iget-object v1, p0, Lird;->c:Landroid/app/Activity;

    const v2, 0x7f090247

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->d(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    .line 302
    const-string v0, "Cartoes_Home_Acao"

    const-string v1, "PagarFatura"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :cond_2
    iget-object v0, p0, Lird;->c:Landroid/app/Activity;

    iget-object v1, p0, Lird;->c:Landroid/app/Activity;

    const v2, 0x7f0907cb

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->d(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    .line 307
    const-string v0, "Cartoes_Home_Acao"

    const-string v1, "PagarFatura"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :cond_3
    const-string v0, "Cartoes_PagamentoDeFatura"

    const-string v1, "Cartoes"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v0, "Cartoes_Home_Acao"

    const-string v1, "PagarFatura"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lird;->c:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 316
    const-string v1, "indexCartao"

    iget-object v2, p0, Lird;->a:Lirb;

    invoke-interface {v2}, Lirb;->ai()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    iget-object v1, p0, Lird;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 319
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lird;->i:Z

    .line 320
    sget-object v0, Lipp;->BOTAO_PAGAR_FATURA_HOME:Lipp;

    invoke-virtual {p0, v0}, Lird;->b(Lipp;)V

    goto :goto_0
.end method

.method public n()V
    .locals 3

    .prologue
    .line 327
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const-string v0, "Cartoes_Home_Acao"

    const-string v1, "ParcelarFatura"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->w()V

    .line 359
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->i()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lird;->j:Z

    if-eqz v0, :cond_4

    .line 334
    :cond_1
    invoke-direct {p0}, Lird;->B()Z

    move-result v0

    if-nez v0, :cond_3

    .line 335
    invoke-direct {p0}, Lird;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    iget-object v0, p0, Lird;->c:Landroid/app/Activity;

    iget-object v1, p0, Lird;->c:Landroid/app/Activity;

    const v2, 0x7f090247

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->d(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    .line 337
    const-string v0, "Cartoes_Home_Acao"

    const-string v1, "ParcelarFatura"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_2
    iget-object v0, p0, Lird;->c:Landroid/app/Activity;

    iget-object v1, p0, Lird;->c:Landroid/app/Activity;

    const v2, 0x7f0907cb

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->d(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    .line 342
    const-string v0, "Cartoes_Home_Acao"

    const-string v1, "ParcelarFatura"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :cond_3
    const-string v0, "Fatura"

    const-string v1, "Cartoes"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v0, "Cartoes_Home_Acao"

    const-string v1, "ParcelarFatura"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lird;->c:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 350
    const-string v1, "indexCartao"

    iget-object v2, p0, Lird;->a:Lirb;

    invoke-interface {v2}, Lirb;->ai()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 351
    iget-object v1, p0, Lird;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 354
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lird;->j:Z

    .line 355
    sget-object v0, Lipp;->BOTAO_PARCELAR_FATURA_HOME:Lipp;

    invoke-virtual {p0, v0}, Lird;->b(Lipp;)V

    goto :goto_0
.end method

.method public o()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 157
    new-instance v0, Lnba;

    iget-object v1, p0, Lird;->b:Lmip;

    .line 158
    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    iget-object v2, p0, Lird;->c:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnba;-><init>(Lmwy;Landroid/content/Context;)V

    .line 160
    iget-object v1, p0, Lird;->b:Lmip;

    invoke-interface {v1, v3}, Lmip;->k(Z)V

    .line 162
    invoke-virtual {v0}, Lnba;->a()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 163
    invoke-virtual {v0}, Lnba;->h()Z

    move-result v1

    if-nez v1, :cond_e

    .line 164
    invoke-virtual {v0}, Lnba;->g()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_e

    .line 166
    invoke-virtual {v0}, Lnba;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->d(Ljava/lang/Boolean;)V

    .line 169
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->u()V

    .line 249
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-virtual {v0}, Lnba;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->q()V

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {v0}, Lnba;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->b(Ljava/lang/Boolean;)V

    .line 178
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->r()V

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {v0}, Lnba;->n()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 181
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->c()Live;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Live;->a(Ljava/lang/Boolean;)V

    .line 183
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->t()V

    goto :goto_0

    .line 185
    :cond_3
    invoke-virtual {v0}, Lnba;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 186
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->g()V

    goto/16 :goto_0

    .line 189
    :cond_4
    invoke-virtual {v0}, Lnba;->q()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 190
    const-string v0, "Outros_ExecOtimizacao"

    iget-object v1, p0, Lird;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->v()V

    goto/16 :goto_0

    .line 194
    :cond_5
    invoke-virtual {v0}, Lnba;->i()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 195
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->f()V

    goto/16 :goto_0

    .line 198
    :cond_6
    invoke-virtual {v0}, Lnba;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 199
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->j()V

    goto/16 :goto_0

    .line 202
    :cond_7
    invoke-virtual {v0}, Lnba;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 203
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->k()V

    goto/16 :goto_0

    .line 206
    :cond_8
    invoke-virtual {v0}, Lnba;->e()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 207
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lird;->a:Lirb;

    iget-object v1, p0, Lird;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    invoke-virtual {v1}, Lmwy;->b()Lmwx;

    move-result-object v1

    invoke-interface {v0, v1}, Lirb;->a(Lmwx;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 210
    :cond_9
    invoke-virtual {v0}, Lnba;->f()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 211
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->e()V

    goto/16 :goto_0

    .line 214
    :cond_a
    invoke-virtual {v0}, Lnba;->o()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 215
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->e(Ljava/lang/Boolean;)V

    .line 217
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->i()V

    goto/16 :goto_0

    .line 219
    :cond_b
    invoke-virtual {v0}, Lnba;->b()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 220
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->c(Ljava/lang/Boolean;)V

    .line 222
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->s()V

    goto/16 :goto_0

    .line 224
    :cond_c
    invoke-virtual {v0}, Lnba;->k()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 225
    invoke-direct {p0}, Lird;->D()V

    goto/16 :goto_0

    .line 227
    :cond_d
    invoke-direct {p0}, Lird;->D()V

    goto/16 :goto_0

    .line 230
    :cond_e
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0, v4}, Lmip;->k(Z)V

    .line 231
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->n()V

    .line 233
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->U()V

    .line 234
    iget-object v0, p0, Lird;->f:Lipq;

    iget-object v1, p0, Lird;->c:Landroid/app/Activity;

    iget-object v2, p0, Lird;->b:Lmip;

    invoke-interface {v2}, Lmip;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->y()Lmwy;

    move-result-object v2

    invoke-virtual {v2}, Lmwy;->c()Live;

    move-result-object v2

    invoke-virtual {v2}, Live;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lird;->b:Lmip;

    invoke-interface {v3}, Lmip;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->k()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lipq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lird;->f:Lipq;

    iget-object v1, p0, Lird;->c:Landroid/app/Activity;

    iget-object v2, p0, Lird;->b:Lmip;

    invoke-interface {v2}, Lmip;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->y()Lmwy;

    move-result-object v2

    invoke-virtual {v2}, Lmwy;->c()Live;

    move-result-object v2

    invoke-virtual {v2}, Live;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lird;->b:Lmip;

    invoke-interface {v3}, Lmip;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->k()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lipq;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    :cond_f
    iget-object v1, p0, Lird;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Lmir;->e(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lird;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmwy;->d(Ljava/lang/Boolean;)V

    .line 241
    invoke-virtual {v0}, Lnba;->t()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 242
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->u()V

    goto/16 :goto_0

    .line 244
    :cond_10
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0, v4}, Lmip;->k(Z)V

    .line 245
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->n()V

    goto/16 :goto_0
.end method

.method public p()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lird;->f:Lipq;

    invoke-interface {v0}, Lipq;->b()V

    .line 478
    return-void
.end method

.method public q()V
    .locals 3

    .prologue
    .line 575
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lird;->c:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 576
    iget-object v1, p0, Lird;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 577
    return-void
.end method

.method public r()V
    .locals 3

    .prologue
    .line 581
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lird;->c:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 582
    iget-object v1, p0, Lird;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 583
    return-void
.end method

.method public s()V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 588
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->S()V

    .line 590
    :cond_0
    return-void
.end method

.method public t()V
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lird;->g:Ljdf;

    if-nez v0, :cond_1

    .line 595
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->ae()V

    .line 596
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->C()Lipi;

    move-result-object v0

    const-string v1, "00000107"

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lird;->f:Lipq;

    invoke-interface {v0}, Lipq;->d()V

    .line 604
    :goto_0
    return-void

    .line 599
    :cond_0
    iget-object v0, p0, Lird;->f:Lipq;

    invoke-interface {v0}, Lipq;->c()V

    goto :goto_0

    .line 602
    :cond_1
    iget-object v0, p0, Lird;->a:Lirb;

    iget-object v1, p0, Lird;->g:Ljdf;

    invoke-interface {v0, v1}, Lirb;->a(Ljdf;)V

    goto :goto_0
.end method

.method public u()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lird;->b:Lmip;

    invoke-interface {v0}, Lmip;->a()Landroid/net/Uri;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    .line 122
    iget-object v1, p0, Lird;->a:Lirb;

    invoke-interface {v1, v0}, Lirb;->a(Landroid/net/Uri;)V

    .line 123
    iget-object v0, p0, Lird;->b:Lmip;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmip;->a(Landroid/net/Uri;)V

    .line 125
    :cond_0
    return-void
.end method

.method public v()V
    .locals 1

    .prologue
    .line 712
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnba;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 713
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->k()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 714
    :cond_0
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->Z()V

    .line 716
    :cond_1
    return-void
.end method

.method public w()V
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lird;->l:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lird;->a:Lirb;

    invoke-interface {v0}, Lirb;->Y()V

    .line 108
    :cond_0
    iget-object v0, p0, Lird;->p:Lgpe;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lird;->p:Lgpe;

    invoke-virtual {v0}, Lgpe;->a()Z

    .line 111
    :cond_1
    return-void
.end method

.method public x()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lird;->f:Lipq;

    invoke-interface {v0}, Lipq;->a()V

    .line 116
    return-void
.end method

.method public y()Z
    .locals 2

    .prologue
    .line 471
    new-instance v0, Lieu;

    iget-object v1, p0, Lird;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lieu;-><init>(Landroid/content/Context;)V

    .line 472
    invoke-virtual {v0}, Lieu;->a()Z

    move-result v0

    return v0
.end method

.method public z()V
    .locals 6

    .prologue
    .line 844
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->C()Lipi;

    move-result-object v0

    .line 845
    const-string v1, "00000115"

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    .line 853
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v1

    invoke-virtual {v1}, Lgnz;->d()Lje;

    move-result-object v1

    .line 854
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v2

    invoke-virtual {v2}, Lmiq;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->i()Ljava/lang/String;

    move-result-object v2

    .line 855
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v3

    invoke-virtual {v3}, Lnab;->f()Lji;

    move-result-object v3

    const/4 v4, 0x0

    .line 857
    invoke-static {}, Lmzr;->a()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 852
    invoke-virtual/range {v0 .. v5}, Lzs;->a(Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;)Z

    .line 859
    new-instance v0, Llo;

    invoke-direct {v0}, Llo;-><init>()V

    .line 860
    new-instance v1, Lirk;

    invoke-direct {v1, p0}, Lirk;-><init>(Lird;)V

    invoke-virtual {v0, v1}, Llo;->b(Llt;)V

    .line 873
    :cond_0
    return-void
.end method
