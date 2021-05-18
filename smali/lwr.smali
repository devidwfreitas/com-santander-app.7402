.class public Llwr;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field public static final a:I = 0x1f4

.field public static final b:I = 0x257

.field public static final c:Ljava/lang/String; = "list-note-key"

.field public static final d:Ljava/lang/String; = "sinister-key"

.field public static final e:Ljava/lang/String; = "sinister-details-key"


# instance fields
.field private final f:I

.field private g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

.field private h:Lkwv;

.field private i:Lmeu;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvs;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/support/v7/widget/RecyclerView;

.field private l:Landroid/widget/LinearLayout;

.field private m:Lkwk;

.field private n:I

.field private o:Landroid/widget/RelativeLayout;

.field private p:Lkvp;

.field private q:Lkvr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 105
    const/16 v0, 0x3e73

    iput v0, p0, Llwr;->f:I

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Llwr;->n:I

    return-void
.end method

.method static synthetic a(Llwr;)I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Llwr;->n:I

    return v0
.end method

.method private a(IILjava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lkwk;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 574
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 575
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkwk;

    .line 576
    invoke-virtual {v0}, Lkwk;->d()Lkuw;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lkwk;->d()Lkuw;

    move-result-object v3

    invoke-virtual {v3}, Lkuw;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 577
    invoke-virtual {v0}, Lkwk;->d()Lkuw;

    move-result-object v0

    invoke-virtual {v0}, Lkuw;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 578
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v3, p2, :cond_0

    .line 579
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 596
    :catch_0
    move-exception v0

    .line 597
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 600
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 585
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 586
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x30

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lmhj;->a(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 588
    :cond_2
    add-int/lit8 p1, p1, 0x1

    :cond_3
    if-gt p1, p2, :cond_4

    .line 589
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 590
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x30

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lmhj;->a(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 593
    :cond_4
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private a(Lkwk;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 172
    const-string v0, "%s%s%s.pdf"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lkwk;->e()Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lkwk;->d()Lkuw;

    move-result-object v3

    invoke-virtual {v3}, Lkuw;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Llwr;->p:Lkvp;

    invoke-virtual {v3}, Lkvp;->v()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Llwr;IILjava/util/List;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3}, Llwr;->a(IILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Llwr;Lkwk;)Lkwk;
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Llwr;->m:Lkwk;

    return-object p1
.end method

.method private a(Lkvs;II)Llvx;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 373
    new-instance v3, Llvx;

    invoke-direct {v3}, Llvx;-><init>()V

    .line 374
    invoke-virtual {p1}, Lkvs;->g()Ljava/lang/String;

    move-result-object v0

    .line 376
    const-string v4, "002"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "003"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-virtual {p1}, Lkvs;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "02"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Llwr;->g()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 378
    const-string v4, "002"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 393
    :goto_0
    invoke-virtual {v3, p1}, Llvx;->a(Lkvs;)Llvx;

    move-result-object v4

    invoke-virtual {v4, v0}, Llvx;->a(Z)Llvx;

    move-result-object v4

    if-lez p2, :cond_6

    move v0, v2

    :goto_1
    invoke-virtual {v4, v0}, Llvx;->b(Z)Llvx;

    move-result-object v0

    if-eq p2, p3, :cond_7

    :goto_2
    invoke-virtual {v0, v2}, Llvx;->e(Z)Llvx;

    .line 395
    return-object v3

    :cond_1
    move v0, v2

    .line 381
    goto :goto_0

    .line 386
    :cond_2
    const-string v4, "003"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lkvs;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "03"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    const-string v4, "002"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lkvs;->c()Ljava/lang/String;

    move-result-object v0

    const-string v4, "02"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v1

    .line 387
    goto :goto_0

    :cond_5
    move v0, v2

    .line 389
    goto :goto_0

    :cond_6
    move v0, v1

    .line 393
    goto :goto_1

    :cond_7
    move v2, v1

    goto :goto_2
.end method

.method public static a(Ljava/util/List;Lkvp;)Llwr;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkvs;",
            ">;",
            "Lkvp;",
            ")",
            "Llwr;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 149
    if-eqz p0, :cond_0

    .line 150
    const-string v1, "list-note-key"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    if-eqz p1, :cond_1

    .line 153
    const-string v1, "sinister-key"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p1}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_1
    new-instance v1, Llwr;

    invoke-direct {v1}, Llwr;-><init>()V

    .line 157
    invoke-virtual {v1, v0}, Llwr;->setArguments(Landroid/os/Bundle;)V

    .line 158
    return-object v1
.end method

.method public static a(Ljava/util/List;Lkvp;Lkvr;)Llwr;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkvs;",
            ">;",
            "Lkvp;",
            "Lkvr;",
            ")",
            "Llwr;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    if-eqz p0, :cond_0

    .line 132
    const-string v1, "list-note-key"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    if-eqz p1, :cond_1

    .line 135
    const-string v1, "sinister-key"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p1}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_1
    if-eqz p2, :cond_2

    .line 139
    const-string v1, "sinister-details-key"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p2}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_2
    new-instance v1, Llwr;

    invoke-direct {v1}, Llwr;-><init>()V

    .line 143
    invoke-virtual {v1, v0}, Llwr;->setArguments(Landroid/os/Bundle;)V

    .line 144
    return-object v1
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 499
    const v0, 0x7f1009ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Llwr;->k:Landroid/support/v7/widget/RecyclerView;

    .line 500
    const v0, 0x7f1009ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Llwr;->l:Landroid/widget/LinearLayout;

    .line 501
    const v0, 0x7f100955

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Llwr;->o:Landroid/widget/RelativeLayout;

    .line 503
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 730
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 732
    :try_start_0
    const-string v0, "X-Application-Key"

    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v1

    invoke-virtual {v1}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "appKey"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 733
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    :goto_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 740
    :try_start_1
    const-string v0, "year"

    iget-object v1, p0, Llwr;->p:Lkvp;

    invoke-virtual {v1}, Lkvp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 741
    const-string v0, "branch"

    iget-object v1, p0, Llwr;->p:Lkvp;

    invoke-virtual {v1}, Lkvp;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 742
    const-string v0, "lossNumber"

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v1

    iget-object v2, p0, Llwr;->p:Lkvp;

    invoke-virtual {v2}, Lkvp;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 743
    const-string v0, "sequence"

    iget-object v1, p0, Llwr;->p:Lkvp;

    invoke-virtual {v1}, Lkvp;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 744
    const-string v0, "documentCode"

    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 749
    :goto_1
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v1, Lkwr;->UPDATE_DOCUMENT_STATUS:Lkwr;

    invoke-virtual {v1}, Lkwr;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lim;->POST:Lim;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 750
    new-instance v1, Lgnv;

    invoke-direct {p0}, Llwr;->k()Lgkw;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 752
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 755
    :try_start_2
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 761
    :cond_0
    :goto_2
    return-void

    .line 734
    :catch_0
    move-exception v0

    .line 735
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 745
    :catch_1
    move-exception v0

    .line 746
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 756
    :catch_2
    move-exception v0

    .line 757
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method static synthetic a(Llwr;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Llwr;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Llwr;Lkwk;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0, p1}, Llwr;->a(Lkwk;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Llwr;)Ljava/util/List;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Llwr;->j:Ljava/util/List;

    return-object v0
.end method

.method private b(Lkwk;)Llvr;
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 405
    .line 406
    sget-object v0, Llvv;->GONE:Llvv;

    .line 408
    invoke-virtual {p1}, Lkwk;->d()Lkuw;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "Z"

    aput-object v5, v4, v2

    const-string v5, "R"

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Lkuw;->a([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 410
    invoke-virtual {p1}, Lkwk;->e()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v6, :cond_1

    .line 411
    sget-object v0, Llvv;->VISUALIZAR:Llvv;

    :goto_0
    move v2, v1

    .line 433
    :cond_0
    :goto_1
    new-instance v3, Llvr;

    invoke-direct {v3}, Llvr;-><init>()V

    .line 435
    invoke-virtual {v3, p1}, Llvr;->a(Lkwk;)Llvr;

    move-result-object v4

    .line 436
    invoke-virtual {v4, v2}, Llvr;->a(Z)Llvr;

    move-result-object v2

    .line 437
    invoke-virtual {v2, v1}, Llvr;->b(Z)Llvr;

    move-result-object v1

    .line 438
    invoke-virtual {v1, v0}, Llvr;->a(Llvv;)Llvr;

    move-result-object v0

    new-instance v1, Llwx;

    invoke-direct {v1, p0}, Llwx;-><init>(Llwr;)V

    .line 439
    invoke-virtual {v0, v1}, Llvr;->a(Llvu;)Llvr;

    .line 447
    return-object v3

    .line 413
    :cond_1
    sget-object v0, Llvv;->GONE:Llvv;

    goto :goto_0

    .line 418
    :cond_2
    invoke-virtual {p1}, Lkwk;->d()Lkuw;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "E"

    aput-object v5, v4, v2

    invoke-virtual {v3, v4}, Lkuw;->a([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 419
    sget-object v3, Llvv;->ENVIAR:Llvv;

    .line 421
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    move v1, v0

    move-object v0, v3

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    .line 422
    :cond_4
    invoke-virtual {p1}, Lkwk;->d()Lkuw;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "X"

    aput-object v5, v4, v2

    invoke-virtual {v3, v4}, Lkuw;->a([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 423
    invoke-virtual {p1}, Lkwk;->e()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v6, :cond_5

    .line 424
    sget-object v0, Llvv;->REENVIAR:Llvv;

    .line 429
    :goto_3
    invoke-static {}, Lmzr;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_1

    .line 426
    :cond_5
    sget-object v0, Llvv;->GONE:Llvv;

    goto :goto_3
.end method

.method private b(Lkwh;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 935
    invoke-virtual {p0, p1}, Llwr;->a(Lkwh;)Z

    move-result v2

    .line 936
    invoke-virtual {p0}, Llwr;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 937
    invoke-virtual {p1, v0}, Lkwh;->c(Z)V

    .line 938
    invoke-virtual {p1, v0}, Lkwh;->b(Z)V

    .line 939
    invoke-virtual {p1, v0}, Lkwh;->a(Z)V

    .line 951
    :goto_0
    invoke-static {}, Lmzr;->a()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    invoke-virtual {p1, v0}, Lkwh;->d(Z)V

    .line 952
    return-void

    .line 940
    :cond_0
    if-eqz v2, :cond_1

    .line 941
    invoke-virtual {p1, v0}, Lkwh;->c(Z)V

    .line 942
    invoke-virtual {p1, v1}, Lkwh;->b(Z)V

    .line 943
    invoke-virtual {p1, v1}, Lkwh;->a(Z)V

    .line 944
    sget-object v2, Lkwi;->SEND:Lkwi;

    invoke-virtual {p1, v2}, Lkwh;->a(Lkwi;)V

    goto :goto_0

    .line 946
    :cond_1
    invoke-virtual {p1, v1}, Lkwh;->c(Z)V

    .line 947
    invoke-virtual {p1, v1}, Lkwh;->b(Z)V

    .line 948
    sget-object v2, Lkwi;->EDIT:Lkwi;

    invoke-virtual {p1, v2}, Lkwh;->a(Lkwi;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 951
    goto :goto_1
.end method

.method private b(Lkxf;)V
    .locals 4

    .prologue
    .line 620
    iget-object v0, p0, Llwr;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    iget-object v0, v0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->b:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 621
    iget-object v0, p1, Lkxf;->a:[B

    if-eqz v0, :cond_0

    iget-object v0, p1, Lkxf;->b:[B

    if-eqz v0, :cond_0

    .line 622
    :cond_0
    iget-object v0, p1, Lkxf;->a:[B

    invoke-static {v0}, Lmhj;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 623
    iget-object v1, p1, Lkxf;->b:[B

    invoke-static {v1}, Lmhj;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 625
    new-instance v2, Lkwq;

    invoke-direct {v2}, Lkwq;-><init>()V

    .line 626
    iget-object v3, p0, Llwr;->m:Lkwk;

    invoke-virtual {v3}, Lkwk;->e()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lkwq;->a(I)V

    .line 627
    invoke-virtual {v2, v0}, Lkwq;->a(Ljava/lang/String;)V

    .line 628
    iget-object v3, p1, Lkxf;->c:Lknw;

    invoke-virtual {v2, v3}, Lkwq;->a(Lknw;)V

    .line 630
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 631
    iget-object v3, p1, Lkxf;->c:Lknw;

    invoke-virtual {v2, v3}, Lkwq;->a(Lknw;)V

    .line 632
    invoke-virtual {v2, v0}, Lkwq;->a(Ljava/lang/String;)V

    .line 635
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 636
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 637
    iget-object v0, p1, Lkxf;->d:Lknw;

    invoke-virtual {v2, v0}, Lkwq;->a(Lknw;)V

    .line 638
    invoke-virtual {v2, v1}, Lkwq;->a(Ljava/lang/String;)V

    .line 646
    :cond_2
    :goto_0
    :try_start_0
    iget-object v0, p0, Llwr;->h:Lkwv;

    new-instance v1, Llwz;

    invoke-direct {v1, p0}, Llwz;-><init>(Llwr;)V

    invoke-virtual {v0, v2, v1}, Lkwv;->a(Lkwq;Lkxa;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :goto_1
    return-void

    .line 640
    :cond_3
    iget-object v0, p1, Lkxf;->d:Lknw;

    invoke-virtual {v2, v0}, Lkwq;->b(Lknw;)V

    .line 641
    invoke-virtual {v2, v1}, Lkwq;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 662
    :catch_0
    move-exception v0

    .line 663
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic c(Llwr;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Llwr;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 178
    :try_start_0
    iget v0, p0, Llwr;->n:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Llwr;->j:Ljava/util/List;

    iget v1, p0, Llwr;->n:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvs;

    invoke-virtual {v0}, Lkvs;->a()Ljava/util/List;

    move-result-object v0

    .line 181
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkwk;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 183
    :try_start_1
    invoke-direct {p0, v0}, Llwr;->a(Lkwk;)Ljava/lang/String;

    move-result-object v0

    .line 184
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Llwr;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-virtual {v3}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 188
    :catch_0
    move-exception v0

    .line 189
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 192
    :catch_1
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private c(Lkxf;)V
    .locals 4

    .prologue
    .line 668
    iget-object v0, p0, Llwr;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    iget-object v0, v0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->b:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 670
    iget-object v0, p1, Lkxf;->a:[B

    invoke-static {v0}, Lmhj;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 671
    iget-object v1, p1, Lkxf;->b:[B

    invoke-static {v1}, Lmhj;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 672
    new-instance v2, Lknv;

    invoke-direct {v2}, Lknv;-><init>()V

    .line 674
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 675
    iget-object v3, p1, Lkxf;->c:Lknw;

    invoke-virtual {v2, v3}, Lknv;->b(Lknw;)V

    .line 676
    invoke-virtual {v2, v0}, Lknv;->b(Ljava/lang/String;)V

    .line 679
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 680
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 681
    iget-object v0, p1, Lkxf;->d:Lknw;

    invoke-virtual {v2, v0}, Lknv;->b(Lknw;)V

    .line 682
    invoke-virtual {v2, v1}, Lknv;->b(Ljava/lang/String;)V

    .line 689
    :cond_1
    :goto_0
    iget-object v0, p0, Llwr;->p:Lkvp;

    invoke-virtual {v0}, Lkvp;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lknv;->e(Ljava/lang/String;)V

    .line 690
    invoke-static {}, Lmzr;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lknv;->f(Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Llwr;->p:Lkvp;

    invoke-virtual {v0}, Lkvp;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lknv;->g(Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Llwr;->m:Lkwk;

    invoke-virtual {v0}, Lkwk;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lknv;->d(Ljava/lang/String;)V

    .line 693
    iget-object v0, p0, Llwr;->m:Lkwk;

    invoke-virtual {v0}, Lkwk;->d()Lkuw;

    move-result-object v0

    invoke-virtual {v0}, Lkuw;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lknv;->c(Ljava/lang/String;)V

    .line 696
    :try_start_0
    iget-object v0, p0, Llwr;->h:Lkwv;

    new-instance v1, Llxa;

    invoke-direct {v1, p0}, Llxa;-><init>(Llwr;)V

    invoke-virtual {v0, v2, v1}, Lkwv;->a(Lknv;Lkxa;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :goto_1
    return-void

    .line 684
    :cond_2
    iget-object v0, p1, Lkxf;->d:Lknw;

    invoke-virtual {v2, v0}, Lknv;->a(Lknw;)V

    .line 685
    invoke-virtual {v2, v1}, Lknv;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 711
    :catch_0
    move-exception v0

    .line 712
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic d(Llwr;)Lkwk;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Llwr;->m:Lkwk;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 229
    iget-object v0, p0, Llwr;->j:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 231
    iget-object v0, p0, Llwr;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Llwr;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Llwr;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    iget-object v2, p0, Llwr;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 264
    :goto_0
    invoke-direct {p0}, Llwr;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Llwr;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-virtual {v0, v3}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(Z)V

    .line 285
    :goto_1
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Llwr;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 238
    iget-object v0, p0, Llwr;->j:Ljava/util/List;

    new-instance v1, Llws;

    invoke-direct {v1, p0}, Llws;-><init>(Llwr;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 256
    :cond_1
    iget-object v0, p0, Llwr;->k:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 257
    iget-object v0, p0, Llwr;->k:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Llwr;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 259
    invoke-direct {p0}, Llwr;->e()V

    goto :goto_0

    .line 269
    :cond_2
    iget-object v0, p0, Llwr;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-virtual {v0, v4}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(Z)V

    goto :goto_1

    .line 280
    :cond_3
    iget-object v0, p0, Llwr;->k:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Llwr;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Llwr;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-virtual {v0, v4}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(Z)V

    goto :goto_1
.end method

.method private e()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 289
    iget-object v0, p0, Llwr;->j:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 290
    new-instance v0, Lmeu;

    invoke-direct {v0}, Lmeu;-><init>()V

    iput-object v0, p0, Llwr;->i:Lmeu;

    .line 291
    iget-object v0, p0, Llwr;->k:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Llwr;->i:Lmeu;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 292
    iget-object v0, p0, Llwr;->j:Ljava/util/List;

    iget-object v1, p0, Llwr;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvs;

    invoke-virtual {v0}, Lkvs;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Llwr;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    move v2, v0

    :goto_0
    move v3, v4

    .line 293
    :goto_1
    iget-object v0, p0, Llwr;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_9

    .line 294
    iget-object v0, p0, Llwr;->j:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvs;

    .line 295
    invoke-virtual {v0}, Lkvs;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 296
    iput v3, p0, Llwr;->n:I

    .line 297
    invoke-direct {p0}, Llwr;->c()V

    .line 301
    invoke-direct {p0}, Llwr;->f()Lkwh;

    move-result-object v1

    .line 302
    invoke-virtual {v1}, Lkwh;->a()Z

    move-result v8

    .line 303
    new-instance v5, Llvj;

    invoke-direct {v5}, Llvj;-><init>()V

    .line 304
    invoke-virtual {v5, v1}, Llvj;->a(Lkwh;)Llvj;

    move-result-object v1

    new-instance v6, Llwu;

    invoke-direct {v6, p0}, Llwu;-><init>(Llwr;)V

    invoke-virtual {v1, v6}, Llvj;->a(Llvl;)Llvj;

    .line 310
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 311
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v4

    move v6, v7

    .line 312
    :goto_2
    invoke-virtual {v0}, Lkvs;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_3

    .line 313
    invoke-virtual {v0}, Lkvs;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkwk;

    .line 314
    invoke-virtual {v1}, Lkwk;->d()Lkuw;

    move-result-object v10

    invoke-virtual {v10}, Lkuw;->d()Z

    move-result v10

    if-nez v10, :cond_1

    .line 315
    invoke-direct {p0, v1}, Llwr;->b(Lkwk;)Llvr;

    move-result-object v1

    .line 316
    invoke-virtual {v1}, Llvr;->g()Z

    move-result v10

    if-nez v10, :cond_0

    move v6, v4

    .line 319
    :cond_0
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2

    .line 292
    :cond_2
    iget-object v0, p0, Llwr;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    goto :goto_0

    .line 322
    :cond_3
    new-instance v5, Llvf;

    invoke-direct {v5}, Llvf;-><init>()V

    .line 323
    invoke-static {}, Lmzr;->a()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v7

    :goto_3
    invoke-virtual {v5, v1}, Llvf;->a(Z)Llvf;

    move-result-object v1

    new-instance v10, Llwv;

    invoke-direct {v10, p0}, Llwv;-><init>(Llwr;)V

    invoke-virtual {v1, v10}, Llvf;->a(Llvh;)Llvf;

    .line 329
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    new-instance v1, Llvn;

    invoke-direct {v1}, Llvn;-><init>()V

    .line 333
    invoke-virtual {v1, v7}, Llvn;->a(Z)Llvn;

    move-result-object v5

    .line 334
    invoke-virtual {v5, v0}, Llvn;->a(Lkvs;)Llvn;

    move-result-object v5

    if-eqz v8, :cond_6

    if-eqz v6, :cond_6

    move v0, v7

    .line 335
    :goto_4
    invoke-virtual {v5, v0}, Llvn;->b(Z)Llvn;

    move-result-object v0

    .line 336
    invoke-virtual {v0, v4}, Llvn;->d(Z)Llvn;

    move-result-object v0

    .line 337
    invoke-virtual {v0, v4}, Llvn;->e(Z)Llvn;

    move-result-object v0

    .line 338
    invoke-virtual {v0, v7}, Llvn;->c(Z)Llvn;

    move-result-object v0

    new-instance v5, Llww;

    invoke-direct {v5, p0}, Llww;-><init>(Llwr;)V

    .line 339
    invoke-virtual {v0, v5}, Llvn;->a(Llvq;)Llvn;

    .line 345
    if-eqz v8, :cond_4

    if-nez v6, :cond_7

    .line 346
    :cond_4
    iget-object v0, p0, Llwr;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    sget-object v5, Lkvx;->DOCUMENTATION:Lkvx;

    invoke-virtual {v0, v4, v5}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(ZLkvx;)V

    .line 350
    :goto_5
    invoke-virtual {v1, v9}, Llvn;->b(Ljava/util/List;)Lmew;

    .line 351
    iget-object v0, p0, Llwr;->i:Lmeu;

    invoke-virtual {v0, v1}, Lmeu;->d(Lmdt;)Lmeu;

    .line 293
    :goto_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    :cond_5
    move v1, v4

    .line 323
    goto :goto_3

    :cond_6
    move v0, v4

    .line 334
    goto :goto_4

    .line 348
    :cond_7
    iget-object v0, p0, Llwr;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    iget-object v5, p0, Llwr;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-virtual {v5}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->b()Z

    move-result v5

    sget-object v6, Lkvx;->DOCUMENTATION:Lkvx;

    invoke-virtual {v0, v5, v6}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(ZLkvx;)V

    goto :goto_5

    .line 353
    :cond_8
    invoke-direct {p0, v0, v3, v2}, Llwr;->a(Lkvs;II)Llvx;

    move-result-object v0

    .line 354
    iget-object v1, p0, Llwr;->i:Lmeu;

    invoke-virtual {v1, v0}, Lmeu;->d(Lmdt;)Lmeu;

    goto :goto_6

    .line 370
    :cond_9
    return-void
.end method

.method private f()Lkwh;
    .locals 7

    .prologue
    .line 452
    invoke-static {}, Lmhg;->a()Lmhg;

    move-result-object v0

    const-string v1, "bank-item-key"

    invoke-virtual {v0, v1}, Lmhg;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    invoke-static {}, Lmhg;->a()Lmhg;

    move-result-object v0

    const-string v1, "bank-item-key"

    invoke-virtual {v0, v1}, Lmhg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-static {}, Lmhg;->a()Lmhg;

    move-result-object v1

    const-string v2, "bank-item-key"

    invoke-virtual {v1, v2}, Lmhg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkwh;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkwh;

    .line 474
    :goto_0
    return-object v0

    .line 457
    :cond_0
    iget-object v0, p0, Llwr;->q:Lkvr;

    invoke-virtual {v0}, Lkvr;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Llwr;->q:Lkvr;

    invoke-virtual {v0}, Lkvr;->y()Ljava/lang/String;

    move-result-object v0

    .line 458
    :goto_1
    iget-object v1, p0, Llwr;->q:Lkvr;

    invoke-virtual {v1}, Lkvr;->z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Llwr;->q:Lkvr;

    invoke-virtual {v1}, Lkvr;->z()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lmhj;->a(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v1

    .line 459
    :goto_2
    iget-object v2, p0, Llwr;->q:Lkvr;

    invoke-virtual {v2}, Lkvr;->A()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Llwr;->q:Lkvr;

    invoke-virtual {v2}, Lkvr;->A()Ljava/lang/String;

    move-result-object v2

    .line 460
    :goto_3
    const-string v3, ""

    .line 461
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    .line 462
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 463
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    .line 466
    :goto_4
    new-instance v4, Lkwh;

    invoke-direct {v4}, Lkwh;-><init>()V

    .line 467
    invoke-virtual {v4, v0}, Lkwh;->a(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v4, v1}, Lkwh;->b(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v4, v3}, Lkwh;->c(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v4, v2}, Lkwh;->d(Ljava/lang/String;)V

    .line 472
    invoke-direct {p0, v4}, Llwr;->b(Lkwh;)V

    move-object v0, v4

    .line 474
    goto :goto_0

    .line 457
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 458
    :cond_2
    const-string v1, ""

    goto :goto_2

    .line 459
    :cond_3
    const-string v2, ""

    goto :goto_3

    :cond_4
    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_4
.end method

.method private g()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 478
    .line 480
    iget-object v0, p0, Llwr;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvs;

    .line 482
    invoke-virtual {v0}, Lkvs;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "02"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 483
    invoke-virtual {v0}, Lkvs;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, ""

    .line 485
    :goto_1
    const-string v4, "002"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "003"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 486
    :cond_0
    const/4 v1, 0x1

    move v0, v1

    :goto_2
    move v1, v0

    .line 494
    goto :goto_0

    .line 483
    :cond_1
    invoke-virtual {v0}, Lkvs;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 487
    :cond_2
    const-string v4, "005"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 495
    :goto_3
    return v2

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_3
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 806
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Llwr;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Llwr;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v3

    const/16 v2, 0x3e73

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 828
    :goto_0
    return-void

    .line 811
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Llwr;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "DOCUMENTO_EM_PDF.pdf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 813
    iget-object v1, p0, Llwr;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    const-string v2, "pdf/teste.pdf"

    invoke-static {v1, v2}, Lmhj;->b(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    .line 814
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 815
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 816
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 817
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 819
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 820
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/pdf"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 821
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 822
    invoke-virtual {p0, v1}, Llwr;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 824
    :catch_0
    move-exception v0

    .line 825
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 832
    iget-object v0, p0, Llwr;->m:Lkwk;

    if-nez v0, :cond_0

    .line 844
    :goto_0
    return-void

    .line 833
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Llwr;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 834
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x3e73

    invoke-virtual {p0, v0, v1}, Llwr;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 836
    :cond_1
    iget-object v0, p0, Llwr;->m:Lkwk;

    invoke-direct {p0, v0}, Llwr;->a(Lkwk;)Ljava/lang/String;

    move-result-object v0

    .line 837
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Llwr;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 838
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 839
    iget-object v0, p0, Llwr;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-static {v0, v1}, Lmhj;->a(Lgrs;Ljava/io/File;)V

    goto :goto_0

    .line 841
    :cond_2
    invoke-direct {p0}, Llwr;->j()V

    goto :goto_0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 847
    iget-object v0, p0, Llwr;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    iget-object v0, v0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->b:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 848
    iget-object v0, p0, Llwr;->h:Lkwv;

    iget-object v1, p0, Llwr;->m:Lkwk;

    invoke-virtual {v1}, Lkwk;->e()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Llxb;

    invoke-direct {v2, p0}, Llxb;-><init>(Llwr;)V

    invoke-virtual {v0, v1, v2}, Lkwv;->a(Ljava/lang/String;Lkxa;)V

    .line 884
    return-void
.end method

.method private k()Lgkw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgkw",
            "<",
            "Lis;",
            ">;"
        }
    .end annotation

    .prologue
    .line 966
    new-instance v0, Llwt;

    invoke-direct {v0, p0}, Llwt;-><init>(Llwr;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 532
    invoke-static {}, Llxn;->a()Llxn;

    move-result-object v0

    .line 533
    new-instance v1, Llwy;

    invoke-direct {v1, p0}, Llwy;-><init>(Llwr;)V

    invoke-virtual {v0, v1}, Llxn;->a(Llxq;)V

    .line 567
    iget-object v1, p0, Llwr;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "add-document"

    invoke-virtual {v0, v1, v2}, Llxn;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method public a(Lkwh;I)V
    .locals 5

    .prologue
    .line 776
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llwr;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    const-class v2, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 777
    new-instance v1, Lkve;

    invoke-direct {v1}, Lkve;-><init>()V

    .line 778
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lkve;->a(Z)V

    .line 779
    iget-object v2, p0, Llwr;->p:Lkvp;

    invoke-virtual {v2}, Lkvp;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkve;->b(Ljava/lang/String;)V

    .line 780
    iget-object v2, p0, Llwr;->p:Lkvp;

    invoke-virtual {v2}, Lkvp;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkve;->c(Ljava/lang/String;)V

    .line 781
    iget-object v2, p0, Llwr;->p:Lkvp;

    invoke-virtual {v2}, Lkvp;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkve;->d(Ljava/lang/String;)V

    .line 782
    iget-object v2, p0, Llwr;->p:Lkvp;

    invoke-virtual {v2}, Lkvp;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkve;->e(Ljava/lang/String;)V

    .line 784
    invoke-virtual {p1}, Lkwh;->b()Lkwi;

    move-result-object v2

    sget-object v3, Lkwi;->EDIT:Lkwi;

    if-ne v2, v3, :cond_2

    .line 785
    new-instance v2, Lkum;

    invoke-direct {v2}, Lkum;-><init>()V

    .line 786
    invoke-virtual {p1}, Lkwh;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkum;->g(Ljava/lang/String;)V

    .line 787
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lkwh;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lkwh;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkum;->h(Ljava/lang/String;)V

    .line 788
    invoke-virtual {p1}, Lkwh;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkum;->a(Ljava/lang/String;)V

    .line 789
    sget-object v3, Lmge;->INSTANCE:Lmge;

    invoke-virtual {v3, v2}, Lmge;->setBankData(Lkum;)V

    .line 791
    invoke-static {}, Lmhg;->a()Lmhg;

    move-result-object v2

    const-string v3, "bank-item-key"

    invoke-virtual {v2, v3}, Lmhg;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 792
    const-string v2, "bank-id"

    invoke-virtual {p1}, Lkwh;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 801
    :cond_0
    :goto_0
    const-string v2, "sinister-code"

    new-instance v3, Lejm;

    invoke-direct {v3}, Lejm;-><init>()V

    invoke-virtual {v3, v1}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 802
    invoke-virtual {p0, v0}, Llwr;->startActivity(Landroid/content/Intent;)V

    .line 803
    return-void

    .line 794
    :cond_1
    sget-object v2, Lmge;->INSTANCE:Lmge;

    invoke-virtual {p1}, Lkwh;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmge;->setCodeNameBank(Ljava/lang/String;)V

    goto :goto_0

    .line 796
    :cond_2
    invoke-virtual {p1}, Lkwh;->b()Lkwi;

    move-result-object v2

    sget-object v3, Lkwi;->SEND:Lkwi;

    if-ne v2, v3, :cond_0

    .line 798
    const-string v2, "last-certificate-key"

    iget-object v3, p0, Llwr;->q:Lkvr;

    invoke-virtual {v3}, Lkvr;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public a(Lkwk;I)V
    .locals 4

    .prologue
    .line 515
    iput-object p1, p0, Llwr;->m:Lkwk;

    .line 516
    invoke-virtual {p1}, Lkwk;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 518
    iget-object v0, p0, Llwr;->m:Lkwk;

    invoke-virtual {v0}, Lkwk;->d()Lkuw;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "X"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lkuw;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llwr;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    const-class v2, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 524
    invoke-virtual {p0, v0}, Llwr;->startActivity(Landroid/content/Intent;)V

    .line 528
    :cond_1
    :goto_0
    return-void

    .line 525
    :cond_2
    invoke-virtual {p1}, Lkwk;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    invoke-direct {p0}, Llwr;->i()V

    goto :goto_0
.end method

.method public a(Lkxb;)V
    .locals 6
    .annotation runtime Lnfq;
    .end annotation

    .prologue
    .line 910
    :try_start_0
    iget-boolean v0, p1, Lkxb;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmge;->INSTANCE:Lmge;

    invoke-virtual {v0}, Lmge;->getBankData()Lkum;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 912
    sget-object v0, Lmge;->INSTANCE:Lmge;

    invoke-virtual {v0}, Lmge;->getBankData()Lkum;

    move-result-object v0

    invoke-virtual {v0}, Lkum;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lmge;->INSTANCE:Lmge;

    invoke-virtual {v2}, Lmge;->getBankData()Lkum;

    move-result-object v2

    invoke-virtual {v2}, Lkum;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v3, Lmge;->INSTANCE:Lmge;

    invoke-virtual {v3}, Lmge;->getBankData()Lkum;

    move-result-object v3

    invoke-virtual {v3}, Lkum;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 914
    sget-object v1, Lmge;->INSTANCE:Lmge;

    invoke-virtual {v1}, Lmge;->getBankData()Lkum;

    move-result-object v1

    .line 915
    new-instance v2, Lkwh;

    invoke-direct {v2}, Lkwh;-><init>()V

    .line 916
    sget-object v3, Lmge;->INSTANCE:Lmge;

    invoke-virtual {v3}, Lmge;->getCodeNameBank()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkwh;->a(Ljava/lang/String;)V

    .line 917
    invoke-virtual {v1}, Lkum;->g()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x30

    const/4 v5, 0x4

    invoke-static {v3, v4, v5}, Lmhj;->a(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkwh;->b(Ljava/lang/String;)V

    .line 918
    invoke-virtual {v2, v0}, Lkwh;->c(Ljava/lang/String;)V

    .line 919
    invoke-virtual {v1}, Lkum;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lkwh;->d(Ljava/lang/String;)V

    .line 920
    invoke-direct {p0, v2}, Llwr;->b(Lkwh;)V

    .line 921
    sget-object v0, Lmge;->INSTANCE:Lmge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmge;->setBankData(Lkum;)V

    .line 922
    sget-object v0, Lmge;->INSTANCE:Lmge;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lmge;->setCodeNameBank(Ljava/lang/String;)V

    .line 924
    invoke-static {}, Lmhg;->a()Lmhg;

    move-result-object v0

    const-string v1, "bank-item-key"

    new-instance v3, Lejm;

    invoke-direct {v3}, Lejm;-><init>()V

    invoke-virtual {v3, v2}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmhg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    iget-object v0, p0, Llwr;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    iget-object v1, p0, Llwr;->j:Ljava/util/List;

    iget-object v2, p0, Llwr;->p:Lkvp;

    iget-object v3, p0, Llwr;->q:Lkvr;

    invoke-static {v1, v2, v3}, Llwr;->a(Ljava/util/List;Lkvp;Lkvr;)Llwr;

    move-result-object v1

    const-string v2, "sinister-details"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    :cond_0
    :goto_0
    return-void

    .line 928
    :catch_0
    move-exception v0

    .line 929
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lkxf;)V
    .locals 4
    .annotation runtime Lnfq;
    .end annotation

    .prologue
    .line 610
    iget-object v0, p0, Llwr;->m:Lkwk;

    invoke-virtual {v0}, Lkwk;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Llwr;->m:Lkwk;

    invoke-virtual {v0}, Lkwk;->d()Lkuw;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "E"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lkuw;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 612
    invoke-direct {p0, p1}, Llwr;->c(Lkxf;)V

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    invoke-direct {p0, p1}, Llwr;->b(Lkxf;)V

    goto :goto_0
.end method

.method public a(Lkwh;)Z
    .locals 4

    .prologue
    .line 955
    invoke-virtual {p1}, Lkwh;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lkwh;->e()Ljava/lang/String;

    move-result-object v0

    .line 956
    :goto_0
    invoke-virtual {p1}, Lkwh;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lkwh;->f()Ljava/lang/String;

    move-result-object v1

    .line 957
    :goto_1
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " "

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_2
    return v0

    .line 955
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 956
    :cond_2
    const-string v1, ""

    goto :goto_1

    .line 957
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 962
    iget-object v0, p0, Llwr;->p:Lkvp;

    invoke-virtual {v0}, Lkvp;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llwr;->p:Lkvp;

    invoke-virtual {v0}, Lkvp;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 165
    instance-of v0, p1, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    if-eqz v0, :cond_0

    .line 166
    check-cast p1, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    iput-object p1, p0, Llwr;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    .line 169
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 201
    invoke-virtual {p0}, Llwr;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llwr;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "list-note-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    new-instance v1, Ljava/util/ArrayList;

    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Llwr;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "list-note-key"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, [Lkvs;

    invoke-virtual {v0, v2, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Llwr;->j:Ljava/util/List;

    .line 205
    :cond_0
    invoke-virtual {p0}, Llwr;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Llwr;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sinister-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Llwr;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "sinister-key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkvp;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvp;

    iput-object v0, p0, Llwr;->p:Lkvp;

    .line 209
    :cond_1
    invoke-virtual {p0}, Llwr;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Llwr;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sinister-details-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Llwr;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "sinister-details-key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkvr;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvr;

    iput-object v0, p0, Llwr;->q:Lkvr;

    .line 213
    :cond_2
    new-instance v0, Lkwv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkwv;-><init>(Lbr/com/zup/multistatelayout/MultiStateLayout;)V

    iput-object v0, p0, Llwr;->h:Lkwv;

    .line 214
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 219
    const v0, 0x7f0401ff

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 220
    invoke-direct {p0, v0}, Llwr;->a(Landroid/view/View;)V

    .line 222
    invoke-direct {p0}, Llwr;->d()V

    .line 224
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 903
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 904
    invoke-direct {p0}, Llwr;->c()V

    .line 905
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 771
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 772
    invoke-static {}, Lkws;->a()Lkws;

    move-result-object v0

    invoke-virtual {v0}, Lkws;->b()Lnfg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnfg;->c(Ljava/lang/Object;)V

    .line 773
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 889
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 890
    packed-switch p1, :pswitch_data_0

    .line 899
    :goto_0
    return-void

    .line 892
    :pswitch_0
    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 893
    invoke-direct {p0}, Llwr;->i()V

    goto :goto_0

    .line 895
    :cond_0
    iget-object v0, p0, Llwr;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-virtual {p0}, Llwr;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090462

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 890
    nop

    :pswitch_data_0
    .packed-switch 0x3e73
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 765
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 766
    invoke-static {}, Lkws;->a()Lkws;

    move-result-object v0

    invoke-virtual {v0}, Lkws;->b()Lnfg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnfg;->b(Ljava/lang/Object;)V

    .line 767
    return-void
.end method
