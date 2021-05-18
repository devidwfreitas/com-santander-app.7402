.class public Llzx;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Llyd;


# static fields
.field private static final b:Ljava/lang/String; = "response-key"


# instance fields
.field public a:Llxx;

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

.field private h:Lkvb;

.field private i:Lkva;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkux;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lltu;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Llzx;)Lltu;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Llzx;->k:Lltu;

    return-object v0
.end method

.method public static a(Lkvb;)Llzx;
    .locals 3

    .prologue
    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    const-string v1, "response-key"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v1, Llzx;

    invoke-direct {v1}, Llzx;-><init>()V

    .line 92
    invoke-virtual {v1, v0}, Llzx;->setArguments(Landroid/os/Bundle;)V

    .line 93
    return-object v1
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 262
    const v0, 0x7f100433

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Llzx;->c:Landroid/widget/FrameLayout;

    .line 263
    const v0, 0x7f1009a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Llzx;->d:Landroid/support/v7/widget/RecyclerView;

    .line 264
    const v0, 0x7f1004f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llzx;->e:Landroid/widget/TextView;

    .line 265
    const v0, 0x7f1002d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llzx;->f:Landroid/widget/Button;

    .line 266
    invoke-direct {p0}, Llzx;->g()V

    .line 267
    return-void
.end method

.method private a(Ljava/lang/Double;)V
    .locals 6

    .prologue
    .line 231
    iget-object v0, p0, Llzx;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    .line 232
    new-instance v0, Lkva;

    invoke-direct {v0}, Lkva;-><init>()V

    .line 233
    sget-object v1, Lkuz;->NEXT:Lkuz;

    invoke-virtual {v0, v1}, Lkva;->a(Lkuz;)V

    .line 234
    sget-object v1, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {v1}, Lmhv;->getCoverageId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 235
    sget-object v1, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {v1}, Lmhv;->getCoverageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkva;->b(Ljava/lang/Long;)V

    .line 237
    :cond_0
    iget-object v1, p0, Llzx;->h:Lkvb;

    invoke-virtual {v1}, Lkvb;->q()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkva;->a(Ljava/lang/Integer;)V

    .line 238
    iget-object v1, p0, Llzx;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Lkva;->a(Ljava/util/List;)V

    .line 239
    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkva;->a(Ljava/lang/String;)V

    .line 240
    sget-object v1, Lkuq;->EQUIPMENT_LIST:Lkuq;

    invoke-virtual {v0, v1}, Lkva;->a(Lkuq;)V

    .line 241
    iget-object v1, p0, Llzx;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lkva;)V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Llzx;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {p0}, Llzx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09043c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lkva;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 322
    iget-object v0, p0, Llzx;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    iget-object v0, v0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->D:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 324
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 326
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

    .line 327
    const-string v0, "userId"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 328
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 336
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    new-instance v1, Lejm;

    invoke-direct {v1}, Lejm;-><init>()V

    invoke-virtual {v1, p1}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 340
    :goto_1
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v1, Lkwr;->SINISTER_STEP_CONTINUE:Lkwr;

    invoke-virtual {v1}, Lkwr;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lim;->POST:Lim;

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 342
    new-instance v1, Lgnv;

    invoke-direct {p0, p1}, Llzx;->b(Lkva;)Lgkw;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 344
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 347
    :try_start_2
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 353
    :cond_0
    :goto_2
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 337
    :catch_1
    move-exception v1

    .line 338
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v4, v0

    goto :goto_1

    .line 348
    :catch_2
    move-exception v0

    .line 349
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method static synthetic a(Llzx;Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Llzx;->a(Ljava/lang/Double;)V

    return-void
.end method

.method static synthetic a(Llzx;Lkva;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Llzx;->a(Lkva;)V

    return-void
.end method

.method private b(Lkva;)Lgkw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkva;",
            ")",
            "Lgkw",
            "<",
            "Lis;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    new-instance v0, Lmac;

    invoke-direct {v0, p0, p1}, Lmac;-><init>(Llzx;Lkva;)V

    return-object v0
.end method

.method static synthetic b(Llzx;)Ljava/util/List;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Llzx;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Llzx;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Llzx;->e()V

    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 195
    sget-object v0, Llye;->ADD:Llye;

    invoke-static {v0}, Llxx;->a(Llye;)Llxx;

    move-result-object v0

    iput-object v0, p0, Llzx;->a:Llxx;

    .line 196
    iget-object v0, p0, Llzx;->a:Llxx;

    invoke-virtual {v0, p0}, Llxx;->a(Llyd;)V

    .line 197
    iget-object v0, p0, Llzx;->a:Llxx;

    iget-object v1, p0, Llzx;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "add-equipment"

    invoke-virtual {v0, v1, v2}, Llxx;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method static synthetic d(Llzx;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Llzx;->d()V

    return-void
.end method

.method static synthetic e(Llzx;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Llzx;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    return-object v0
.end method

.method private e()V
    .locals 6

    .prologue
    .line 207
    invoke-virtual {p0}, Llzx;->b()Ljava/lang/Double;

    move-result-object v1

    .line 209
    const-string v0, "Seguros_Sinistro_Acionar_EquipamentoDanificado_SomaValores_Acao"

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    if-eqz v1, :cond_0

    invoke-direct {p0}, Llzx;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    :try_start_0
    iget-object v0, p0, Llzx;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    iget-object v0, v0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->B:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 220
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Llzx;->b()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 221
    iget-object v1, p0, Llzx;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "O valor total precisa ser menor ou igual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lmhj;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 227
    :cond_0
    :goto_1
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    const/4 v0, 0x0

    goto :goto_0

    .line 222
    :cond_1
    invoke-virtual {p0}, Llzx;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-direct {p0, v1}, Llzx;->a(Ljava/lang/Double;)V

    goto :goto_1
.end method

.method private f()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 248
    iget-object v1, p0, Llzx;->k:Lltu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Llzx;->k:Lltu;

    invoke-virtual {v1}, Lltu;->getItemCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 249
    :cond_0
    iget-object v1, p0, Llzx;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {p0}, Llzx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090457

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 258
    :goto_0
    return v0

    .line 253
    :cond_1
    iget-object v1, p0, Llzx;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "R$ 0,00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    iget-object v1, p0, Llzx;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {p0}, Llzx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09046c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Llzx;->f:Landroid/widget/Button;

    new-instance v1, Llzz;

    invoke-direct {v1, p0}, Llzz;-><init>(Llzx;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v0, p0, Llzx;->c:Landroid/widget/FrameLayout;

    new-instance v1, Lmaa;

    invoke-direct {v1, p0}, Lmaa;-><init>(Llzx;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Llzx;->i:Lkva;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Llzx;->i:Lkva;

    invoke-virtual {v0}, Lkva;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Llzx;->j:Ljava/util/List;

    .line 121
    iget-object v0, p0, Llzx;->e:Landroid/widget/TextView;

    iget-object v1, p0, Llzx;->j:Ljava/util/List;

    invoke-virtual {p0, v1}, Llzx;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmhj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :goto_0
    iget-object v0, p0, Llzx;->j:Ljava/util/List;

    invoke-virtual {p0, v0}, Llzx;->a(Ljava/util/List;)V

    .line 128
    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llzx;->j:Ljava/util/List;

    .line 124
    iget-object v0, p0, Llzx;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Llzx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090bb2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 201
    sget-object v1, Llye;->EDIT:Llye;

    iget-object v0, p0, Llzx;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkux;

    invoke-static {v1, v0, p1}, Llxx;->a(Llye;Lkux;I)Llxx;

    move-result-object v0

    iput-object v0, p0, Llzx;->a:Llxx;

    .line 202
    iget-object v0, p0, Llzx;->a:Llxx;

    invoke-virtual {v0, p0}, Llxx;->a(Llyd;)V

    .line 203
    iget-object v0, p0, Llzx;->a:Llxx;

    iget-object v1, p0, Llzx;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "edit-equipment"

    invoke-virtual {v0, v1, v2}, Llxx;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkux;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Lltu;

    invoke-direct {v0, p1}, Lltu;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Llzx;->k:Lltu;

    .line 146
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Llzx;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 147
    iget-object v1, p0, Llzx;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 148
    iget-object v0, p0, Llzx;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Llzx;->k:Lltu;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 150
    iget-object v0, p0, Llzx;->k:Lltu;

    new-instance v1, Llzy;

    invoke-direct {v1, p0}, Llzy;-><init>(Llzx;)V

    invoke-virtual {v0, v1}, Lltu;->a(Llty;)V

    .line 166
    return-void
.end method

.method public a(Lkux;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Llzx;->k:Lltu;

    invoke-virtual {v0, p1}, Lltu;->a(Lkux;)V

    .line 133
    iget-object v0, p0, Llzx;->j:Ljava/util/List;

    invoke-virtual {p0, v0}, Llzx;->b(Ljava/util/List;)V

    .line 134
    return-void
.end method

.method public a(Lkux;I)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Llzx;->k:Lltu;

    invoke-virtual {v0, p1, p2}, Lltu;->a(Lkux;I)V

    .line 139
    iget-object v0, p0, Llzx;->j:Ljava/util/List;

    invoke-virtual {p0, v0}, Llzx;->b(Ljava/util/List;)V

    .line 140
    return-void
.end method

.method public b()Ljava/lang/Double;
    .locals 6

    .prologue
    .line 186
    const-wide/16 v2, 0x0

    .line 187
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Llzx;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 188
    iget-object v0, p0, Llzx;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkux;

    invoke-virtual {v0}, Lkux;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 187
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 191
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkux;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    const-wide/16 v2, 0x0

    .line 170
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 171
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkux;

    invoke-virtual {v0}, Lkux;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 170
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Llzx;->e:Landroid/widget/TextView;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lmhj;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    return-void
.end method

.method public c(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkux;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 177
    const-wide/16 v2, 0x0

    .line 178
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 179
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkux;

    invoke-virtual {v0}, Lkux;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 178
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 182
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 6

    .prologue
    .line 293
    sget-object v0, Lmhv;->INSTANCE:Lmhv;

    sget-object v1, Lkuq;->SLIDER_VALUE:Lkuq;

    invoke-virtual {v0, v1}, Lmhv;->getRequest(Lkuq;)Lkva;

    move-result-object v0

    .line 294
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llzx;->b()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0}, Lkva;->k()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {p0}, Llzx;->b()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Llyl;->a(D)Llyl;

    move-result-object v1

    .line 297
    new-instance v2, Lmab;

    invoke-direct {v2, p0, v1, v0}, Lmab;-><init>(Llzx;Llyl;Lkva;)V

    invoke-virtual {v1, v2}, Llyl;->a(Llyo;)V

    .line 312
    iget-object v0, p0, Llzx;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "replace-equipament-value-tag"

    invoke-virtual {v1, v0, v2}, Llyl;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 314
    const/4 v0, 0x0

    .line 317
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 82
    instance-of v0, p1, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    if-eqz v0, :cond_0

    .line 83
    check-cast p1, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    iput-object p1, p0, Llzx;->g:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    .line 85
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Llzx;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "response-key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkvb;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvb;

    iput-object v0, p0, Llzx;->h:Lkvb;

    .line 101
    sget-object v0, Lmhv;->INSTANCE:Lmhv;

    sget-object v1, Lkuq;->EQUIPMENT_LIST:Lkuq;

    invoke-virtual {v0, v1}, Lmhv;->containsRequest(Lkuq;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lmhv;->INSTANCE:Lmhv;

    sget-object v1, Lkuq;->EQUIPMENT_LIST:Lkuq;

    invoke-virtual {v0, v1}, Lmhv;->getRequest(Lkuq;)Lkva;

    move-result-object v0

    iput-object v0, p0, Llzx;->i:Lkva;

    .line 104
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
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
    .line 109
    const v0, 0x7f0401ee

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 110
    invoke-direct {p0, v0}, Llzx;->a(Landroid/view/View;)V

    .line 111
    sget-object v1, Lmhv;->INSTANCE:Lmhv;

    sget-object v2, Lkuq;->EQUIPMENT_LIST:Lkuq;

    invoke-virtual {v1, v2}, Lmhv;->containsRequest(Lkuq;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    sget-object v1, Lmhv;->INSTANCE:Lmhv;

    sget-object v2, Lkuq;->EQUIPMENT_LIST:Lkuq;

    invoke-virtual {v1, v2}, Lmhv;->getRequest(Lkuq;)Lkva;

    move-result-object v1

    iput-object v1, p0, Llzx;->i:Lkva;

    .line 114
    :cond_0
    invoke-virtual {p0}, Llzx;->a()V

    .line 115
    return-object v0
.end method
