.class Lilw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Lgnt;

.field final synthetic b:Landroid/location/Location;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lmzl;

.field final synthetic f:Lilv;


# direct methods
.method constructor <init>(Lilv;Lgnt;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Lmzl;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lilw;->f:Lilv;

    iput-object p2, p0, Lilw;->a:Lgnt;

    iput-object p3, p0, Lilw;->b:Landroid/location/Location;

    iput-object p4, p0, Lilw;->c:Ljava/lang/String;

    iput-object p5, p0, Lilw;->d:Ljava/lang/String;

    iput-object p6, p0, Lilw;->e:Lmzl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lilw;->a:Lgnt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgnt;->a(Z)V

    .line 228
    const-string v0, "ERROR_HUB_NOTAUTH_CON"

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 9

    .prologue
    .line 206
    iget-object v0, p0, Lilw;->a:Lgnt;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnt;->a(Z)V

    .line 209
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

    .line 214
    :goto_0
    iget-object v0, p0, Lilw;->f:Lilv;

    iget-object v8, v0, Lilv;->a:Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;

    iget-object v0, p0, Lilw;->f:Lilv;

    iget-object v0, v0, Lilv;->a:Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;

    iget-object v1, p0, Lilw;->f:Lilv;

    iget-object v1, v1, Lilv;->a:Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;

    .line 215
    invoke-static {v1}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->d(Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lilw;->b:Landroid/location/Location;

    .line 216
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lilw;->b:Landroid/location/Location;

    .line 217
    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lilw;->c:Ljava/lang/String;

    iget-object v5, p0, Lilw;->d:Ljava/lang/String;

    iget-object v6, p0, Lilw;->d:Ljava/lang/String;

    iget-object v7, p0, Lilw;->e:Lmzl;

    .line 215
    invoke-static/range {v0 .. v7}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->a(Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmzl;)Lilo;

    move-result-object v0

    .line 214
    invoke-static {v8, v0}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->a(Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;Lilo;)V

    .line 223
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    const-string v1, "Error"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
