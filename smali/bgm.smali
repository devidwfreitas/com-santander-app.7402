.class public final Lbgm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbqt;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lbgo;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lbgo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lbgm;->a:Landroid/os/Bundle;

    iput-object p2, p0, Lbgm;->b:Lbgo;

    iput-object p3, p0, Lbgm;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbhp;)V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lbgm;->b:Lbgo;

    invoke-interface {v0, p1}, Lbgo;->a(Lbhp;)V

    .line 331
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 312
    :try_start_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lbgm;->a:Landroid/os/Bundle;

    const-string v2, "user_id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lbgm;->b:Lbgo;

    const/4 v1, 0x0

    iget-object v2, p0, Lbgm;->a:Landroid/os/Bundle;

    sget-object v3, Lbgy;->FACEBOOK_APPLICATION_WEB:Lbgy;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    iget-object v5, p0, Lbgm;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/facebook/AccessToken;->a(Ljava/util/List;Landroid/os/Bundle;Lbgy;Ljava/util/Date;Ljava/lang/String;)Lcom/facebook/AccessToken;

    move-result-object v1

    invoke-interface {v0, v1}, Lbgo;->a(Lcom/facebook/AccessToken;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    iget-object v0, p0, Lbgm;->b:Lbgo;

    new-instance v1, Lbhp;

    const-string v2, "Unable to generate access token due to missing user id"

    invoke-direct {v1, v2}, Lbhp;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lbgo;->a(Lbhp;)V

    goto :goto_0
.end method
