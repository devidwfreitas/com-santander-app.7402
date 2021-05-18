.class public Lilv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;


# direct methods
.method public constructor <init>(Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lilv;->a:Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 15

    .prologue
    .line 181
    iget-object v0, p0, Lilv;->a:Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;

    invoke-virtual {v0}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lilv;->a:Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;

    .line 182
    invoke-static {v0}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->c(Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lilv;->a:Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;

    .line 183
    invoke-virtual {v0}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmyz;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->a:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 186
    :cond_0
    iget-object v0, p0, Lilv;->a:Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "geoTest - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "N\u00e3o enviou localiza\u00e7\u00e3o (Permissao, GPS Desligado, Erro RSA ou Sem Rede)"

    invoke-static {v0, v1, v2}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->a(Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :goto_0
    return-void

    :cond_1
    move-object/from16 v3, p1

    .line 191
    check-cast v3, Landroid/location/Location;

    .line 192
    iget-object v0, p0, Lilv;->a:Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;

    invoke-virtual {v0}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmyz;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 193
    iget-object v0, p0, Lilv;->a:Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;

    invoke-virtual {v0}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 194
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 195
    const/4 v0, 0x2

    aget-object v5, v1, v0

    .line 197
    new-instance v0, Lmzk;

    sget-object v1, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmzk;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lmzk;->a()Lmzl;

    move-result-object v6

    .line 199
    iget-object v0, p0, Lilv;->a:Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;

    invoke-virtual {v0}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lgnt;->a(Landroid/content/Context;Z)Lgnt;

    move-result-object v2

    .line 201
    invoke-virtual {v2}, Lgnt;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 203
    invoke-static {}, Lnad;->a()Lnad;

    move-result-object v7

    new-instance v0, Lilw;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lilw;-><init>(Lilv;Lgnt;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Lmzl;)V

    invoke-virtual {v7, v0}, Lnad;->a(Lih;)Lih;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lgnt;->a(Lih;Z)V

    .line 243
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 244
    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lilv;->a:Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;

    .line 245
    invoke-static {v1}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->d(Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lilv;->a:Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "geoTest - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->a(Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 232
    :cond_2
    iget-object v0, p0, Lilv;->a:Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;

    iget-object v7, p0, Lilv;->a:Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;

    iget-object v1, p0, Lilv;->a:Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;

    .line 233
    invoke-static {v1}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->d(Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;)Ljava/lang/String;

    move-result-object v8

    .line 234
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    .line 235
    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    move-object v11, v4

    move-object v12, v5

    move-object v13, v5

    move-object v14, v6

    .line 233
    invoke-static/range {v7 .. v14}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->a(Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmzl;)Lilo;

    move-result-object v1

    .line 232
    invoke-static {v0, v1}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->a(Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;Lilo;)V

    goto/16 :goto_1
.end method
