.class public Lbro;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbim;


# instance fields
.field final synthetic a:Lcom/facebook/login/DeviceAuthDialog;


# direct methods
.method public constructor <init>(Lcom/facebook/login/DeviceAuthDialog;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lbro;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbix;)V
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Lbro;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v0}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {p1}, Lbix;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lbro;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-virtual {p1}, Lbix;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->n()Lbhp;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog;Lbhp;)V

    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {p1}, Lbix;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 200
    new-instance v1, Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-direct {v1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;-><init>()V

    .line 202
    :try_start_0
    const-string v2, "user_code"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->a(Ljava/lang/String;)V

    .line 203
    const-string v2, "code"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->b(Ljava/lang/String;)V

    .line 204
    const-string v2, "interval"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->a(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    iget-object v0, p0, Lbro;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v0, v1}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/login/DeviceAuthDialog$RequestState;)V

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    iget-object v1, p0, Lbro;->a:Lcom/facebook/login/DeviceAuthDialog;

    new-instance v2, Lbhp;

    invoke-direct {v2, v0}, Lbhp;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, v2}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog;Lbhp;)V

    goto :goto_0
.end method
