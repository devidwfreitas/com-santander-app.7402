.class public Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Llxq;


# static fields
.field public static final a:Ljava/lang/String; = "sinister-code"

.field public static final b:Ljava/lang/String; = "coverage-key"

.field public static final c:Ljava/lang/String; = "certificate-key"

.field public static final d:Ljava/lang/String; = "phone-assistance"

.field private static final e:I = 0xd6c0


# instance fields
.field private A:Llyf;

.field private B:Lltm;

.field private C:Llyh;

.field private D:I

.field private E:Lkwo;

.field private F:Lkve;

.field private G:Ljava/lang/String;

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkuw;",
            ">;"
        }
    .end annotation
.end field

.field private I:Ljava/lang/String;

.field private J:Lkwv;

.field private K:Llxn;

.field private L:Z

.field private M:Ljava/lang/String;

.field private N:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private O:Ljava/lang/String;

.field private f:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private g:Landroid/support/v7/widget/RecyclerView;

.field private w:Landroid/widget/Button;

.field private x:Landroid/widget/Button;

.field private y:Landroid/widget/FrameLayout;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->D:I

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->L:Z

    .line 124
    const-string v0, "documents"

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->M:Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->N:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;I)I
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->D:I

    return p1
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Lkve;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->F:Lkve;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;Llyh;)Llyh;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->C:Llyh;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;Lkus;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->e(Lkus;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkuw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 355
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 358
    :try_start_0
    const-string v0, "jsons/sinister/document_info.json"

    invoke-static {p0, v0}, Lmhj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 360
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 362
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 364
    new-instance v1, Lejm;

    invoke-direct {v1}, Lejm;-><init>()V

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-class v6, Lkoc;

    invoke-virtual {v1, v5, v6}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkoc;

    .line 365
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 374
    :cond_0
    :goto_1
    return-void

    .line 368
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->a(Ljava/util/List;Ljava/util/HashMap;)V

    .line 369
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->b(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private a(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkuw;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lkoc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 378
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkuw;

    .line 379
    invoke-virtual {v0}, Lkuw;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lkuw;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkoc;

    invoke-virtual {v1}, Lkoc;->a()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lkuw;->a(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0}, Lkuw;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lkuw;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkoc;

    invoke-virtual {v1}, Lkoc;->b()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Lkuw;->b(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v0}, Lkuw;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lkuw;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkoc;

    invoke-virtual {v1}, Lkoc;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v0, v1}, Lkuw;->a(Z)V

    goto :goto_0

    .line 379
    :cond_0
    invoke-virtual {v0}, Lkuw;->f()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 380
    :cond_1
    invoke-virtual {v0}, Lkuw;->f()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 381
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 383
    :cond_3
    return-void
.end method

.method private b(Lkus;)Ljava/io/File;
    .locals 3

    .prologue
    .line 189
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->c()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->M:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 190
    invoke-virtual {p1}, Lkus;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".pdf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->I:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;Lkus;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->d(Lkus;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 553
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 555
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

    .line 556
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :goto_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 563
    :try_start_1
    const-string v0, "year"

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->F:Lkve;

    invoke-virtual {v1}, Lkve;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 564
    const-string v0, "branch"

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->F:Lkve;

    invoke-virtual {v1}, Lkve;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 565
    const-string v0, "lossNumber"

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v1

    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->F:Lkve;

    invoke-virtual {v2}, Lkve;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 566
    const-string v0, "sequence"

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->F:Lkve;

    invoke-virtual {v1}, Lkve;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 567
    const-string v0, "documentCode"

    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 572
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

    .line 573
    new-instance v1, Lgnv;

    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->q()Lgkw;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 575
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 578
    :try_start_2
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 584
    :cond_0
    :goto_2
    return-void

    .line 557
    :catch_0
    move-exception v0

    .line 558
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 568
    :catch_1
    move-exception v0

    .line 569
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 579
    :catch_2
    move-exception v0

    .line 580
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkuw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 599
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 600
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->H:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->c(Ljava/util/List;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 601
    new-instance v0, Lltm;

    invoke-static {p1}, Lkut;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lltm;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->B:Lltm;

    .line 603
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 604
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 605
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->B:Lltm;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 607
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->B:Lltm;

    new-instance v1, Llsp;

    invoke-direct {v1, p0}, Llsp;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)V

    invoke-virtual {v0, v1}, Lltm;->a(Lltt;)V

    .line 652
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->D:I

    return v0
.end method

.method private c()Ljava/io/File;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;Lkus;)Ljava/io/File;
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->b(Lkus;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/util/List;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkuw;",
            ">;)",
            "Ljava/util/Collection",
            "<+",
            "Lkuw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 842
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 843
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkuw;

    .line 845
    invoke-virtual {v0}, Lkuw;->d()Z

    move-result v3

    if-nez v3, :cond_0

    .line 846
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 849
    :cond_1
    return-object v1
.end method

.method private c(Lkus;)V
    .locals 3

    .prologue
    .line 656
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lkus;->a()I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_1

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->i:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090362

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 703
    :goto_0
    return-void

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->B:Lltm;

    iget v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->D:I

    invoke-virtual {v0, v1}, Lltm;->a(I)V

    .line 662
    new-instance v0, Lkur;

    invoke-direct {v0}, Lkur;-><init>()V

    .line 663
    invoke-virtual {p1}, Lkus;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkur;->a(Ljava/lang/String;)V

    .line 666
    :try_start_0
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->J:Lkwv;

    new-instance v2, Llsq;

    invoke-direct {v2, p0}, Llsq;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)V

    invoke-virtual {v1, v0, v2}, Lkwv;->a(Lkur;Lkxa;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 699
    :catch_0
    move-exception v0

    .line 700
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static synthetic d(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->H:Ljava/util/List;

    return-object v0
.end method

.method private d(Lkus;)V
    .locals 3

    .prologue
    .line 707
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->B:Lltm;

    iget v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->D:I

    invoke-virtual {v0, v1}, Lltm;->a(I)V

    .line 709
    const-string v0, "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR4nGP6zwAAAgcBApocMXEAAAAASUVORK5CYII="

    .line 713
    new-instance v0, Lkwq;

    invoke-direct {v0}, Lkwq;-><init>()V

    .line 714
    invoke-virtual {p1}, Lkus;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lkwq;->a(I)V

    .line 715
    const-string v1, "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR4nGP6zwAAAgcBApocMXEAAAAASUVORK5CYII="

    invoke-virtual {v0, v1}, Lkwq;->a(Ljava/lang/String;)V

    .line 716
    sget-object v1, Lknw;->PNG:Lknw;

    invoke-virtual {v0, v1}, Lkwq;->a(Lknw;)V

    .line 719
    :try_start_0
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->J:Lkwv;

    new-instance v2, Llsr;

    invoke-direct {v2, p0}, Llsr;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)V

    invoke-virtual {v1, v0, v2}, Lkwv;->a(Lkwq;Lkxa;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    :goto_0
    return-void

    .line 757
    :catch_0
    move-exception v0

    .line 758
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private d()Z
    .locals 3

    .prologue
    .line 169
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x0

    .line 176
    :goto_0
    return v0

    .line 171
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->c()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->M:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    goto :goto_0

    .line 176
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static synthetic e(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Lltm;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->B:Lltm;

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 194
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->c()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->M:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 199
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 200
    new-instance v3, Ljava/io/File;

    aget-object v4, v2, v0

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 205
    :cond_1
    return-void
.end method

.method private e(Lkus;)V
    .locals 4

    .prologue
    const v3, 0x7f090362

    .line 765
    if-nez p1, :cond_0

    .line 783
    :goto_0
    return-void

    .line 766
    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const v1, 0xd6c0

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 779
    :catch_0
    move-exception v0

    .line 780
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 781
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 768
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lkus;->a()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_3

    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 769
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->b(Lkus;)Ljava/io/File;

    move-result-object v0

    .line 770
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 771
    invoke-static {p0, v0}, Lmhj;->a(Lgrs;Ljava/io/File;)V

    goto :goto_0

    .line 773
    :cond_2
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->f(Lkus;)V

    goto :goto_0

    .line 777
    :cond_3
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090362

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static synthetic f(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Llyh;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->C:Llyh;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 208
    const-string v0, "[\n  {\n    \"documentCode\": \"001\",\n    \"documentDescription\": \"AVISO DE SINISTRO RESIDENCIAL (FORMUL\u00c1RIO ANEXO)\",\n    \"statusDocument\": \"E\",\n    \"statusDocumentDescription\": \"Pendente\",\n    \"dateStatus\": \"27/04/2017\",\n    \"refusalCode\": \"\",\n    \"refusalDescription\": \"\"\n  },\n  {\n    \"documentCode\": \"002\",\n    \"documentDescription\": \"BOLETIM DE OCORR\u00caNCIA POLICIAL\",\n    \"statusDocument\": \"E\",\n    \"statusDocumentDescription\": \"Pendente\",\n    \"dateStatus\": \"27/04/2017\",\n    \"refusalCode\": \"\",\n    \"refusalDescription\": \"\"\n  },\n  {\n    \"documentCode\": \"007\",\n    \"documentDescription\": \"NO MINIMO 2 (DOIS) OR\u00c7AMENTOS  DISCRIMINATIVOS DE MATERIAL E M\u00c3O - DE - OBRA PARA REPAROS DOS BENS SINISTRADOS, SENDO QUE DEVER\u00c3O SER EM PAPEL TIMBRADO DA EMPRESA FORNECEDORA.\",\n    \"statusDocument\": \"E\",\n    \"statusDocumentDescription\": \"Pendente\",\n    \"dateStatus\": \"27/04/2017\",\n    \"refusalCode\": \"\",\n    \"refusalDescription\": \"\"\n  },\n  {\n    \"documentCode\": \"056\",\n    \"documentDescription\": \"AUTORIZA\u00c7\u00c3O PARA PAGAMENTO ATRAVES DE CR\u00c9DITO EM CONTA CORRENTE( SEGUE FORMUL\u00c1RIO ANEXO)\",\n    \"statusDocument\": \"E\",\n    \"statusDocumentDescription\": \"Pendente\",\n    \"dateStatus\": \"27/04/2017\",\n    \"refusalCode\": \"\",\n    \"refusalDescription\": \"\"\n  },\n  {\n    \"documentCode\": \"046\",\n    \"documentDescription\": \"DECLARA\u00c7\u00c3O DA INEXIST\u00caNCIA DE OUTROS SEGUROS\",\n    \"statusDocument\": \"E\",\n    \"statusDocumentDescription\": \"Pendente\",\n    \"dateStatus\": \"27/04/2017\",\n    \"refusalCode\": \"\",\n    \"refusalDescription\": \"\"\n  },\n  {\n    \"documentCode\": \"054\",\n    \"documentDescription\": \"COMPROVANTE DE ENDERE\u00c7O DA RESIDENCIA SEGURADA\",\n    \"statusDocument\": \"E\",\n    \"statusDocumentDescription\": \"Pendente\",\n    \"dateStatus\": \"27/04/2017\",\n    \"refusalCode\": \"\",\n    \"refusalDescription\": \"\"\n  },\n  {\n    \"documentCode\": \"055\",\n    \"documentDescription\": \"CPF E RG DO SEGURADO\",\n    \"statusDocument\": \"E\",\n    \"statusDocumentDescription\": \"Pendente\",\n    \"dateStatus\": \"27/04/2017\",\n    \"refusalCode\": \"\",\n    \"refusalDescription\": \"\"\n  },\n  {\n    \"documentCode\": \"025\",\n    \"documentDescription\": \"COMPROVANTES DE PRE-EXISTENCIA ORIGINAIS (NOTAS FISCAIS ORIGINAIS, EM NOME DO SEGURADO OU SEUS DEPENDENTES QUE COMPROVEM A PREEXIST\u00caNCIA DOS BENS)\",\n    \"statusDocument\": \"E\",\n    \"statusDocumentDescription\": \"Pendente\",\n    \"dateStatus\": \"27/04/2017\",\n    \"refusalCode\": \"\",\n    \"refusalDescription\": \"\"\n  }\n]"

    .line 282
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v1

    const-class v2, [Lkuw;

    invoke-virtual {v1, v0, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkuw;

    check-cast v0, [Lkuw;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 283
    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->a(Ljava/util/List;)V

    .line 284
    return-void
.end method

.method private f(Lkus;)V
    .locals 3

    .prologue
    .line 786
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->f:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 787
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->J:Lkwv;

    invoke-virtual {p1}, Lkus;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Llss;

    invoke-direct {v2, p0, p1}, Llss;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;Lkus;)V

    invoke-virtual {v0, v1, v2}, Lkwv;->a(Ljava/lang/String;Lkxa;)V

    .line 824
    return-void
.end method

.method public static synthetic g(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->f:Lbr/com/zup/multistatelayout/MultiStateLayout;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 288
    invoke-static {}, Lmhg;->a()Lmhg;

    move-result-object v0

    const-string v1, "audio-base64-key"

    invoke-virtual {v0, v1}, Lmhg;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    invoke-static {}, Lmhg;->a()Lmhg;

    move-result-object v0

    const-string v1, "audio-base64-key"

    invoke-virtual {v0, v1}, Lmhg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    new-instance v1, Lknv;

    invoke-direct {v1}, Lknv;-><init>()V

    .line 292
    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->F:Lkve;

    invoke-virtual {v2}, Lkve;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lknv;->e(Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lmzr;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lknv;->f(Ljava/lang/String;)V

    .line 294
    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->G:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lknv;->g(Ljava/lang/String;)V

    .line 295
    const-string v2, "Audio"

    invoke-virtual {v1, v2}, Lknv;->d(Ljava/lang/String;)V

    .line 296
    sget-object v2, Lknw;->AUDIO:Lknw;

    invoke-virtual {v2}, Lknw;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lknv;->c(Ljava/lang/String;)V

    .line 297
    sget-object v2, Lknw;->AUDIO:Lknw;

    invoke-virtual {v1, v2}, Lknv;->b(Lknw;)V

    .line 298
    invoke-virtual {v1, v0}, Lknv;->b(Ljava/lang/String;)V

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->J:Lkwv;

    new-instance v2, Llsi;

    invoke-direct {v2, p0}, Llsi;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)V

    invoke-virtual {v0, v1, v2}, Lkwv;->a(Lknv;Lkxa;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 314
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 317
    :cond_0
    const-string v0, "Audio"

    const-string v1, "NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 320
    :cond_1
    const-string v0, "Audio"

    const-string v1, "NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private h()V
    .locals 6

    .prologue
    .line 326
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->f:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 328
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 329
    const-string v1, "year"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->F:Lkve;

    invoke-virtual {v2}, Lkve;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v1, "branch"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->F:Lkve;

    invoke-virtual {v2}, Lkve;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string v1, "lossNumber"

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v2

    iget-object v3, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->F:Lkve;

    invoke-virtual {v3}, Lkve;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v1, "sequence"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->F:Lkve;

    invoke-virtual {v2}, Lkve;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-static {v0}, Lgnp;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lkwr;->LIST_DOCUMENTS:Lkwr;

    invoke-virtual {v2}, Lkwr;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 336
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v2, Lim;->GET:Lim;

    const/4 v3, 0x0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 338
    new-instance v1, Lgnv;

    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->p()Lgkw;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 340
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 343
    :try_start_0
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 347
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->f:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->ERROR:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 348
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->f:Lbr/com/zup/multistatelayout/MultiStateLayout;

    const v1, 0x7f10089f

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090362

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 386
    invoke-static {}, Llyf;->a()Llyf;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->A:Llyf;

    .line 387
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->A:Llyf;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog-fragment"

    invoke-virtual {v0, v1, v2}, Llyf;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method private j()V
    .locals 5

    .prologue
    const v4, 0x7f0907c2

    const/4 v0, 0x0

    .line 391
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 392
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 393
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 394
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020664

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 396
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 397
    const v2, 0x7f04039b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 398
    const v2, 0x7f100071

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 399
    invoke-virtual {p0, v4}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 403
    const v0, 0x7f10010f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->f:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 404
    const v0, 0x7f100425

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->g:Landroid/support/v7/widget/RecyclerView;

    .line 405
    const v0, 0x7f100427

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->w:Landroid/widget/Button;

    .line 406
    const v0, 0x7f100426

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->x:Landroid/widget/Button;

    .line 407
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->g:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 408
    const v0, 0x7f100421

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->y:Landroid/widget/FrameLayout;

    .line 409
    const v0, 0x7f100424

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->z:Landroid/widget/TextView;

    .line 410
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->z:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->w:Landroid/widget/Button;

    new-instance v1, Llsl;

    invoke-direct {v1, p0}, Llsl;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->x:Landroid/widget/Button;

    new-instance v1, Llsm;

    invoke-direct {v1, p0}, Llsm;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->y:Landroid/widget/FrameLayout;

    new-instance v1, Llsn;

    invoke-direct {v1, p0}, Llsn;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    return-void
.end method

.method private n()Z
    .locals 1

    .prologue
    .line 878
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->L:Z

    if-nez v0, :cond_0

    .line 879
    const-string v0, "Por favor, informe os dados banc\u00e1rios"

    invoke-static {p0, v0}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 880
    const/4 v0, 0x0

    .line 883
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private o()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v0, 0x1f4

    .line 923
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->N:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 924
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->N:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 935
    :goto_0
    return-object v0

    .line 927
    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    const/16 v1, 0x257

    if-gt v0, v1, :cond_2

    .line 928
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->N:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 929
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->N:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 930
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 935
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p()Lgkw;
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
    .line 939
    new-instance v0, Llsj;

    invoke-direct {v0, p0}, Llsj;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)V

    return-object v0
.end method

.method private q()Lgkw;
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
    .line 984
    new-instance v0, Llsk;

    invoke-direct {v0, p0}, Llsk;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 853
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 855
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 856
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->G:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 857
    const-string v1, "coverage-name"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->G:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 859
    :cond_0
    const-string v1, "phone-assistance"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->O:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 860
    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->startActivity(Landroid/content/Intent;)V

    .line 861
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->finish()V

    .line 863
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 895
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 896
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->o()Ljava/lang/String;

    move-result-object v0

    .line 898
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 900
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090450

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 919
    :cond_0
    :goto_0
    return-void

    .line 906
    :cond_1
    new-instance v1, Lkuw;

    invoke-direct {v1}, Lkuw;-><init>()V

    .line 907
    invoke-virtual {v1, p1}, Lkuw;->a(Ljava/lang/String;)V

    .line 908
    invoke-virtual {v1, p1}, Lkuw;->b(Ljava/lang/String;)V

    .line 910
    invoke-virtual {v1, v0}, Lkuw;->c(Ljava/lang/String;)V

    .line 912
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->B:Lltm;

    invoke-virtual {v0, v1}, Lltm;->a(Lkuw;)V

    .line 913
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->H:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 916
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->H:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->D:I

    .line 917
    const/16 v1, 0x1642

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public a(Lkxb;)V
    .locals 7
    .annotation runtime Lnfq;
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 534
    iget-boolean v0, p1, Lkxb;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmge;->INSTANCE:Lmge;

    invoke-virtual {v0}, Lmge;->getBankData()Lkum;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 538
    :try_start_0
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

    .line 539
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->z:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 540
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->z:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0904dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lmge;->INSTANCE:Lmge;

    invoke-virtual {v5}, Lmge;->getBankData()Lkum;

    move-result-object v5

    invoke-virtual {v5}, Lkum;->g()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    sget-object v4, Lmge;->INSTANCE:Lmge;

    invoke-virtual {v4}, Lmge;->getBankData()Lkum;

    move-result-object v4

    invoke-virtual {v4}, Lkum;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_0
    iput-boolean v6, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->L:Z

    .line 548
    :cond_0
    return-void

    .line 541
    :catch_0
    move-exception v0

    .line 542
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 543
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->z:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lkxf;)V
    .locals 5
    .annotation runtime Lnfq;
    .end annotation

    .prologue
    .line 441
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->B:Lltm;

    iget v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->D:I

    invoke-virtual {v0, v1}, Lltm;->a(I)V

    .line 443
    iget-object v0, p1, Lkxf;->a:[B

    if-eqz v0, :cond_0

    iget-object v0, p1, Lkxf;->b:[B

    if-eqz v0, :cond_0

    .line 444
    :cond_0
    iget-object v0, p1, Lkxf;->a:[B

    invoke-static {v0}, Lmhj;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 446
    iget-object v0, p1, Lkxf;->b:[B

    invoke-static {v0}, Lmhj;->a([B)Ljava/lang/String;

    move-result-object v2

    .line 448
    new-instance v3, Lknv;

    invoke-direct {v3}, Lknv;-><init>()V

    .line 449
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->F:Lkve;

    invoke-virtual {v0}, Lkve;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lknv;->e(Ljava/lang/String;)V

    .line 450
    invoke-static {}, Lmzr;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lknv;->f(Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->G:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lknv;->g(Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->H:Ljava/util/List;

    iget v4, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->D:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkuw;

    invoke-virtual {v0}, Lkuw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lknv;->d(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->H:Ljava/util/List;

    iget v4, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->D:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkuw;

    invoke-virtual {v0}, Lkuw;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lknv;->c(Ljava/lang/String;)V

    .line 455
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 456
    iget-object v0, p1, Lkxf;->c:Lknw;

    invoke-virtual {v3, v0}, Lknv;->b(Lknw;)V

    .line 457
    invoke-virtual {v3, v1}, Lknv;->b(Ljava/lang/String;)V

    .line 460
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 461
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 462
    iget-object v0, p1, Lkxf;->d:Lknw;

    invoke-virtual {v3, v0}, Lknv;->b(Lknw;)V

    .line 463
    invoke-virtual {v3, v2}, Lknv;->b(Ljava/lang/String;)V

    .line 471
    :cond_2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->J:Lkwv;

    new-instance v1, Llso;

    invoke-direct {v1, p0}, Llso;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)V

    invoke-virtual {v0, v3, v1}, Lkwv;->a(Lknv;Lkxa;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :goto_1
    return-void

    .line 465
    :cond_3
    iget-object v0, p1, Lkxf;->d:Lknw;

    invoke-virtual {v3, v0}, Lknv;->a(Lknw;)V

    .line 466
    invoke-virtual {v3, v2}, Lknv;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 527
    :catch_0
    move-exception v0

    .line 528
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Lkus;)Z
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p1}, Lkus;->a()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 185
    :goto_0
    return v0

    .line 182
    :cond_0
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->b(Lkus;)Ljava/io/File;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0

    .line 185
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 888
    invoke-static {}, Llxn;->a()Llxn;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->K:Llxn;

    .line 889
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->K:Llxn;

    invoke-virtual {v0, p0}, Llxn;->a(Llxq;)V

    .line 890
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->K:Llxn;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "add-document"

    invoke-virtual {v0, v1, v2}, Llxn;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 891
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 130
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 131
    const v0, 0x7f0400a9

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->setContentView(I)V

    .line 132
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->k()V

    .line 133
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->j()V

    .line 134
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->i()V

    .line 135
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->e()V

    .line 136
    new-instance v0, Lkwv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkwv;-><init>(Lbr/com/zup/multistatelayout/MultiStateLayout;)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->J:Lkwv;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->H:Ljava/util/List;

    .line 138
    new-instance v0, Lkwo;

    invoke-direct {v0}, Lkwo;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->E:Lkwo;

    .line 140
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sinister-code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "sinister-code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkve;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkve;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->F:Lkve;

    .line 142
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->E:Lkwo;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->F:Lkve;

    invoke-virtual {v1}, Lkve;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkwo;->a(Ljava/lang/String;)V

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "coverage-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "coverage-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->G:Ljava/lang/String;

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "certificate-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "certificate-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->I:Ljava/lang/String;

    .line 153
    :cond_2
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "phone-assistance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "phone-assistance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->O:Ljava/lang/String;

    .line 157
    :cond_3
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->g()V

    .line 158
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->h()V

    .line 160
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 867
    invoke-super {p0}, Lgrs;->onDestroy()V

    .line 868
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->e()V

    .line 869
    sget-object v0, Lmge;->INSTANCE:Lmge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmge;->setBankData(Lkum;)V

    .line 870
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 594
    invoke-super {p0}, Lgrs;->onPause()V

    .line 595
    invoke-static {}, Lkws;->a()Lkws;

    move-result-object v0

    invoke-virtual {v0}, Lkws;->b()Lnfg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnfg;->c(Ljava/lang/Object;)V

    .line 596
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 829
    invoke-super {p0, p1, p2, p3}, Lgrs;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 830
    packed-switch p1, :pswitch_data_0

    .line 839
    :goto_0
    return-void

    .line 832
    :pswitch_0
    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->H:Ljava/util/List;

    iget v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->D:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkus;

    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->e(Lkus;)V

    goto :goto_0

    .line 835
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090462

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 830
    nop

    :pswitch_data_0
    .packed-switch 0xd6c0
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 588
    invoke-super {p0}, Lgrs;->onResume()V

    .line 589
    invoke-static {}, Lkws;->a()Lkws;

    move-result-object v0

    invoke-virtual {v0}, Lkws;->b()Lnfg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnfg;->b(Ljava/lang/Object;)V

    .line 590
    return-void
.end method
