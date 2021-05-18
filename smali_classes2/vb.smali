.class public Lvb;
.super Labw;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Labw;-><init>()V

    .line 28
    iput-object p1, p0, Lvb;->a:Landroid/content/Context;

    .line 29
    return-void
.end method

.method static synthetic a(Lvb;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lvb;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Lvd;)V
    .locals 6

    .prologue
    .line 34
    :try_start_0
    invoke-static {}, Laca;->a()Laca;

    move-result-object v0

    invoke-virtual {v0}, Laca;->b()Lach;

    move-result-object v0

    invoke-virtual {v0}, Lach;->toString()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {}, Laca;->a()Laca;

    move-result-object v0

    invoke-virtual {v0}, Laca;->f()Ltp;

    move-result-object v0

    invoke-virtual {v0}, Ltp;->a()Ljava/lang/String;

    move-result-object v0

    .line 37
    if-nez v0, :cond_0

    const-string v0, "0000"

    .line 39
    :cond_0
    sget-object v2, Labq;->CONSULTAR_SUBPRODUTOS:Labq;

    invoke-virtual {v2}, Labq;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lvb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 42
    const-string v4, "segmentCode"

    invoke-static {}, Lji;->a()Lji;

    move-result-object v5

    invoke-virtual {v5, v1}, Lji;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string v1, "profileCode"

    invoke-static {}, Lji;->a()Lji;

    move-result-object v4

    invoke-virtual {v4, v0}, Lji;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    invoke-static {}, Labp;->b()Labp;

    move-result-object v0

    invoke-virtual {v0}, Labp;->a()Lje;

    move-result-object v0

    invoke-virtual {p0}, Lvb;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v2, v1, v3}, Lvb;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lir;

    move-result-object v1

    new-instance v2, Lvc;

    invoke-direct {v2, p0, p1}, Lvc;-><init>(Lvb;Lvd;)V

    invoke-virtual {v0, v1, v2}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    new-instance v1, Laby;

    const-string v2, "-1"

    iget-object v3, p0, Lvb;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Llg;->error_generic:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Laby;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lvd;->a(Laby;)V

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
