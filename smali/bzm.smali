.class final Lbzm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbys;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/share/model/SharePhoto;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 420
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->d()Landroid/net/Uri;

    move-result-object v0

    .line 421
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 423
    :try_start_0
    const-string v2, "url"

    .line 424
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    return-object v1

    .line 425
    :catch_0
    move-exception v0

    .line 426
    new-instance v1, Lbhp;

    const-string v2, "Unable to attach images"

    invoke-direct {v1, v2, v0}, Lbhp;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
