.class public Lagz;
.super Lajc;


# instance fields
.field private a:Laha;

.field private b:Landroid/content/Context;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Laha;)V
    .locals 1

    invoke-direct {p0}, Lajc;-><init>()V

    const-class v0, Lagz;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lagz;->c:Ljava/lang/String;

    iput-object p2, p0, Lagz;->a:Laha;

    iput-object p1, p0, Lagz;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lagz;)Laha;
    .locals 1

    iget-object v0, p0, Lagz;->a:Laha;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    sget-object v0, Laiz;->SALDO:Laiz;

    invoke-virtual {v0}, Laiz;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lagz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "code"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "documentNumber"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "customer"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Laja;->b()Laja;

    move-result-object v2

    invoke-virtual {v2}, Laja;->a()Lie;

    move-result-object v2

    invoke-virtual {p0}, Lagz;->b()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0, v0, v3, v1}, Lagz;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lir;

    move-result-object v0

    new-instance v1, Lahb;

    invoke-direct {v1, p0}, Lahb;-><init>(Lagz;)V

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
