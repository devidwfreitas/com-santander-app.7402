.class public Llwk;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Llus;


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

.field private i:Lluh;

.field private j:I

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvs;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/support/v7/widget/RecyclerView;

.field private m:Landroid/widget/LinearLayout;

.field private n:Lkwk;

.field private o:I

.field private p:Landroid/widget/RelativeLayout;

.field private q:Lkvp;

.field private r:Lkvr;

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 93
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 95
    const/16 v0, 0x3e73

    iput v0, p0, Llwk;->f:I

    .line 107
    iput v1, p0, Llwk;->j:I

    .line 114
    iput v1, p0, Llwk;->o:I

    return-void
.end method

.method static synthetic a(Llwk;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Llwk;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    return-object v0
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
    .line 411
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 412
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

    .line 413
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

    .line 414
    invoke-virtual {v0}, Lkwk;->d()Lkuw;

    move-result-object v0

    invoke-virtual {v0}, Lkuw;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 415
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v3, p2, :cond_0

    .line 416
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 437
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 422
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 423
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x30

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lmhj;->a(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 425
    :cond_2
    add-int/lit8 p1, p1, 0x1

    :cond_3
    if-gt p1, p2, :cond_4

    .line 426
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 427
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x30

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lmhj;->a(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 430
    :cond_4
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private a(Lkwk;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 164
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

    iget-object v3, p0, Llwk;->q:Lkvp;

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

.method static synthetic a(Llwk;IILjava/util/List;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Llwk;->a(IILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Llwk;Lkwk;)Lkwk;
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Llwk;->n:Lkwk;

    return-object p1
.end method

.method public static a(Ljava/util/List;Lkvp;)Llwk;
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
            "Llwk;"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 141
    if-eqz p0, :cond_0

    .line 142
    const-string v1, "list-note-key"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_0
    if-eqz p1, :cond_1

    .line 145
    const-string v1, "sinister-key"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p1}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_1
    new-instance v1, Llwk;

    invoke-direct {v1}, Llwk;-><init>()V

    .line 149
    invoke-virtual {v1, v0}, Llwk;->setArguments(Landroid/os/Bundle;)V

    .line 150
    return-object v1
.end method

.method public static a(Ljava/util/List;Lkvp;Lkvr;)Llwk;
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
            "Llwk;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    if-eqz p0, :cond_0

    .line 124
    const-string v1, "list-note-key"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    if-eqz p1, :cond_1

    .line 127
    const-string v1, "sinister-key"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p1}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_1
    if-eqz p2, :cond_2

    .line 131
    const-string v1, "sinister-details-key"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p2}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_2
    new-instance v1, Llwk;

    invoke-direct {v1}, Llwk;-><init>()V

    .line 135
    invoke-virtual {v1, v0}, Llwk;->setArguments(Landroid/os/Bundle;)V

    .line 136
    return-object v1
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 334
    const v0, 0x7f1009ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Llwk;->l:Landroid/support/v7/widget/RecyclerView;

    .line 335
    const v0, 0x7f1009ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Llwk;->m:Landroid/widget/LinearLayout;

    .line 336
    const v0, 0x7f100955

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Llwk;->p:Landroid/widget/RelativeLayout;

    .line 338
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 568
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 570
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

    .line 571
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    :goto_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 578
    :try_start_1
    const-string v0, "year"

    iget-object v1, p0, Llwk;->q:Lkvp;

    invoke-virtual {v1}, Lkvp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 579
    const-string v0, "branch"

    iget-object v1, p0, Llwk;->q:Lkvp;

    invoke-virtual {v1}, Lkvp;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 580
    const-string v0, "lossNumber"

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v1

    iget-object v2, p0, Llwk;->q:Lkvp;

    invoke-virtual {v2}, Lkvp;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 581
    const-string v0, "sequence"

    iget-object v1, p0, Llwk;->q:Lkvp;

    invoke-virtual {v1}, Lkvp;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 582
    const-string v0, "documentCode"

    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 587
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

    .line 588
    new-instance v1, Lgnv;

    invoke-direct {p0}, Llwk;->k()Lgkw;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 590
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 593
    :try_start_2
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 599
    :cond_0
    :goto_2
    return-void

    .line 572
    :catch_0
    move-exception v0

    .line 573
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 583
    :catch_1
    move-exception v0

    .line 584
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 594
    :catch_2
    move-exception v0

    .line 595
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method static synthetic a(Llwk;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1}, Llwk;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Llwk;Lkwk;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0, p1}, Llwk;->a(Lkwk;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Llwk;)Lkwk;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Llwk;->n:Lkwk;

    return-object v0
.end method

.method private b(Lkwh;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 783
    invoke-virtual {p0, p1}, Llwk;->a(Lkwh;)Z

    move-result v2

    .line 784
    invoke-virtual {p0}, Llwk;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 785
    invoke-virtual {p1, v0}, Lkwh;->c(Z)V

    .line 786
    invoke-virtual {p1, v0}, Lkwh;->b(Z)V

    .line 787
    invoke-virtual {p1, v0}, Lkwh;->a(Z)V

    .line 799
    :goto_0
    invoke-static {}, Lmzr;->a()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    invoke-virtual {p1, v0}, Lkwh;->d(Z)V

    .line 800
    return-void

    .line 788
    :cond_0
    if-eqz v2, :cond_1

    .line 789
    invoke-virtual {p1, v0}, Lkwh;->c(Z)V

    .line 790
    invoke-virtual {p1, v1}, Lkwh;->b(Z)V

    .line 791
    invoke-virtual {p1, v1}, Lkwh;->a(Z)V

    .line 792
    sget-object v2, Lkwi;->SEND:Lkwi;

    invoke-virtual {p1, v2}, Lkwh;->a(Lkwi;)V

    goto :goto_0

    .line 794
    :cond_1
    invoke-virtual {p1, v1}, Lkwh;->c(Z)V

    .line 795
    invoke-virtual {p1, v1}, Lkwh;->b(Z)V

    .line 796
    sget-object v2, Lkwi;->EDIT:Lkwi;

    invoke-virtual {p1, v2}, Lkwh;->a(Lkwi;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 799
    goto :goto_1
.end method

.method private b(Lkxf;)V
    .locals 4

    .prologue
    .line 458
    iget-object v0, p0, Llwk;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    iget-object v0, v0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->b:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 459
    iget-object v0, p1, Lkxf;->a:[B

    if-eqz v0, :cond_0

    iget-object v0, p1, Lkxf;->b:[B

    if-eqz v0, :cond_0

    .line 460
    :cond_0
    iget-object v0, p1, Lkxf;->a:[B

    invoke-static {v0}, Lmhj;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 461
    iget-object v1, p1, Lkxf;->b:[B

    invoke-static {v1}, Lmhj;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 463
    new-instance v2, Lkwq;

    invoke-direct {v2}, Lkwq;-><init>()V

    .line 464
    iget-object v3, p0, Llwk;->n:Lkwk;

    invoke-virtual {v3}, Lkwk;->e()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lkwq;->a(I)V

    .line 465
    invoke-virtual {v2, v0}, Lkwq;->a(Ljava/lang/String;)V

    .line 466
    iget-object v3, p1, Lkxf;->c:Lknw;

    invoke-virtual {v2, v3}, Lkwq;->a(Lknw;)V

    .line 468
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 469
    iget-object v3, p1, Lkxf;->c:Lknw;

    invoke-virtual {v2, v3}, Lkwq;->a(Lknw;)V

    .line 470
    invoke-virtual {v2, v0}, Lkwq;->a(Ljava/lang/String;)V

    .line 473
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 474
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 475
    iget-object v0, p1, Lkxf;->d:Lknw;

    invoke-virtual {v2, v0}, Lkwq;->a(Lknw;)V

    .line 476
    invoke-virtual {v2, v1}, Lkwq;->a(Ljava/lang/String;)V

    .line 484
    :cond_2
    :goto_0
    :try_start_0
    iget-object v0, p0, Llwk;->h:Lkwv;

    new-instance v1, Llwn;

    invoke-direct {v1, p0}, Llwn;-><init>(Llwk;)V

    invoke-virtual {v0, v2, v1}, Lkwv;->a(Lkwq;Lkxa;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :goto_1
    return-void

    .line 478
    :cond_3
    iget-object v0, p1, Lkxf;->d:Lknw;

    invoke-virtual {v2, v0}, Lkwq;->b(Lknw;)V

    .line 479
    invoke-virtual {v2, v1}, Lkwq;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 168
    iget v0, p0, Llwk;->o:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Llwk;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    iget v0, p0, Llwk;->o:I

    iget-object v1, p0, Llwk;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Llwk;->k:Ljava/util/List;

    iget v1, p0, Llwk;->o:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvs;

    invoke-virtual {v0}, Lkvs;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Llwk;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Llwk;->l:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 172
    invoke-direct {p0}, Llwk;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    :cond_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Llwk;->k:Ljava/util/List;

    iget v1, p0, Llwk;->o:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvs;

    invoke-virtual {v0}, Lkvs;->a()Ljava/util/List;

    move-result-object v0

    .line 174
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkwk;

    .line 176
    :try_start_0
    invoke-direct {p0, v0}, Llwk;->a(Lkwk;)Ljava/lang/String;

    move-result-object v0

    .line 177
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Llwk;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-virtual {v3}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private c(Lkxf;)V
    .locals 4

    .prologue
    .line 506
    iget-object v0, p0, Llwk;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    iget-object v0, v0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->b:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 508
    iget-object v0, p1, Lkxf;->a:[B

    invoke-static {v0}, Lmhj;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 509
    iget-object v1, p1, Lkxf;->b:[B

    invoke-static {v1}, Lmhj;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 510
    new-instance v2, Lknv;

    invoke-direct {v2}, Lknv;-><init>()V

    .line 512
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 513
    iget-object v3, p1, Lkxf;->c:Lknw;

    invoke-virtual {v2, v3}, Lknv;->b(Lknw;)V

    .line 514
    invoke-virtual {v2, v0}, Lknv;->b(Ljava/lang/String;)V

    .line 517
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 518
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 519
    iget-object v0, p1, Lkxf;->d:Lknw;

    invoke-virtual {v2, v0}, Lknv;->b(Lknw;)V

    .line 520
    invoke-virtual {v2, v1}, Lknv;->b(Ljava/lang/String;)V

    .line 527
    :cond_1
    :goto_0
    iget-object v0, p0, Llwk;->q:Lkvp;

    invoke-virtual {v0}, Lkvp;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lknv;->e(Ljava/lang/String;)V

    .line 528
    invoke-static {}, Lmzr;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lknv;->f(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Llwk;->q:Lkvp;

    invoke-virtual {v0}, Lkvp;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lknv;->g(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Llwk;->n:Lkwk;

    invoke-virtual {v0}, Lkwk;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lknv;->d(Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Llwk;->n:Lkwk;

    invoke-virtual {v0}, Lkwk;->d()Lkuw;

    move-result-object v0

    invoke-virtual {v0}, Lkuw;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lknv;->c(Ljava/lang/String;)V

    .line 534
    :try_start_0
    iget-object v0, p0, Llwk;->h:Lkwv;

    new-instance v1, Llwo;

    invoke-direct {v1, p0}, Llwo;-><init>(Llwk;)V

    invoke-virtual {v0, v2, v1}, Lkwv;->a(Lknv;Lkxa;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :goto_1
    return-void

    .line 522
    :cond_2
    iget-object v0, p1, Lkxf;->d:Lknw;

    invoke-virtual {v2, v0}, Lknv;->a(Lknw;)V

    .line 523
    invoke-virtual {v2, v1}, Lknv;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 549
    :catch_0
    move-exception v0

    .line 550
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private d()V
    .locals 6

    .prologue
    const/16 v1, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 219
    iget-object v0, p0, Llwk;->k:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 221
    iget-object v0, p0, Llwk;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Llwk;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Llwk;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    iget-object v2, p0, Llwk;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v5, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 261
    :goto_0
    invoke-direct {p0}, Llwk;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 263
    iget-object v0, p0, Llwk;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-virtual {v0, v5}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(Z)V

    .line 282
    :goto_1
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Llwk;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_1

    .line 228
    iget-object v0, p0, Llwk;->k:Ljava/util/List;

    new-instance v1, Llwl;

    invoke-direct {v1, p0}, Llwl;-><init>(Llwk;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 243
    :cond_1
    invoke-direct {p0}, Llwk;->f()V

    .line 244
    invoke-direct {p0}, Llwk;->c()V

    .line 246
    iget-object v0, p0, Llwk;->l:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 247
    iget-object v0, p0, Llwk;->l:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Llwk;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-direct {v1, v2, v5, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 248
    iget-object v0, p0, Llwk;->l:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 249
    iget v0, p0, Llwk;->o:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Llwk;->r:Lkvr;

    if-eqz v0, :cond_2

    .line 250
    new-instance v0, Lluh;

    iget-object v1, p0, Llwk;->k:Ljava/util/List;

    invoke-direct {p0}, Llwk;->e()Lkwh;

    move-result-object v2

    iget-object v3, p0, Llwk;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-direct {v0, v1, v2, v3}, Lluh;-><init>(Ljava/util/List;Lkwh;Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)V

    iput-object v0, p0, Llwk;->i:Lluh;

    .line 257
    :goto_2
    iget-object v0, p0, Llwk;->i:Lluh;

    invoke-virtual {v0, p0}, Lluh;->a(Llus;)V

    .line 258
    iget-object v0, p0, Llwk;->l:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Llwk;->i:Lluh;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 253
    :cond_2
    new-instance v0, Lluh;

    iget-object v1, p0, Llwk;->k:Ljava/util/List;

    iget-object v2, p0, Llwk;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-direct {v0, v1, v2}, Lluh;-><init>(Ljava/util/List;Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)V

    iput-object v0, p0, Llwk;->i:Lluh;

    goto :goto_2

    .line 266
    :cond_3
    iget-object v0, p0, Llwk;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-virtual {v0, v4}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(Z)V

    goto :goto_1

    .line 277
    :cond_4
    iget-object v0, p0, Llwk;->l:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Llwk;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Llwk;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-virtual {v0, v4}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(Z)V

    goto :goto_1
.end method

.method private e()Lkwh;
    .locals 7

    .prologue
    .line 286
    invoke-static {}, Lmhg;->a()Lmhg;

    move-result-object v0

    const-string v1, "bank-item-key"

    invoke-virtual {v0, v1}, Lmhg;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-static {}, Lmhg;->a()Lmhg;

    move-result-object v0

    const-string v1, "bank-item-key"

    invoke-virtual {v0, v1}, Lmhg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
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

    .line 308
    :goto_0
    return-object v0

    .line 291
    :cond_0
    iget-object v0, p0, Llwk;->r:Lkvr;

    invoke-virtual {v0}, Lkvr;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Llwk;->r:Lkvr;

    invoke-virtual {v0}, Lkvr;->y()Ljava/lang/String;

    move-result-object v0

    .line 292
    :goto_1
    iget-object v1, p0, Llwk;->r:Lkvr;

    invoke-virtual {v1}, Lkvr;->z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Llwk;->r:Lkvr;

    invoke-virtual {v1}, Lkvr;->z()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lmhj;->a(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v1

    .line 293
    :goto_2
    iget-object v2, p0, Llwk;->r:Lkvr;

    invoke-virtual {v2}, Lkvr;->A()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Llwk;->r:Lkvr;

    invoke-virtual {v2}, Lkvr;->A()Ljava/lang/String;

    move-result-object v2

    .line 294
    :goto_3
    const-string v3, ""

    .line 295
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    .line 296
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 297
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    .line 300
    :goto_4
    new-instance v4, Lkwh;

    invoke-direct {v4}, Lkwh;-><init>()V

    .line 301
    invoke-virtual {v4, v0}, Lkwh;->a(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v4, v1}, Lkwh;->b(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v4, v3}, Lkwh;->c(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v4, v2}, Lkwh;->d(Ljava/lang/String;)V

    .line 306
    invoke-direct {p0, v4}, Llwk;->b(Lkwh;)V

    move-object v0, v4

    .line 308
    goto :goto_0

    .line 291
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 292
    :cond_2
    const-string v1, ""

    goto :goto_2

    .line 293
    :cond_3
    const-string v2, ""

    goto :goto_3

    :cond_4
    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_4
.end method

.method private f()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Llwk;->k:Ljava/util/List;

    if-nez v0, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Llwk;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 314
    iget-object v0, p0, Llwk;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvs;

    .line 315
    invoke-virtual {v0}, Lkvs;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 316
    iput v1, p0, Llwk;->o:I

    goto :goto_0

    .line 313
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private g()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 324
    iget-object v0, p0, Llwk;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvs;

    .line 325
    invoke-virtual {v0}, Lkvs;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    .line 326
    :goto_0
    const-string v4, "002"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "003"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    invoke-virtual {v0}, Lkvs;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    const/4 v0, 0x1

    .line 330
    :goto_1
    return v0

    .line 325
    :cond_2
    invoke-virtual {v0}, Lkvs;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 330
    goto :goto_1
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 652
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Llwk;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Llwk;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v3

    const/16 v2, 0x3e73

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 674
    :goto_0
    return-void

    .line 657
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Llwk;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "DOCUMENTO_EM_PDF.pdf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 659
    iget-object v1, p0, Llwk;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    const-string v2, "pdf/teste.pdf"

    invoke-static {v1, v2}, Lmhj;->b(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    .line 660
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 661
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 662
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 663
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 665
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 666
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/pdf"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 668
    invoke-virtual {p0, v1}, Llwk;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 670
    :catch_0
    move-exception v0

    .line 671
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 678
    iget-object v0, p0, Llwk;->n:Lkwk;

    if-nez v0, :cond_0

    .line 690
    :goto_0
    return-void

    .line 679
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Llwk;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 680
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x3e73

    invoke-virtual {p0, v0, v1}, Llwk;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 682
    :cond_1
    iget-object v0, p0, Llwk;->n:Lkwk;

    invoke-direct {p0, v0}, Llwk;->a(Lkwk;)Ljava/lang/String;

    move-result-object v0

    .line 683
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Llwk;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 684
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 685
    iget-object v0, p0, Llwk;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-static {v0, v1}, Lmhj;->a(Lgrs;Ljava/io/File;)V

    goto :goto_0

    .line 687
    :cond_2
    invoke-direct {p0}, Llwk;->j()V

    goto :goto_0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 693
    iget-object v0, p0, Llwk;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    iget-object v0, v0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->b:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 694
    iget-object v0, p0, Llwk;->h:Lkwv;

    iget-object v1, p0, Llwk;->n:Lkwk;

    invoke-virtual {v1}, Lkwk;->e()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Llwp;

    invoke-direct {v2, p0}, Llwp;-><init>(Llwk;)V

    invoke-virtual {v0, v1, v2}, Lkwv;->a(Ljava/lang/String;Lkxa;)V

    .line 730
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
    .line 814
    new-instance v0, Llwq;

    invoke-direct {v0, p0}, Llwq;-><init>(Llwk;)V

    return-object v0
.end method


# virtual methods
.method public a(IF)V
    .locals 0

    .prologue
    .line 618
    return-void
.end method

.method public a(Lkvs;)V
    .locals 4

    .prologue
    .line 343
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llwk;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    const-class v2, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 344
    const-string v1, "sinister-key"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    iget-object v3, p0, Llwk;->q:Lkvp;

    invoke-virtual {v2, v3}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    invoke-virtual {p0, v0}, Llwk;->startActivity(Landroid/content/Intent;)V

    .line 346
    return-void
.end method

.method public a(Lkvs;I)V
    .locals 3

    .prologue
    .line 369
    invoke-static {}, Llxn;->a()Llxn;

    move-result-object v0

    .line 370
    new-instance v1, Llwm;

    invoke-direct {v1, p0, p1}, Llwm;-><init>(Llwk;Lkvs;)V

    invoke-virtual {v0, v1}, Llxn;->a(Llxq;)V

    .line 404
    iget-object v1, p0, Llwk;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "add-document"

    invoke-virtual {v0, v1, v2}, Llxn;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public a(Lkvs;Lkwh;I)V
    .locals 5

    .prologue
    .line 622
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llwk;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    const-class v2, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 623
    new-instance v1, Lkve;

    invoke-direct {v1}, Lkve;-><init>()V

    .line 624
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lkve;->a(Z)V

    .line 625
    iget-object v2, p0, Llwk;->q:Lkvp;

    invoke-virtual {v2}, Lkvp;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkve;->b(Ljava/lang/String;)V

    .line 626
    iget-object v2, p0, Llwk;->q:Lkvp;

    invoke-virtual {v2}, Lkvp;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkve;->c(Ljava/lang/String;)V

    .line 627
    iget-object v2, p0, Llwk;->q:Lkvp;

    invoke-virtual {v2}, Lkvp;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkve;->d(Ljava/lang/String;)V

    .line 628
    iget-object v2, p0, Llwk;->q:Lkvp;

    invoke-virtual {v2}, Lkvp;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkve;->e(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p2}, Lkwh;->b()Lkwi;

    move-result-object v2

    sget-object v3, Lkwi;->EDIT:Lkwi;

    if-ne v2, v3, :cond_2

    .line 631
    new-instance v2, Lkum;

    invoke-direct {v2}, Lkum;-><init>()V

    .line 632
    invoke-virtual {p2}, Lkwh;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkum;->g(Ljava/lang/String;)V

    .line 633
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lkwh;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lkwh;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkum;->h(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p2}, Lkwh;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkum;->a(Ljava/lang/String;)V

    .line 635
    sget-object v3, Lmge;->INSTANCE:Lmge;

    invoke-virtual {v3, v2}, Lmge;->setBankData(Lkum;)V

    .line 637
    invoke-static {}, Lmhg;->a()Lmhg;

    move-result-object v2

    const-string v3, "bank-item-key"

    invoke-virtual {v2, v3}, Lmhg;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 638
    const-string v2, "bank-id"

    invoke-virtual {p2}, Lkwh;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    :cond_0
    :goto_0
    const-string v2, "sinister-code"

    new-instance v3, Lejm;

    invoke-direct {v3}, Lejm;-><init>()V

    invoke-virtual {v3, v1}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    invoke-virtual {p0, v0}, Llwk;->startActivity(Landroid/content/Intent;)V

    .line 649
    return-void

    .line 640
    :cond_1
    sget-object v2, Lmge;->INSTANCE:Lmge;

    invoke-virtual {p2}, Lkwh;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmge;->setCodeNameBank(Ljava/lang/String;)V

    goto :goto_0

    .line 642
    :cond_2
    invoke-virtual {p2}, Lkwh;->b()Lkwi;

    move-result-object v2

    sget-object v3, Lkwi;->SEND:Lkwi;

    if-ne v2, v3, :cond_0

    .line 644
    const-string v2, "last-certificate-key"

    iget-object v3, p0, Llwk;->r:Lkvr;

    invoke-virtual {v3}, Lkvr;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public a(Lkwk;I)V
    .locals 4

    .prologue
    .line 350
    iput-object p1, p0, Llwk;->n:Lkwk;

    .line 351
    iput p2, p0, Llwk;->j:I

    .line 352
    invoke-virtual {p1}, Lkwk;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Llwk;->n:Lkwk;

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

    .line 359
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llwk;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    const-class v2, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 360
    invoke-virtual {p0, v0}, Llwk;->startActivity(Landroid/content/Intent;)V

    .line 364
    :cond_1
    :goto_0
    return-void

    .line 361
    :cond_2
    invoke-virtual {p1}, Lkwk;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    invoke-direct {p0}, Llwk;->i()V

    goto :goto_0
.end method

.method public a(Lkxb;)V
    .locals 6
    .annotation runtime Lnfq;
    .end annotation

    .prologue
    .line 756
    :try_start_0
    iget-boolean v0, p1, Lkxb;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmge;->INSTANCE:Lmge;

    invoke-virtual {v0}, Lmge;->getBankData()Lkum;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 758
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

    .line 760
    sget-object v1, Lmge;->INSTANCE:Lmge;

    invoke-virtual {v1}, Lmge;->getBankData()Lkum;

    move-result-object v1

    .line 761
    new-instance v2, Lkwh;

    invoke-direct {v2}, Lkwh;-><init>()V

    .line 762
    sget-object v3, Lmge;->INSTANCE:Lmge;

    invoke-virtual {v3}, Lmge;->getCodeNameBank()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkwh;->a(Ljava/lang/String;)V

    .line 763
    invoke-virtual {v1}, Lkum;->g()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x30

    const/4 v5, 0x4

    invoke-static {v3, v4, v5}, Lmhj;->a(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkwh;->b(Ljava/lang/String;)V

    .line 764
    invoke-virtual {v2, v0}, Lkwh;->c(Ljava/lang/String;)V

    .line 765
    invoke-virtual {v1}, Lkum;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lkwh;->d(Ljava/lang/String;)V

    .line 766
    invoke-direct {p0, v2}, Llwk;->b(Lkwh;)V

    .line 767
    sget-object v0, Lmge;->INSTANCE:Lmge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmge;->setBankData(Lkum;)V

    .line 768
    sget-object v0, Lmge;->INSTANCE:Lmge;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lmge;->setCodeNameBank(Ljava/lang/String;)V

    .line 770
    invoke-static {}, Lmhg;->a()Lmhg;

    move-result-object v0

    const-string v1, "bank-item-key"

    new-instance v3, Lejm;

    invoke-direct {v3}, Lejm;-><init>()V

    invoke-virtual {v3, v2}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lmhg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Llwk;->i:Lluh;

    if-eqz v0, :cond_0

    iget v0, p0, Llwk;->o:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 773
    iget-object v0, p0, Llwk;->i:Lluh;

    iget v1, p0, Llwk;->o:I

    invoke-virtual {v0, v2, v1}, Lluh;->a(Lkwh;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 776
    :catch_0
    move-exception v0

    .line 777
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lkxf;)V
    .locals 4
    .annotation runtime Lnfq;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 447
    iget-object v0, p0, Llwk;->n:Lkwk;

    invoke-virtual {v0}, Lkwk;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Llwk;->n:Lkwk;

    invoke-virtual {v0}, Lkwk;->d()Lkuw;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "E"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lkuw;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    invoke-direct {p0, p1}, Llwk;->c(Lkxf;)V

    .line 454
    :cond_0
    :goto_0
    iput-boolean v3, p0, Llwk;->s:Z

    .line 455
    return-void

    .line 451
    :cond_1
    invoke-direct {p0, p1}, Llwk;->b(Lkxf;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 810
    iget-object v0, p0, Llwk;->q:Lkvp;

    invoke-virtual {v0}, Lkvp;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llwk;->q:Lkvp;

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

.method public a(Lkwh;)Z
    .locals 4

    .prologue
    .line 803
    invoke-virtual {p1}, Lkwh;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lkwh;->e()Ljava/lang/String;

    move-result-object v0

    .line 804
    :goto_0
    invoke-virtual {p1}, Lkwh;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lkwh;->f()Ljava/lang/String;

    move-result-object v1

    .line 805
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

    .line 803
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 804
    :cond_2
    const-string v1, ""

    goto :goto_1

    .line 805
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 157
    instance-of v0, p1, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    if-eqz v0, :cond_0

    .line 158
    check-cast p1, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    iput-object p1, p0, Llwk;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    .line 161
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
    .line 189
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p0}, Llwk;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llwk;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "list-note-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Llwk;->getArguments()Landroid/os/Bundle;

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

    iput-object v1, p0, Llwk;->k:Ljava/util/List;

    .line 195
    :cond_0
    invoke-virtual {p0}, Llwk;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Llwk;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sinister-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Llwk;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "sinister-key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkvp;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvp;

    iput-object v0, p0, Llwk;->q:Lkvp;

    .line 199
    :cond_1
    invoke-virtual {p0}, Llwk;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Llwk;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sinister-details-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Llwk;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "sinister-details-key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkvr;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvr;

    iput-object v0, p0, Llwk;->r:Lkvr;

    .line 203
    :cond_2
    new-instance v0, Lkwv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkwv;-><init>(Lbr/com/zup/multistatelayout/MultiStateLayout;)V

    iput-object v0, p0, Llwk;->h:Lkwv;

    .line 204
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
    .line 209
    const v0, 0x7f0401ff

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 210
    invoke-direct {p0, v0}, Llwk;->a(Landroid/view/View;)V

    .line 212
    invoke-direct {p0}, Llwk;->d()V

    .line 214
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 749
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 750
    invoke-direct {p0}, Llwk;->c()V

    .line 751
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 609
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 610
    invoke-static {}, Lkws;->a()Lkws;

    move-result-object v0

    invoke-virtual {v0}, Lkws;->b()Lnfg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnfg;->c(Ljava/lang/Object;)V

    .line 611
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
    .line 735
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 736
    packed-switch p1, :pswitch_data_0

    .line 745
    :goto_0
    return-void

    .line 738
    :pswitch_0
    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 739
    invoke-direct {p0}, Llwk;->i()V

    goto :goto_0

    .line 741
    :cond_0
    iget-object v0, p0, Llwk;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-virtual {p0}, Llwk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090462

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 736
    nop

    :pswitch_data_0
    .packed-switch 0x3e73
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 603
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 604
    invoke-static {}, Lkws;->a()Lkws;

    move-result-object v0

    invoke-virtual {v0}, Lkws;->b()Lnfg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnfg;->b(Ljava/lang/Object;)V

    .line 605
    return-void
.end method
