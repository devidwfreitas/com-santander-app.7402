.class public Lilx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Lilo;

.field final synthetic b:Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;


# direct methods
.method public constructor <init>(Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;Lilo;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lilx;->b:Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;

    iput-object p2, p0, Lilx;->a:Lilo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 2

    .prologue
    .line 272
    const/4 v0, 0x0

    sput-object v0, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->b:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lilx;->b:Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;

    .line 274
    invoke-virtual {v0}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lgnt;->a(Landroid/content/Context;Z)Lgnt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgnt;->a(Z)V

    .line 276
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    .line 278
    :goto_0
    const-string v1, "GEOLOCALIZACAO_SEND_FAIL"

    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void

    .line 276
    :cond_0
    const-string v0, "Falha no envio da Geolocalizacao"

    goto :goto_0
.end method

.method public onSuccess(Lis;)V
    .locals 3

    .prologue
    .line 261
    :try_start_0
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ticket"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->b:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    const-string v0, "GeolocalizacaoService"

    const-string v1, "Sucesso - Location enviada."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v0, "GEOLOCALIZACAO_SEND_SUCCESS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lilx;->a:Lilo;

    invoke-virtual {v2}, Lilo;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lilx;->a:Lilo;

    invoke-virtual {v2}, Lilo;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lilx;->a:Lilo;

    invoke-virtual {v2}, Lilo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lilx;->a:Lilo;

    invoke-virtual {v2}, Lilo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    const-string v1, "Error"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
