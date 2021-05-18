.class public Lgxg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgxs;


# instance fields
.field public a:Lmip;

.field private b:Lhtz;

.field private c:Lgxu;

.field private d:Landroid/app/Activity;

.field private e:Landroid/content/SharedPreferences;

.field private f:Lhhq;

.field private g:Lhxh;

.field private h:Z

.field private final i:Lgyd;

.field private j:Lgxb;

.field private k:Lhya;

.field private l:Lgww;

.field private m:Lgxc;

.field private n:Ljos;


# direct methods
.method public constructor <init>(Lgxu;Landroid/app/Activity;Lgww;)V
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgxg;->h:Z

    .line 94
    iput-object p1, p0, Lgxg;->c:Lgxu;

    .line 95
    iput-object p2, p0, Lgxg;->d:Landroid/app/Activity;

    .line 96
    iput-object p3, p0, Lgxg;->l:Lgww;

    .line 97
    const-string v0, "cardPreferences"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lgxg;->e:Landroid/content/SharedPreferences;

    .line 98
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lgxg;->a:Lmip;

    .line 99
    invoke-static {}, Lhhq;->h()Lhhq;

    move-result-object v0

    iput-object v0, p0, Lgxg;->f:Lhhq;

    .line 100
    invoke-static {}, Lhxh;->h()Lhxh;

    move-result-object v0

    iput-object v0, p0, Lgxg;->g:Lhxh;

    .line 101
    invoke-static {}, Lhtz;->h()Lhtz;

    move-result-object v0

    iput-object v0, p0, Lgxg;->b:Lhtz;

    .line 102
    invoke-static {}, Lgyd;->n()Lgyd;

    move-result-object v0

    iput-object v0, p0, Lgxg;->i:Lgyd;

    .line 103
    invoke-static {}, Lgxb;->a()Lgxb;

    move-result-object v0

    iput-object v0, p0, Lgxg;->j:Lgxb;

    .line 104
    invoke-static {}, Lhyb;->j()Lhya;

    move-result-object v0

    iput-object v0, p0, Lgxg;->k:Lhya;

    .line 105
    new-instance v0, Ljos;

    invoke-direct {v0}, Ljos;-><init>()V

    iput-object v0, p0, Lgxg;->n:Ljos;

    .line 106
    return-void
.end method

.method private a(Lgwr;Lgxa;)Lgta;
    .locals 3

    .prologue
    .line 757
    new-instance v1, Lgta;

    invoke-direct {v1}, Lgta;-><init>()V

    .line 759
    sget-object v0, Lgxr;->c:[I

    invoke-virtual {p1}, Lgwr;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 766
    :goto_0
    invoke-virtual {p2}, Lgxa;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lgxa;->d()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lgta;->a(Ljava/lang/String;)V

    .line 767
    const v0, 0x7f0204cd

    invoke-virtual {v1, v0}, Lgta;->b(I)V

    .line 768
    const v0, 0x7f0204cb

    invoke-virtual {v1, v0}, Lgta;->c(I)V

    .line 769
    invoke-virtual {p2}, Lgxa;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lgxa;->f()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Lgta;->c(Ljava/lang/String;)V

    .line 770
    invoke-virtual {p2}, Lgxa;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lgxa;->i()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Lgta;->d(Ljava/lang/String;)V

    .line 771
    invoke-virtual {p2}, Lgxa;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lgxa;->j()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Lgta;->e(Ljava/lang/String;)V

    .line 773
    return-object v1

    .line 761
    :pswitch_0
    invoke-virtual {p2}, Lgxa;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lgxa;->e()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v1, v0}, Lgta;->b(Ljava/lang/String;)V

    .line 762
    const v0, 0x7f0204ca

    invoke-virtual {v1, v0}, Lgta;->a(I)V

    goto :goto_0

    .line 761
    :cond_0
    const-string v0, ""

    goto :goto_5

    .line 766
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 769
    :cond_2
    const-string v0, ""

    goto :goto_2

    .line 770
    :cond_3
    const-string v0, ""

    goto :goto_3

    .line 771
    :cond_4
    const-string v0, ""

    goto :goto_4

    .line 759
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lgxa;)Lgta;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 739
    .line 741
    invoke-virtual {p1}, Lgxa;->h()Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 749
    sget-object v0, Lgwr;->padrao:Lgwr;

    invoke-direct {p0, v0, p1}, Lgxg;->a(Lgwr;Lgxa;)Lgta;

    move-result-object v0

    .line 750
    sget-object v1, Lgwq;->tela:Lgwq;

    invoke-virtual {v0, v1}, Lgta;->a(Lgwq;)V

    .line 753
    :goto_1
    return-object v0

    .line 741
    :pswitch_0
    const-string v3, "LINK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 743
    :pswitch_1
    sget-object v0, Lgwr;->padrao:Lgwr;

    invoke-direct {p0, v0, p1}, Lgxg;->a(Lgwr;Lgxa;)Lgta;

    move-result-object v0

    .line 744
    sget-object v2, Lgwq;->link:Lgwq;

    invoke-virtual {v0, v2}, Lgta;->a(Lgwq;)V

    .line 745
    invoke-virtual {v0, v1}, Lgta;->c(Z)V

    goto :goto_1

    .line 741
    nop

    :pswitch_data_0
    .packed-switch 0x23a7fa
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljnd;)Lgta;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 807
    new-instance v0, Lgta;

    invoke-direct {v0}, Lgta;-><init>()V

    .line 808
    invoke-virtual {p1}, Ljnd;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgta;->b(Ljava/lang/String;)V

    .line 809
    sget-object v1, Lgwq;->lojaOnline:Lgwq;

    invoke-virtual {v0, v1}, Lgta;->a(Lgwq;)V

    .line 810
    invoke-virtual {v0, v2}, Lgta;->a(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p1}, Ljnd;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgta;->a(Landroid/graphics/Bitmap;)V

    .line 812
    const v1, 0x7f0204cd

    invoke-virtual {v0, v1}, Lgta;->b(I)V

    .line 813
    const v1, 0x7f0204cb

    invoke-virtual {v0, v1}, Lgta;->c(I)V

    .line 814
    invoke-virtual {p1}, Ljnd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgta;->c(Ljava/lang/String;)V

    .line 815
    invoke-virtual {v0, v2}, Lgta;->d(Ljava/lang/String;)V

    .line 816
    invoke-virtual {v0, v2}, Lgta;->e(Ljava/lang/String;)V

    .line 817
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgta;->c(Z)V

    .line 818
    return-object v0
.end method

.method static synthetic a(Lgxg;Lgxc;)Lgxc;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lgxg;->m:Lgxc;

    return-object p1
.end method

.method private a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lgta;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lgta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 617
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 619
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 620
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 622
    :cond_0
    return-object v1
.end method

.method private a(Lgkw;Lgta;)V
    .locals 3

    .prologue
    .line 827
    new-instance v0, Lgxv;

    iget-object v1, p0, Lgxg;->d:Landroid/app/Activity;

    invoke-direct {v0, p1, v1}, Lgxv;-><init>(Lgkw;Landroid/app/Activity;)V

    .line 828
    invoke-virtual {p2}, Lgta;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lgta;->i()Ljava/lang/String;

    move-result-object v2

    .line 827
    invoke-virtual {v0, v1, v2}, Lgxv;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    return-void
.end method

.method private a(Lgkw;Lgta;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 822
    new-instance v0, Lgxv;

    iget-object v1, p0, Lgxg;->d:Landroid/app/Activity;

    invoke-direct {v0, p1, v1}, Lgxv;-><init>(Lgkw;Landroid/app/Activity;)V

    .line 823
    invoke-virtual {p2}, Lgta;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lgta;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lgta;->i()Ljava/lang/String;

    move-result-object v3

    .line 822
    invoke-virtual {v0, v1, p3, v2, v3}, Lgxv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    return-void
.end method

.method static synthetic a(Lgxg;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lgxg;->d()V

    return-void
.end method

.method static synthetic a(Lgxg;Lgkw;Lgta;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lgxg;->a(Lgkw;Lgta;)V

    return-void
.end method

.method static synthetic a(Lgxg;Lgkw;Lgta;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lgxg;->a(Lgkw;Lgta;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lgxg;)Lgww;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lgxg;->l:Lgww;

    return-object v0
.end method

.method private b(Lgta;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 607
    iget-boolean v0, p0, Lgxg;->h:Z

    if-nez v0, :cond_0

    .line 608
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 613
    :goto_0
    return-object v0

    .line 610
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lgta;->e()Lgwq;

    move-result-object v0

    sget-object v1, Lgwq;->investimento:Lgwq;

    invoke-virtual {v0, v1}, Lgwq;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lgta;->e()Lgwq;

    move-result-object v0

    sget-object v1, Lgwq;->poupanca:Lgwq;

    invoke-virtual {v0, v1}, Lgwq;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 611
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 613
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lgta;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lgta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 626
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgta;

    .line 627
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 628
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 629
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    return-object p1
.end method

.method static synthetic c(Lgxg;)Lhtz;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lgxg;->b:Lhtz;

    return-object v0
.end method

.method static synthetic d(Lgxg;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lgxg;->e:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 131
    new-instance v0, Lgxv;

    new-instance v1, Lgxh;

    invoke-direct {v1, p0}, Lgxh;-><init>(Lgxg;)V

    iget-object v2, p0, Lgxg;->d:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lgxv;-><init>(Lgkw;Landroid/app/Activity;)V

    .line 137
    invoke-virtual {v0}, Lgxv;->a()V

    .line 138
    return-void
.end method

.method static synthetic e(Lgxg;)Lgyd;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lgxg;->i:Lgyd;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lgxg;->n:Ljos;

    new-instance v1, Lgxi;

    invoke-direct {v1, p0}, Lgxi;-><init>(Lgxg;)V

    invoke-virtual {v0, v1}, Ljos;->a(Ljoj;)V

    .line 147
    return-void
.end method

.method static synthetic f(Lgxg;)Lhhq;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lgxg;->f:Lhhq;

    return-object v0
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 150
    iget-object v2, p0, Lgxg;->j:Lgxb;

    invoke-virtual {v2}, Lgxb;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    iget-object v1, p0, Lgxg;->e:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "sortCardState"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 154
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v2, p0, Lgxg;->e:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "sortCardState"

    iget-object v4, p0, Lgxg;->e:Landroid/content/SharedPreferences;

    const-string v5, "sortCardState"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private g()Lgta;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 588
    iget-object v1, p0, Lgxg;->e:Landroid/content/SharedPreferences;

    const-string v2, "cpfCDB"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 589
    const-string v2, ""

    if-eq v1, v2, :cond_0

    .line 591
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 592
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgxg;->e:Landroid/content/SharedPreferences;

    const-string v2, "isCardCDB"

    .line 599
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 600
    invoke-direct {p0}, Lgxg;->l()Lgta;

    move-result-object v0

    .line 603
    :cond_0
    :goto_0
    return-object v0

    .line 593
    :catch_0
    move-exception v1

    .line 594
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic g(Lgxg;)Lhxh;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lgxg;->g:Lhxh;

    return-object v0
.end method

.method private h()Lgta;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/high16 v6, 0x42c80000    # 100.0f

    .line 635
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 636
    const/4 v3, 0x0

    .line 638
    iget-object v0, p0, Lgxg;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgxg;->a:Lmip;

    .line 639
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 641
    iget-object v0, p0, Lgxg;->a:Lmip;

    .line 642
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getExtractoHome()Lfuy;

    move-result-object v0

    .line 643
    invoke-virtual {v0}, Lfuy;->u()Ljava/lang/String;

    move-result-object v0

    const-string v4, "\\."

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ","

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 641
    invoke-static {v0}, Lnaj;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 645
    iget-object v0, p0, Lgxg;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->u()Lhkr;

    move-result-object v0

    invoke-interface {v0}, Lhkr;->a()Lhxo;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lgxg;->a:Lmip;

    .line 646
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->u()Lhkr;

    move-result-object v0

    invoke-interface {v0}, Lhkr;->a()Lhxo;

    move-result-object v0

    invoke-virtual {v0}, Lhxo;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 648
    iget-object v0, p0, Lgxg;->a:Lmip;

    .line 649
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->u()Lhkr;

    move-result-object v0

    invoke-interface {v0}, Lhkr;->a()Lhxo;

    move-result-object v0

    invoke-virtual {v0}, Lhxo;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\."

    const-string v5, ""

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    const-string v5, ""

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 648
    invoke-static {v0}, Lnaj;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 651
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 654
    :goto_1
    invoke-static {}, Lmzr;->d()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    move-object v0, v3

    .line 690
    :goto_2
    return-object v0

    :cond_1
    move v0, v1

    .line 651
    goto :goto_0

    .line 658
    :pswitch_0
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x43fa0000    # 500.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 659
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    invoke-direct {p0}, Lgxg;->k()Lgta;

    move-result-object v0

    goto :goto_2

    .line 663
    :cond_2
    invoke-direct {p0}, Lgxg;->j()Lgta;

    move-result-object v0

    goto :goto_2

    .line 669
    :pswitch_1
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x43480000    # 200.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 670
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    invoke-direct {p0}, Lgxg;->k()Lgta;

    move-result-object v0

    goto :goto_2

    .line 674
    :cond_3
    invoke-direct {p0}, Lgxg;->i()Lgta;

    move-result-object v0

    goto :goto_2

    .line 679
    :pswitch_2
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float v1, v1, v6

    if-gez v1, :cond_4

    .line 680
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    invoke-direct {p0}, Lgxg;->k()Lgta;

    move-result-object v0

    goto :goto_2

    .line 684
    :cond_4
    invoke-direct {p0}, Lgxg;->i()Lgta;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v2

    goto :goto_1

    .line 654
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic h(Lgxg;)Lgxu;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lgxg;->c:Lgxu;

    return-object v0
.end method

.method static synthetic i(Lgxg;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lgxg;->d:Landroid/app/Activity;

    return-object v0
.end method

.method private i()Lgta;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 694
    new-instance v0, Lgta;

    invoke-direct {v0}, Lgta;-><init>()V

    .line 695
    iget-object v1, p0, Lgxg;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090339

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgta;->b(Ljava/lang/String;)V

    .line 696
    sget-object v1, Lgwq;->poupanca:Lgwq;

    invoke-virtual {v0, v1}, Lgta;->a(Lgwq;)V

    .line 697
    invoke-virtual {v0, v3}, Lgta;->a(Ljava/lang/String;)V

    .line 698
    const v1, 0x7f0204cc

    invoke-virtual {v0, v1}, Lgta;->a(I)V

    .line 699
    const v1, 0x7f0204cd

    invoke-virtual {v0, v1}, Lgta;->b(I)V

    .line 700
    const v1, 0x7f0204cb

    invoke-virtual {v0, v1}, Lgta;->c(I)V

    .line 701
    invoke-virtual {v0, v3}, Lgta;->c(Ljava/lang/String;)V

    .line 702
    invoke-virtual {v0, v3}, Lgta;->d(Ljava/lang/String;)V

    .line 703
    invoke-virtual {v0, v3}, Lgta;->e(Ljava/lang/String;)V

    .line 705
    return-object v0
.end method

.method private j()Lgta;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 709
    new-instance v0, Lgta;

    invoke-direct {v0}, Lgta;-><init>()V

    .line 710
    iget-object v1, p0, Lgxg;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090339

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgta;->b(Ljava/lang/String;)V

    .line 711
    sget-object v1, Lgwq;->investimento:Lgwq;

    invoke-virtual {v0, v1}, Lgta;->a(Lgwq;)V

    .line 712
    invoke-virtual {v0, v3}, Lgta;->a(Ljava/lang/String;)V

    .line 713
    const v1, 0x7f0204cc

    invoke-virtual {v0, v1}, Lgta;->a(I)V

    .line 714
    const v1, 0x7f0204cd

    invoke-virtual {v0, v1}, Lgta;->b(I)V

    .line 715
    const v1, 0x7f0204cb

    invoke-virtual {v0, v1}, Lgta;->c(I)V

    .line 716
    invoke-virtual {v0, v3}, Lgta;->c(Ljava/lang/String;)V

    .line 717
    invoke-virtual {v0, v3}, Lgta;->d(Ljava/lang/String;)V

    .line 718
    invoke-virtual {v0, v3}, Lgta;->e(Ljava/lang/String;)V

    .line 720
    return-object v0
.end method

.method static synthetic j(Lgxg;)Lhya;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lgxg;->k:Lhya;

    return-object v0
.end method

.method private k()Lgta;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 724
    new-instance v0, Lgta;

    invoke-direct {v0}, Lgta;-><init>()V

    .line 725
    iget-object v1, p0, Lgxg;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090337

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgta;->b(Ljava/lang/String;)V

    .line 726
    sget-object v1, Lgwq;->emprestimo:Lgwq;

    invoke-virtual {v0, v1}, Lgta;->a(Lgwq;)V

    .line 727
    invoke-virtual {v0, v3}, Lgta;->a(Ljava/lang/String;)V

    .line 728
    const v1, 0x7f0204ca

    invoke-virtual {v0, v1}, Lgta;->a(I)V

    .line 729
    const v1, 0x7f0204cd

    invoke-virtual {v0, v1}, Lgta;->b(I)V

    .line 730
    const v1, 0x7f0204cb

    invoke-virtual {v0, v1}, Lgta;->c(I)V

    .line 731
    invoke-virtual {v0, v3}, Lgta;->c(Ljava/lang/String;)V

    .line 732
    invoke-virtual {v0, v3}, Lgta;->d(Ljava/lang/String;)V

    .line 733
    invoke-virtual {v0, v3}, Lgta;->e(Ljava/lang/String;)V

    .line 735
    return-object v0
.end method

.method private l()Lgta;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 777
    new-instance v0, Lgta;

    invoke-direct {v0}, Lgta;-><init>()V

    .line 778
    iget-object v1, p0, Lgxg;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09022e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgta;->b(Ljava/lang/String;)V

    .line 779
    sget-object v1, Lgwq;->cardCDB:Lgwq;

    invoke-virtual {v0, v1}, Lgta;->a(Lgwq;)V

    .line 780
    invoke-virtual {v0, v3}, Lgta;->a(Ljava/lang/String;)V

    .line 781
    const v1, 0x7f0204c9

    invoke-virtual {v0, v1}, Lgta;->a(I)V

    .line 782
    const v1, 0x7f0204cd

    invoke-virtual {v0, v1}, Lgta;->b(I)V

    .line 783
    const v1, 0x7f0204cb

    invoke-virtual {v0, v1}, Lgta;->c(I)V

    .line 784
    invoke-virtual {v0, v3}, Lgta;->c(Ljava/lang/String;)V

    .line 785
    invoke-virtual {v0, v3}, Lgta;->d(Ljava/lang/String;)V

    .line 786
    invoke-virtual {v0, v3}, Lgta;->e(Ljava/lang/String;)V

    .line 788
    return-object v0
.end method

.method private m()Lgta;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 792
    new-instance v0, Lgta;

    invoke-direct {v0}, Lgta;-><init>()V

    .line 793
    iget-object v1, p0, Lgxg;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090789

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgta;->b(Ljava/lang/String;)V

    .line 794
    sget-object v1, Lgwq;->carrinhoAbandonadoPDI:Lgwq;

    invoke-virtual {v0, v1}, Lgta;->a(Lgwq;)V

    .line 795
    invoke-virtual {v0, v3}, Lgta;->a(Ljava/lang/String;)V

    .line 796
    const v1, 0x7f0204cc

    invoke-virtual {v0, v1}, Lgta;->a(I)V

    .line 797
    const v1, 0x7f0204cd

    invoke-virtual {v0, v1}, Lgta;->b(I)V

    .line 798
    const v1, 0x7f0204cb

    invoke-virtual {v0, v1}, Lgta;->c(I)V

    .line 799
    invoke-virtual {v0, v3}, Lgta;->c(Ljava/lang/String;)V

    .line 800
    invoke-virtual {v0, v3}, Lgta;->d(Ljava/lang/String;)V

    .line 801
    invoke-virtual {v0, v3}, Lgta;->e(Ljava/lang/String;)V

    .line 803
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lgxg;->c:Lgxu;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lgxu;->a(I)V

    .line 112
    iget-object v0, p0, Lgxg;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->w()Lgwx;

    move-result-object v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lgxg;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    new-instance v1, Lgwx;

    invoke-direct {v1}, Lgwx;-><init>()V

    invoke-virtual {v0, v1}, Lmir;->a(Lgwx;)V

    .line 116
    :cond_0
    invoke-direct {p0}, Lgxg;->f()V

    .line 118
    iget-object v0, p0, Lgxg;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->w()Lgwx;

    move-result-object v0

    invoke-virtual {v0}, Lgwx;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 119
    iget-object v0, p0, Lgxg;->i:Lgyd;

    invoke-virtual {v0}, Lgyd;->d()V

    .line 120
    iget-object v0, p0, Lgxg;->f:Lhhq;

    invoke-virtual {v0}, Lhhq;->d()V

    .line 121
    iget-object v0, p0, Lgxg;->g:Lhxh;

    invoke-virtual {v0}, Lhxh;->d()V

    .line 122
    iget-object v0, p0, Lgxg;->b:Lhtz;

    invoke-virtual {v0}, Lhtz;->d()V

    .line 123
    iget-object v0, p0, Lgxg;->j:Lgxb;

    invoke-virtual {v0}, Lgxb;->e()V

    .line 124
    iget-object v0, p0, Lgxg;->c:Lgxu;

    iget-object v1, p0, Lgxg;->a:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->w()Lgwx;

    move-result-object v1

    invoke-virtual {v1}, Lgwx;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lgxu;->a(Ljava/util/ArrayList;)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-direct {p0}, Lgxg;->e()V

    goto :goto_0
.end method

.method public a(Lgta;)V
    .locals 3

    .prologue
    .line 541
    invoke-virtual {p1}, Lgta;->e()Lgwq;

    move-result-object v0

    .line 542
    sget-object v1, Lgxr;->a:[I

    invoke-virtual {v0}, Lgwq;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 585
    :goto_0
    :pswitch_0
    return-void

    .line 545
    :pswitch_1
    invoke-virtual {p1}, Lgta;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {p1}, Lgta;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "acordo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    const/16 v0, 0x9

    .line 551
    :goto_1
    iget-object v1, p0, Lgxg;->k:Lhya;

    new-instance v2, Lgxq;

    invoke-direct {v2, p0, v0}, Lgxq;-><init>(Lgxg;I)V

    invoke-interface {v1, v0, v2}, Lhya;->a(ILhxy;)V

    goto :goto_0

    .line 549
    :cond_0
    const/4 v0, 0x3

    goto :goto_1

    .line 578
    :pswitch_2
    iget-object v0, p0, Lgxg;->c:Lgxu;

    invoke-interface {v0}, Lgxu;->e()V

    goto :goto_0

    .line 582
    :pswitch_3
    iget-object v0, p0, Lgxg;->d:Landroid/app/Activity;

    const-string v1, "POUPANCA"

    invoke-static {v0, v1}, Ljcw;->c(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 542
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 457
    invoke-direct {p0}, Lgxg;->m()Lgta;

    move-result-object v0

    .line 458
    if-eqz v0, :cond_0

    .line 459
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lgxg;->c:Lgxu;

    new-instance v1, Lgxj;

    invoke-direct {v1, p0}, Lgxj;-><init>(Lgxg;)V

    invoke-interface {v0, v1}, Lgxu;->a(Lgsz;)V

    .line 454
    return-void
.end method

.method public c()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 464
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 465
    const/4 v4, 0x0

    .line 467
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->C()Lipi;

    move-result-object v0

    .line 468
    iget-object v1, p0, Lgxg;->c:Lgxu;

    invoke-interface {v1}, Lgxu;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "00000115"

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {p0, v3}, Lgxg;->a(Ljava/util/List;)V

    .line 472
    :cond_0
    iget-object v0, p0, Lgxg;->j:Lgxb;

    invoke-virtual {v0}, Lgxb;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lgxg;->j:Lgxb;

    invoke-virtual {v0}, Lgxb;->b()Lgta;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    :cond_1
    iget-object v0, p0, Lgxg;->m:Lgxc;

    invoke-virtual {v0}, Lgxc;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    move v1, v2

    .line 476
    :goto_0
    iget-object v0, p0, Lgxg;->m:Lgxc;

    invoke-virtual {v0}, Lgxc;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 477
    iget-object v0, p0, Lgxg;->m:Lgxc;

    invoke-virtual {v0}, Lgxc;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgxa;

    .line 478
    invoke-virtual {v0}, Lgxa;->b()Z

    move-result v5

    if-nez v5, :cond_3

    .line 479
    invoke-direct {p0, v0}, Lgxg;->a(Lgxa;)Lgta;

    move-result-object v0

    .line 481
    if-eqz v0, :cond_2

    .line 482
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 484
    :cond_3
    iput-boolean v2, p0, Lgxg;->h:Z

    .line 485
    iget-object v5, p0, Lgxg;->c:Lgxu;

    invoke-interface {v5, v0}, Lgxu;->a(Lgxa;)V

    goto :goto_1

    .line 497
    :cond_4
    iget-object v0, p0, Lgxg;->a:Lmip;

    invoke-interface {v0}, Lmip;->z()Ljnc;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 498
    invoke-static {}, Lmzr;->d()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    .line 499
    iget-object v0, p0, Lgxg;->a:Lmip;

    invoke-interface {v0}, Lmip;->z()Ljnc;

    move-result-object v0

    invoke-virtual {v0}, Ljnc;->a()Ljnd;

    move-result-object v0

    .line 500
    invoke-direct {p0, v0}, Lgxg;->a(Ljnd;)Lgta;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_5
    invoke-direct {p0}, Lgxg;->g()Lgta;

    move-result-object v0

    .line 504
    if-eqz v0, :cond_6

    .line 505
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_d

    .line 509
    iget-object v0, p0, Lgxg;->e:Landroid/content/SharedPreferences;

    const-string v1, "sortCardState"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 510
    invoke-direct {p0, v3}, Lgxg;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 515
    :goto_2
    iget-object v1, p0, Lgxg;->i:Lgyd;

    invoke-virtual {v1}, Lgyd;->e()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 516
    iget-object v1, p0, Lgxg;->i:Lgyd;

    invoke-virtual {v1}, Lgyd;->g()Lgta;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    :cond_7
    iget-object v1, p0, Lgxg;->b:Lhtz;

    invoke-virtual {v1}, Lhtz;->e()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 520
    iget-object v1, p0, Lgxg;->b:Lhtz;

    invoke-virtual {v1}, Lhtz;->g()Lgta;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_8
    iget-object v1, p0, Lgxg;->f:Lhhq;

    invoke-virtual {v1}, Lhhq;->e()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 524
    iget-object v1, p0, Lgxg;->f:Lhhq;

    invoke-virtual {v1}, Lhhq;->g()Lgta;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    :cond_9
    iget-object v1, p0, Lgxg;->g:Lhxh;

    invoke-virtual {v1}, Lhxh;->e()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 528
    iget-object v1, p0, Lgxg;->g:Lhxh;

    invoke-virtual {v1}, Lhxh;->g()Lgta;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 532
    iget-object v1, p0, Lgxg;->c:Lgxu;

    invoke-interface {v1, v0}, Lgxu;->a(Ljava/util/ArrayList;)V

    .line 533
    iget-object v1, p0, Lgxg;->a:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->w()Lgwx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgwx;->a(Ljava/util/ArrayList;)V

    .line 536
    :cond_b
    invoke-direct {p0, v4}, Lgxg;->b(Lgta;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lgpu;->a(Ljava/lang/Boolean;)V

    .line 537
    return-void

    .line 512
    :cond_c
    invoke-direct {p0, v3}, Lgxg;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_2

    :cond_d
    move-object v0, v3

    goto :goto_2
.end method
