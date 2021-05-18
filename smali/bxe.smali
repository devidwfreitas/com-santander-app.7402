.class final Lbxe;
.super Lbgz;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 344
    invoke-direct {p0}, Lbgz;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .locals 3

    .prologue
    .line 349
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v0

    .line 350
    if-nez p2, :cond_0

    .line 358
    invoke-static {}, Lbww;->g()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Lbww;->a(I)I

    .line 359
    const-string v1, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 362
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OBJECT_SUFFIX"

    .line 363
    invoke-static {}, Lbww;->g()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 364
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 369
    invoke-static {}, Lbww;->h()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 370
    invoke-static {}, Lbww;->i()Lbon;

    move-result-object v0

    invoke-virtual {v0}, Lbon;->b()V

    .line 372
    :cond_0
    const/4 v0, 0x0

    const-string v1, "com.facebook.sdk.LikeActionController.DID_RESET"

    invoke-static {v0, v1}, Lbww;->a(Lbww;Ljava/lang/String;)V

    .line 373
    return-void
.end method
