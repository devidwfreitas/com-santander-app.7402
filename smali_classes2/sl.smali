.class public Lsl;
.super Labw;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Labw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Boolean;Ljava/util/List;Lyt;Ljava/lang/String;Lsn;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lyt;",
            "Ljava/lang/String;",
            "Lsn;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 40
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 41
    sget-object v1, Labq;->EFETIVAR_RESGATE:Labq;

    invoke-virtual {v1}, Labq;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_0
    :goto_0
    const-string v1, "?gw-app-key="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Labp;->b()Labp;

    move-result-object v2

    invoke-virtual {v2}, Labp;->a()Lje;

    move-result-object v2

    invoke-virtual {v2}, Lje;->a()Lio;

    move-result-object v2

    invoke-virtual {v2}, Lio;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 56
    if-eqz p4, :cond_1

    .line 58
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v4, Leju;

    invoke-direct {v4}, Leju;-><init>()V

    invoke-virtual {v4}, Leju;->j()Lejm;

    move-result-object v4

    const-class v5, Lyt;

    invoke-virtual {v4, p4, v5}, Lejm;->b(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v1

    .line 63
    :cond_1
    :goto_1
    if-eqz p5, :cond_2

    .line 65
    :try_start_1
    const-string v1, "otp"

    invoke-virtual {v2, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 72
    :cond_2
    :goto_2
    :try_start_2
    invoke-static {}, Labp;->b()Labp;

    move-result-object v1

    invoke-virtual {v1}, Labp;->a()Lje;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v0}, Lsl;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lir;

    move-result-object v0

    new-instance v2, Lsm;

    invoke-direct {v2, p0, p6, p1}, Lsm;-><init>(Lsl;Lsn;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2}, Lje;->a(Liq;Lih;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 94
    :goto_3
    return-void

    .line 43
    :cond_3
    sget-object v1, Labq;->EFETIVAR_APLICACAO:Labq;

    invoke-virtual {v1}, Labq;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    if-eqz p3, :cond_0

    .line 47
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Leju;

    invoke-direct {v2}, Leju;-><init>()V

    invoke-virtual {v2}, Leju;->j()Lejm;

    move-result-object v2

    new-instance v4, Lso;

    invoke-direct {v4, p3}, Lso;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v4}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v1

    .line 50
    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    new-instance v2, Laby;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v6, v1}, Laby;-><init>(ILjava/lang/String;)V

    invoke-interface {p6, v2}, Lsn;->a(Laby;)V

    goto/16 :goto_0

    .line 59
    :catch_1
    move-exception v1

    .line 60
    new-instance v4, Laby;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v6, v1}, Laby;-><init>(ILjava/lang/String;)V

    invoke-interface {p6, v4}, Lsn;->a(Laby;)V

    goto :goto_1

    .line 66
    :catch_2
    move-exception v1

    .line 67
    new-instance v4, Laby;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v6, v1}, Laby;-><init>(ILjava/lang/String;)V

    invoke-interface {p6, v4}, Lsn;->a(Laby;)V

    goto :goto_2

    .line 91
    :catch_3
    move-exception v0

    .line 92
    new-instance v1, Laby;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Laby;-><init>(ILjava/lang/String;)V

    invoke-interface {p6, v1}, Lsn;->a(Laby;)V

    goto :goto_3
.end method
