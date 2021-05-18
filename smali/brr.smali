.class public Lbrr;
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
    .line 288
    iput-object p1, p0, Lbrr;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbix;)V
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lbrr;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v0}, Lcom/facebook/login/DeviceAuthDialog;->d(Lcom/facebook/login/DeviceAuthDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-virtual {p1}, Lbix;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->d()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 311
    iget-object v0, p0, Lbrr;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-virtual {p1}, Lbix;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->n()Lbhp;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog;Lbhp;)V

    goto :goto_0

    .line 304
    :sswitch_0
    iget-object v0, p0, Lbrr;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v0}, Lcom/facebook/login/DeviceAuthDialog;->e(Lcom/facebook/login/DeviceAuthDialog;)V

    goto :goto_0

    .line 308
    :sswitch_1
    iget-object v0, p0, Lbrr;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v0}, Lcom/facebook/login/DeviceAuthDialog;->b(Lcom/facebook/login/DeviceAuthDialog;)V

    goto :goto_0

    .line 319
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lbix;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lbrr;->a:Lcom/facebook/login/DeviceAuthDialog;

    const-string v2, "access_token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    iget-object v1, p0, Lbrr;->a:Lcom/facebook/login/DeviceAuthDialog;

    new-instance v2, Lbhp;

    invoke-direct {v2, v0}, Lbhp;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, v2}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog;Lbhp;)V

    goto :goto_0

    .line 300
    :sswitch_data_0
    .sparse-switch
        0x149620 -> :sswitch_1
        0x149634 -> :sswitch_0
        0x149635 -> :sswitch_1
        0x149636 -> :sswitch_0
    .end sparse-switch
.end method
