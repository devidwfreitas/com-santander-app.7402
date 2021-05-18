.class public Laim;
.super Lajc;


# instance fields
.field private a:Lain;

.field private b:Landroid/content/Context;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lain;)V
    .locals 1

    invoke-direct {p0}, Lajc;-><init>()V

    const-class v0, Laim;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laim;->c:Ljava/lang/String;

    iput-object p2, p0, Laim;->a:Lain;

    iput-object p1, p0, Laim;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Laim;)Lain;
    .locals 1

    iget-object v0, p0, Laim;->a:Lain;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    sget-object v0, Laiz;->REMANEJAMENTO:Laiz;

    invoke-virtual {v0}, Laiz;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laim;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Laja;->b()Laja;

    move-result-object v1

    invoke-virtual {v1}, Laja;->a()Lie;

    move-result-object v1

    invoke-virtual {p0}, Laim;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Laim;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lir;

    move-result-object v0

    new-instance v2, Laio;

    invoke-direct {v2, p0}, Laio;-><init>(Laim;)V

    invoke-virtual {v1, v0, v2}, Lie;->a(Lir;Lih;)V
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
