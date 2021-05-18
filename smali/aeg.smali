.class public Laeg;
.super Laef;


# static fields
.field private static final a:Ljava/lang/String; = "authorized-direct-debit/v1/title-detail"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laef;-><init>()V

    return-void
.end method

.method private a(Laeb;)Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "sequentialNumber"

    invoke-virtual {p1}, Laeb;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sourceCode"

    invoke-virtual {p1}, Laeb;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-class v2, Laeg;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Laeb;Laeh;)V
    .locals 4

    :try_start_0
    invoke-static {}, Ladz;->b()Ladz;

    move-result-object v0

    invoke-virtual {v0}, Ladz;->a()Lje;

    move-result-object v0

    const-string v1, "authorized-direct-debit/v1/title-detail"

    invoke-direct {p0, p1}, Laeg;->a(Laeb;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Laeg;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)Lir;

    move-result-object v1

    new-instance v2, Laek;

    invoke-direct {v2, p0, p1, p2}, Laek;-><init>(Laeg;Laeb;Laeh;)V

    invoke-virtual {v0, v1, v2}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-class v1, Laeg;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Laeh;->a(Lis;)V

    goto :goto_0
.end method
