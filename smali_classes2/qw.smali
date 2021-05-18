.class public Lqw;
.super Labw;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lqy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Labw;-><init>()V

    .line 32
    iput-object p1, p0, Lqw;->a:Landroid/content/Context;

    .line 33
    return-void
.end method

.method static synthetic a(Lqw;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lqw;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ltk;Lqy;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 37
    iput-object p3, p0, Lqw;->b:Lqy;

    .line 39
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 41
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Leju;

    invoke-direct {v2}, Leju;-><init>()V

    invoke-virtual {v2}, Leju;->j()Lejm;

    move-result-object v2

    new-instance v3, Lqv;

    invoke-direct {v3, p1, p2}, Lqv;-><init>(Ljava/lang/String;Ltk;)V

    invoke-virtual {v2, v3}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    :try_start_1
    invoke-static {}, Labp;->b()Labp;

    move-result-object v1

    invoke-virtual {v1}, Labp;->a()Lje;

    move-result-object v1

    sget-object v2, Labq;->DETALHE_INVESTIMENTO:Labq;

    .line 48
    invoke-virtual {v2}, Labq;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lqw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {p0}, Lqw;->b()Lorg/json/JSONObject;

    move-result-object v3

    .line 48
    invoke-virtual {p0, v2, v3, v0}, Lqw;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lir;

    move-result-object v0

    new-instance v2, Lqx;

    invoke-direct {v2, p0, p3}, Lqx;-><init>(Lqw;Lqy;)V

    .line 47
    invoke-virtual {v1, v0, v2}, Lje;->a(Liq;Lih;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    :goto_1
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    iget-object v2, p0, Lqw;->b:Lqy;

    new-instance v3, Laby;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Laby;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3}, Lqy;->a(Laby;)V

    move-object v0, v1

    goto :goto_0

    .line 64
    :catch_1
    move-exception v0

    .line 65
    iget-object v1, p0, Lqw;->b:Lqy;

    new-instance v2, Laby;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v0}, Laby;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lqy;->a(Laby;)V

    goto :goto_1
.end method
