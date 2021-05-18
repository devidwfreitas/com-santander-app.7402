.class public Lyz;
.super Labw;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Labw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Boolean;Lzb;)V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    sget-object v1, Labq;->VALIDACAO_CONSULTIVA_RESGATE:Labq;

    invoke-virtual {v1}, Labq;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :goto_0
    const-string v1, "?gw-app-key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 40
    :try_start_0
    invoke-static {}, Labp;->b()Labp;

    move-result-object v1

    invoke-virtual {v1}, Labp;->a()Lje;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lyz;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lir;

    move-result-object v0

    new-instance v2, Lza;

    invoke-direct {v2, p0, p3, p1}, Lza;-><init>(Lyz;Lzb;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_1
    return-void

    .line 35
    :cond_0
    sget-object v1, Labq;->VALIDACAO_CONSULTIVA_APLICACAO:Labq;

    invoke-virtual {v1}, Labq;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    new-instance v1, Laby;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Laby;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v1}, Lzb;->a(Laby;)V

    goto :goto_1
.end method
