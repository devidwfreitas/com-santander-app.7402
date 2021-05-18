.class public Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;
.super Lgrs;
.source "SourceFile"


# static fields
.field public static final A:Ljava/lang/String; = "phone-assistance"

.field public static final a:Ljava/lang/String; = "coverage-step-fragment"

.field public static final b:Ljava/lang/String; = "date-step-fragment"

.field public static final c:Ljava/lang/String; = "audio-step-fragment"

.field public static final d:Ljava/lang/String; = "slider-value-step-fragment"

.field public static final e:Ljava/lang/String; = "equipment-list-step-fragment"

.field public static final f:Ljava/lang/String; = "date-period-step-fragment"

.field public static final g:Ljava/lang/String; = "summary-step-fragment"

.field public static final w:Ljava/lang/String; = "email_phone_step_fragment"

.field public static final x:Ljava/lang/String; = "id_family"

.field public static final y:Ljava/lang/String; = "insurance-data-key"

.field public static final z:Ljava/lang/String; = "higher_coverage_key"


# instance fields
.field public B:Ljava/lang/String;

.field public C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkuy;",
            ">;"
        }
    .end annotation
.end field

.field public D:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field public E:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

.field private F:Lmgs;

.field private G:Z

.field private H:Z

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;

.field private L:Landroid/widget/TextView;

.field private M:I

.field private N:I

.field private O:Z

.field private P:Z

.field private Q:I

.field private R:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkuo;",
            ">;"
        }
    .end annotation
.end field

.field private S:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvo;",
            ">;"
        }
    .end annotation
.end field

.field private T:Lkuy;

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 104
    new-instance v0, Lmgs;

    invoke-direct {v0}, Lmgs;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->F:Lmgs;

    .line 106
    iput-boolean v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->G:Z

    .line 108
    iput-boolean v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->H:Z

    .line 129
    iput v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->M:I

    .line 130
    iput v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->N:I

    .line 131
    iput-boolean v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->O:Z

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->P:Z

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->S:Ljava/util/List;

    .line 150
    iput-boolean v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->U:Z

    .line 160
    iput-boolean v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->V:Z

    .line 630
    iput-boolean v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->W:Z

    .line 743
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->X:F

    return-void
.end method

.method private A()V
    .locals 4

    .prologue
    .line 866
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->S:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 867
    const-string v0, ""

    .line 868
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->S:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvo;

    .line 869
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lkvo;->b()Lkuq;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 870
    goto :goto_0

    .line 873
    :cond_0
    const-string v0, "PASSOS"

    const-string v1, "NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_1
    return-void
.end method

.method private a(JLkva;)Lgkw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkva;",
            ")",
            "Lgkw",
            "<",
            "Lis;",
            ">;"
        }
    .end annotation

    .prologue
    .line 893
    new-instance v0, Llrm;

    invoke-direct {v0, p0, p1, p2, p3}, Llrm;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;JLkva;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->R:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->R:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;Lkuy;)Lkuy;
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->T:Lkuy;

    return-object p1
.end method

.method private a(ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lkuo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->D:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 302
    new-instance v1, Lkva;

    invoke-direct {v1}, Lkva;-><init>()V

    .line 303
    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lkva;->b(J)V

    .line 304
    invoke-virtual {v1, p2}, Lkva;->b(Ljava/util/List;)V

    .line 306
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 308
    :try_start_0
    const-string v0, "X-Application-Key"

    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v2

    invoke-virtual {v2}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v2

    const-string v4, "appKey"

    invoke-virtual {v2, v4}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    const-string v0, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 316
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, v1}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 321
    :goto_1
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v1, Lkwr;->SINISTER_STEP_OPEN:Lkwr;

    invoke-virtual {v1}, Lkwr;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lim;->POST:Lim;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 323
    new-instance v1, Lgnv;

    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->z()Lgkw;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 325
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 328
    :try_start_2
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 338
    :cond_0
    :goto_2
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 317
    :catch_1
    move-exception v1

    .line 318
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v4, v0

    goto :goto_1

    .line 329
    :catch_2
    move-exception v0

    .line 330
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 332
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->D:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->ERROR:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 333
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->D:Lbr/com/zup/multistatelayout/MultiStateLayout;

    const v1, 0x7f10089f

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090362

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->r()Z

    goto :goto_2
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;I)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->b(I)V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;Lis;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lis;)V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;Lkvb;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->b(Lkvb;)V

    return-void
.end method

.method private a(Lis;)V
    .locals 2

    .prologue
    .line 879
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->G:Z

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->D:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 881
    invoke-static {p0, p1}, Lmhj;->a(Lgrs;Lis;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 890
    :goto_0
    return-void

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->D:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->ERROR:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 885
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->D:Lbr/com/zup/multistatelayout/MultiStateLayout;

    const v1, 0x7f10089f

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p0, p1}, Lmhj;->a(Lgrs;Lis;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 886
    :catch_0
    move-exception v0

    .line 887
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 271
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->D:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 274
    const-string v1, "branchOffice"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v1, "branch"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v1, "policy"

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v2

    invoke-virtual {v2, p3}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v1, "certificate"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v1, "endorsement"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-static {v0}, Lgnp;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lkwr;->CAUSES_LIST:Lkwr;

    invoke-virtual {v3}, Lkwr;->getEndpoint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lim;->GET:Lim;

    const/4 v3, 0x0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 283
    new-instance v1, Lgnv;

    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->y()Lgkw;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 285
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 288
    :try_start_0
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 292
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->D:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->ERROR:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 293
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->D:Lbr/com/zup/multistatelayout/MultiStateLayout;

    const v1, 0x7f10089f

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090362

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Lkva;Lkvb;)V
    .locals 2

    .prologue
    .line 692
    sget-object v0, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {p1}, Lkva;->g()Lkuq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmhv;->removeRequest(Lkuq;)Z

    .line 693
    sget-object v0, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {p1}, Lkva;->g()Lkuq;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmhv;->addRequest(Lkuq;Lkva;)V

    .line 694
    invoke-virtual {p2}, Lkvb;->o()Lkuq;

    move-result-object v0

    sget-object v1, Lkuq;->SUMMARY:Lkuq;

    if-eq v0, v1, :cond_0

    .line 695
    sget-object v0, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {p2}, Lkvb;->o()Lkuq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmhv;->removeResponse(Lkuq;)Z

    .line 696
    sget-object v0, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {p2}, Lkvb;->o()Lkuq;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lmhv;->addResponse(Lkuq;Lkvb;)V

    .line 698
    :cond_0
    return-void
.end method

.method private a(Lkvb;Z)V
    .locals 2

    .prologue
    .line 392
    if-eqz p2, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->n()V

    .line 396
    :cond_0
    new-instance v0, Lkvo;

    invoke-direct {v0}, Lkvo;-><init>()V

    .line 397
    invoke-virtual {p1}, Lkvb;->o()Lkuq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkvo;->a(Lkuq;)V

    .line 399
    iget v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->N:I

    invoke-virtual {v0, v1}, Lkvo;->a(I)V

    .line 400
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->S:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;Z)Z
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->V:Z

    return p1
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;I)I
    .locals 0

    .prologue
    .line 87
    iput p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->N:I

    return p1
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->S:Ljava/util/List;

    return-object v0
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 349
    iput p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->M:I

    .line 350
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->K:Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;

    invoke-virtual {v0, p1}, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->setSteps(I)V

    .line 352
    return-void
.end method

.method private b(Lkvb;)V
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lkvb;Z)V

    .line 388
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;Z)Z
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->U:Z

    return p1
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;)I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->Q:I

    return v0
.end method

.method private c(Lkvb;)V
    .locals 1

    .prologue
    .line 701
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->d(Lkvb;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lkvb;->c()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lkvb;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 702
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Ljava/lang/Integer;)V

    .line 706
    :goto_0
    return-void

    .line 704
    :cond_1
    invoke-virtual {p1}, Lkvb;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;Z)Z
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->G:Z

    return p1
.end method

.method public static synthetic d(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;)I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->N:I

    return v0
.end method

.method private d(Lkvb;)Z
    .locals 2

    .prologue
    .line 709
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lkvb;->o()Lkuq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lkvb;->o()Lkuq;

    move-result-object v0

    sget-object v1, Lkuq;->SUMMARY:Lkuq;

    invoke-virtual {v0, v1}, Lkuq;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v()V
    .locals 5

    .prologue
    const v4, 0x7f0908fd

    const/4 v0, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 189
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 190
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 191
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020664

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 193
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 194
    const v2, 0x7f04039b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 195
    const v2, 0x7f100071

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 197
    const v0, 0x7f0908fd

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private w()V
    .locals 1

    .prologue
    .line 204
    const v0, 0x7f100378

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->E:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    .line 205
    const v0, 0x7f10010f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->D:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 206
    const v0, 0x7f100fa0

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->L:Landroid/widget/TextView;

    .line 207
    const v0, 0x7f100f9f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->K:Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;

    .line 208
    return-void
.end method

.method private x()V
    .locals 2

    .prologue
    .line 212
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "voices/audio_sinister.m4a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 228
    :cond_0
    return-void
.end method

.method private y()Lgkw;
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
    .line 750
    new-instance v0, Llrj;

    invoke-direct {v0, p0}, Llrj;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;)V

    return-object v0
.end method

.method private z()Lgkw;
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
    .line 806
    new-instance v0, Llrk;

    invoke-direct {v0, p0}, Llrk;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;)V

    return-object v0
.end method


# virtual methods
.method public a(Lkuq;)Lkvo;
    .locals 3

    .prologue
    .line 720
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->S:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvo;

    .line 721
    invoke-virtual {v0}, Lkvo;->b()Lkuq;

    move-result-object v2

    invoke-virtual {v2, p1}, Lkuq;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 726
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Lmgs;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->F:Lmgs;

    return-object v0
.end method

.method public a(F)V
    .locals 0

    .prologue
    .line 746
    iput p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->X:F

    .line 747
    return-void
.end method

.method public a(I)V
    .locals 5

    .prologue
    .line 355
    iput p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->N:I

    .line 356
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->K:Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;

    invoke-virtual {v0, p1}, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->setStep(I)V

    .line 357
    if-gez p1, :cond_0

    .line 358
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->L:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->L:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09091c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(J)V
    .locals 7

    .prologue
    .line 730
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 741
    :goto_0
    return-void

    .line 732
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 733
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    int-to-long v4, v1

    cmp-long v0, v4, p1

    if-gez v0, :cond_2

    .line 734
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->S:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 735
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->S:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvo;

    .line 736
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 739
    :cond_2
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->S:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 740
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->S:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 510
    if-eqz p1, :cond_0

    .line 511
    iget v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->N:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->b(I)V

    .line 513
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->I:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkvo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    iput-object p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->S:Ljava/util/List;

    .line 148
    return-void
.end method

.method public a(Lkuy;)V
    .locals 0

    .prologue
    .line 912
    iput-object p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->T:Lkuy;

    .line 913
    return-void
.end method

.method public a(Lkva;)V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 597
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->D:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 598
    iget v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->N:I

    int-to-long v6, v0

    .line 599
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 601
    :try_start_0
    const-string v0, "X-Application-Key"

    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v1

    invoke-virtual {v1}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "appKey"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 602
    const-string v0, "userId"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 603
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 611
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    new-instance v1, Lejm;

    invoke-direct {v1}, Lejm;-><init>()V

    invoke-virtual {v1, p1}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 615
    :goto_1
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v1, Lkwr;->SINISTER_STEP_CONTINUE:Lkwr;

    invoke-virtual {v1}, Lkwr;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lim;->POST:Lim;

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 617
    new-instance v1, Lgnv;

    invoke-direct {p0, v6, v7, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(JLkva;)Lgkw;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 619
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 622
    :try_start_2
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 628
    :cond_0
    :goto_2
    return-void

    .line 605
    :catch_0
    move-exception v0

    .line 606
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 612
    :catch_1
    move-exception v1

    .line 613
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v4, v0

    goto :goto_1

    .line 623
    :catch_2
    move-exception v0

    .line 624
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public a(Lkvb;)V
    .locals 2

    .prologue
    .line 404
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lkvb;ZZ)V

    .line 405
    return-void
.end method

.method public a(Lkvb;Lkva;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 633
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->F:Lmgs;

    invoke-virtual {p2}, Lkva;->g()Lkuq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmgs;->c(Lkuq;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->F:Lmgs;

    invoke-virtual {p2}, Lkva;->g()Lkuq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmgs;->a(Lkuq;)V

    .line 635
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->F:Lmgs;

    invoke-virtual {p2}, Lkva;->g()Lkuq;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lmgs;->a(Lkuq;Lkva;)V

    .line 637
    :cond_0
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->U:Z

    if-eqz v0, :cond_5

    .line 639
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->S:Ljava/util/List;

    iget v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->N:I

    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->S:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->S:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvo;

    .line 640
    invoke-virtual {v0}, Lkvo;->b()Lkuq;

    move-result-object v0

    invoke-virtual {p1}, Lkvb;->o()Lkuq;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 642
    invoke-direct {p0, p2, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lkva;Lkvb;)V

    .line 643
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(I)V

    .line 644
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    .line 689
    :goto_1
    return-void

    .line 639
    :cond_1
    iget v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->N:I

    goto :goto_0

    .line 647
    :cond_2
    invoke-direct {p0, p2, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lkva;Lkvb;)V

    .line 652
    iget v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->N:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(J)V

    .line 654
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->i()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->b(I)V

    .line 655
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->b(Lkvb;)V

    .line 658
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->d(Lkvb;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 659
    sget-object v0, Lmhv;->INSTANCE:Lmhv;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->S:Ljava/util/List;

    invoke-virtual {v0, v1}, Lmhv;->setFlowCache(Ljava/util/List;)V

    .line 661
    :cond_3
    iput-boolean v3, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->V:Z

    .line 663
    sget-object v0, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {p2}, Lkva;->g()Lkuq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmhv;->getResponse(Lkuq;)Lkvb;

    move-result-object v0

    .line 664
    if-eqz v0, :cond_4

    .line 665
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->O:Z

    .line 667
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->r()Z

    .line 668
    invoke-virtual {p0, v0, v3, v3}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lkvb;ZZ)V

    .line 671
    :cond_4
    invoke-virtual {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lkvb;)V

    goto :goto_1

    .line 675
    :cond_5
    invoke-direct {p0, p2, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lkva;Lkvb;)V

    .line 677
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->F:Lmgs;

    invoke-virtual {p2}, Lkva;->g()Lkuq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmgs;->c(Lkuq;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 678
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->F:Lmgs;

    invoke-virtual {p2}, Lkva;->g()Lkuq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmgs;->a(Lkuq;)V

    .line 679
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->F:Lmgs;

    invoke-virtual {p2}, Lkva;->g()Lkuq;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lmgs;->a(Lkuq;Lkva;)V

    .line 681
    :cond_6
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->b(Lkvb;)V

    .line 682
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->c(Lkvb;)V

    .line 683
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->d(Lkvb;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 684
    sget-object v0, Lmhv;->INSTANCE:Lmhv;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->S:Ljava/util/List;

    invoke-virtual {v0, v1}, Lmhv;->setFlowCache(Ljava/util/List;)V

    .line 686
    :cond_7
    invoke-virtual {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lkvb;)V

    .line 687
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->A()V

    goto :goto_1
.end method

.method public a(Lkvb;ZZ)V
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lkvb;ZZZ)V

    .line 409
    return-void
.end method

.method public a(Lkvb;ZZZ)V
    .locals 8

    .prologue
    const v7, 0x7f050026

    const v6, 0x7f050025

    const v5, 0x7f050024

    const v4, 0x7f050023

    .line 413
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 414
    const-string v0, ""

    .line 416
    sget-object v1, Llrn;->a:[I

    invoke-virtual {p1}, Lkvb;->o()Lkuq;

    move-result-object v3

    invoke-virtual {v3}, Lkuq;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 481
    invoke-static {}, Llwf;->a()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 485
    :goto_0
    if-eqz p2, :cond_2

    .line 486
    invoke-virtual {v2, v5, v6, v4, v7}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 492
    :cond_0
    :goto_1
    const v3, 0x7f10020e

    invoke-virtual {v2, v3, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 497
    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 498
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 499
    :goto_2
    return-void

    .line 418
    :pswitch_0
    invoke-static {p1}, Llzi;->a(Lkvb;)Llzi;

    move-result-object v1

    .line 419
    invoke-virtual {p1}, Lkvb;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lkvb;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 420
    invoke-virtual {p1}, Lkvb;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Ljava/lang/String;)V

    .line 425
    :goto_3
    const-string v0, "coverage-step-fragment"

    goto :goto_0

    .line 422
    :cond_1
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 428
    :pswitch_1
    invoke-static {p1}, Llzp;->a(Lkvb;)Llzp;

    move-result-object v1

    .line 429
    const-string v0, "date-step-fragment"

    goto :goto_0

    .line 433
    :pswitch_2
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->u()V

    .line 434
    invoke-static {p1}, Llyy;->a(Lkvb;)Llyy;

    move-result-object v1

    .line 435
    const-string v0, "audio-step-fragment"

    goto :goto_0

    .line 439
    :pswitch_3
    invoke-static {p1}, Lmad;->a(Lkvb;)Lmad;

    move-result-object v1

    .line 440
    const-string v0, "slider-value-step-fragment"

    goto :goto_0

    .line 447
    :pswitch_4
    invoke-static {p1}, Llzx;->a(Lkvb;)Llzx;

    move-result-object v1

    .line 448
    const-string v0, "equipment-list-step-fragment"

    goto :goto_0

    .line 452
    :pswitch_5
    invoke-static {p1}, Llzt;->a(Lkvb;)Llzt;

    move-result-object v1

    .line 453
    const-string v0, "email_phone_step_fragment"

    goto :goto_0

    .line 457
    :pswitch_6
    sget-object v0, Lmhv;->INSTANCE:Lmhv;

    sget-object v1, Lkuq;->DATE_PERIOD:Lkuq;

    invoke-virtual {v0, v1}, Lmhv;->removeRequest(Lkuq;)Z

    .line 458
    invoke-static {p1}, Lmaj;->a(Lkvb;)Lmaj;

    move-result-object v1

    .line 459
    const-string v0, "date-period-step-fragment"

    goto :goto_0

    .line 463
    :pswitch_7
    invoke-static {}, Lmaf;->b()Lmaf;

    move-result-object v1

    .line 464
    const-string v0, "summary-step-fragment"

    goto :goto_0

    .line 469
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 470
    const-string v1, "inputed_client_data_key"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    sget-object v3, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {v3}, Lmhv;->getAllRequest()Lkva;

    move-result-object v3

    invoke-virtual {v2, v3}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    const-string v1, "insurance_response_key"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    iget-object v3, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->C:Ljava/util/List;

    invoke-virtual {v2, v3}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    const-string v1, "insurance_family_key"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->J:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    const-string v1, "all_client_coverages_key"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    iget-object v3, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->R:Ljava/util/List;

    invoke-virtual {v2, v3}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    const-string v1, "phone-assistance"

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 476
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->finish()V

    goto/16 :goto_2

    .line 487
    :cond_2
    if-eqz p3, :cond_0

    .line 488
    invoke-virtual {v2, v4, v7, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    goto/16 :goto_1

    .line 416
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->H:Z

    .line 118
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkvo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->S:Ljava/util/List;

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->O:Z

    .line 158
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->U:Z

    .line 168
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->O:Z

    return v0
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->V:Z

    .line 177
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->U:Z

    return v0
.end method

.method public e(Z)V
    .locals 0

    .prologue
    .line 506
    iput-boolean p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->P:Z

    .line 507
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->V:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->I:Ljava/lang/String;

    return-object v0
.end method

.method public f(Z)V
    .locals 0

    .prologue
    .line 520
    iput-boolean p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->W:Z

    .line 521
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 591
    invoke-super {p0}, Lgrs;->finish()V

    .line 592
    sget-object v0, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {v0}, Lmhv;->clear()V

    .line 593
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->x()V

    .line 594
    return-void
.end method

.method public g()V
    .locals 6

    .prologue
    const/16 v5, 0xd

    const/4 v3, 0x6

    const/4 v2, 0x2

    .line 260
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->J:Ljava/lang/String;

    .line 261
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 264
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 266
    const-string v5, "0"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public h()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->M:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->N:I

    return v0
.end method

.method public j()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 367
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->K:Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->L:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 369
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 372
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->K:Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->L:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 374
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->K:Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    iget v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->N:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(I)V

    .line 380
    :cond_0
    return-void
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->K:Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->a()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 525
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->P:Z

    .line 526
    invoke-static {}, Lkws;->a()Lkws;

    move-result-object v1

    invoke-virtual {v1}, Lkws;->b()Lnfg;

    move-result-object v1

    new-instance v2, Lkxd;

    iget-boolean v3, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->P:Z

    invoke-direct {v2, v3}, Lkxd;-><init>(Z)V

    invoke-virtual {v1, v2}, Lnfg;->a(Ljava/lang/Object;)V

    .line 527
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-gt v0, v4, :cond_1

    .line 531
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 532
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 533
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090114

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 534
    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 535
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090476

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Llrh;

    invoke-direct {v2, p0}, Llrh;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 542
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090208

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Llrg;

    invoke-direct {v2, p0}, Llrg;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 548
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 550
    new-instance v1, Llri;

    invoke-direct {v1, p0, v0}, Llri;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 562
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 585
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->O:Z

    .line 587
    return-void

    .line 571
    :cond_1
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 574
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 576
    if-eqz v0, :cond_2

    const-string v1, "summary-step-fragment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 577
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(I)V

    .line 582
    :goto_1
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->D:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    goto :goto_0

    .line 579
    :cond_2
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->q()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 232
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 233
    const v0, 0x7f040086

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->setContentView(I)V

    .line 235
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 237
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->w()V

    .line 239
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->v()V

    .line 243
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->u()V

    .line 245
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "insurance-data-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "insurance-data-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->J:Ljava/lang/String;

    .line 250
    const/16 v0, 0x64

    iput v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->Q:I

    .line 252
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "higher_coverage_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->B:Ljava/lang/String;

    .line 254
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->g()V

    .line 256
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 850
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 853
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->U:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->S:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 854
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->S:Ljava/util/List;

    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->S:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->S:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 855
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->A()V

    .line 862
    :cond_0
    invoke-super {p0, p1, p2}, Lgrs;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 854
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->P:Z

    return v0
.end method

.method public q()V
    .locals 1

    .prologue
    .line 516
    iget v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->N:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(I)V

    .line 517
    return-void
.end method

.method public r()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 713
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    .line 715
    :goto_0
    return v0

    .line 714
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public s()V
    .locals 4

    .prologue
    .line 791
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 793
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 794
    new-instance v3, Lkuo;

    invoke-direct {v3}, Lkuo;-><init>()V

    .line 795
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->R:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkuo;

    invoke-virtual {v0}, Lkuo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lkuo;->i(Ljava/lang/String;)V

    .line 796
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->R:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkuo;

    invoke-virtual {v0}, Lkuo;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lkuo;->e(Ljava/lang/String;)V

    .line 798
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 801
    :cond_0
    iget v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->Q:I

    invoke-direct {p0, v0, v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(ILjava/util/List;)V

    .line 802
    return-void
.end method

.method public t()Lkuy;
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->T:Lkuy;

    return-object v0
.end method

.method public u()V
    .locals 2

    .prologue
    .line 921
    invoke-static {}, Lmhg;->a()Lmhg;

    move-result-object v0

    const-string v1, "audio-base64-key"

    invoke-virtual {v0, v1}, Lmhg;->c(Ljava/lang/String;)V

    .line 922
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->x()V

    .line 923
    return-void
.end method
