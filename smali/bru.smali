.class public Lbru;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbim;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/facebook/login/DeviceAuthDialog;


# direct methods
.method public constructor <init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lbru;->b:Lcom/facebook/login/DeviceAuthDialog;

    iput-object p2, p0, Lbru;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbix;)V
    .locals 5

    .prologue
    .line 377
    iget-object v0, p0, Lbru;->b:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v0}, Lcom/facebook/login/DeviceAuthDialog;->d(Lcom/facebook/login/DeviceAuthDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 381
    :cond_0
    invoke-virtual {p1}, Lbix;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lbru;->b:Lcom/facebook/login/DeviceAuthDialog;

    invoke-virtual {p1}, Lbix;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->n()Lbhp;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog;Lbhp;)V

    goto :goto_0

    .line 390
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lbix;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 391
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-static {v0}, Lbqq;->b(Lorg/json/JSONObject;)Lbqv;

    move-result-object v2

    .line 393
    const-string v3, "name"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 398
    iget-object v3, p0, Lbru;->b:Lcom/facebook/login/DeviceAuthDialog;

    .line 399
    invoke-static {v3}, Lcom/facebook/login/DeviceAuthDialog;->h(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/DeviceAuthDialog$RequestState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->a()Ljava/lang/String;

    move-result-object v3

    .line 398
    invoke-static {v3}, Lbmo;->b(Ljava/lang/String;)V

    .line 403
    invoke-static {}, Lbhv;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lbol;->a(Ljava/lang/String;)Lboj;

    move-result-object v3

    .line 404
    invoke-virtual {v3}, Lboj;->g()Ljava/util/EnumSet;

    move-result-object v3

    sget-object v4, Lbqo;->RequireConfirm:Lbqo;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 405
    if-eqz v3, :cond_2

    iget-object v3, p0, Lbru;->b:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v3}, Lcom/facebook/login/DeviceAuthDialog;->i(Lcom/facebook/login/DeviceAuthDialog;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 406
    iget-object v3, p0, Lbru;->b:Lcom/facebook/login/DeviceAuthDialog;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/facebook/login/DeviceAuthDialog;->b(Lcom/facebook/login/DeviceAuthDialog;Z)Z

    .line 407
    iget-object v3, p0, Lbru;->b:Lcom/facebook/login/DeviceAuthDialog;

    iget-object v4, p0, Lbru;->a:Ljava/lang/String;

    invoke-static {v3, v1, v2, v4, v0}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lbqv;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :catch_0
    move-exception v0

    .line 395
    iget-object v1, p0, Lbru;->b:Lcom/facebook/login/DeviceAuthDialog;

    new-instance v2, Lbhp;

    invoke-direct {v2, v0}, Lbhp;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, v2}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog;Lbhp;)V

    goto :goto_0

    .line 411
    :cond_2
    iget-object v0, p0, Lbru;->b:Lcom/facebook/login/DeviceAuthDialog;

    iget-object v3, p0, Lbru;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lbqv;Ljava/lang/String;)V

    goto :goto_0
.end method
