.class final Lbld;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lbim;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lbim;)V
    .locals 0

    .prologue
    .line 767
    iput-object p1, p0, Lbld;->a:Ljava/lang/String;

    iput-object p2, p0, Lbld;->b:Landroid/os/Bundle;

    iput-object p3, p0, Lbld;->c:Ljava/lang/String;

    iput-object p4, p0, Lbld;->d:Lbim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 770
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 771
    const-string v1, "user_unique_id"

    iget-object v2, p0, Lbld;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v1, "custom_data"

    iget-object v2, p0, Lbld;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 776
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v1

    .line 775
    invoke-static {v1}, Lbmv;->a(Landroid/content/Context;)Lbmv;

    move-result-object v1

    .line 777
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lbmv;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 778
    const-string v2, "advertiser_id"

    .line 780
    invoke-virtual {v1}, Lbmv;->b()Ljava/lang/String;

    move-result-object v1

    .line 778
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 785
    :try_start_0
    invoke-static {v0}, Lbna;->a(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    .line 786
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 787
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 789
    const-string v0, "data"

    .line 790
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 789
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 796
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s/user_properties"

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lbld;->c:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 797
    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lbiz;->POST:Lbiz;

    iget-object v5, p0, Lbld;->d:Lbim;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;Lbim;)V

    .line 801
    invoke-virtual {v0, v8}, Lcom/facebook/GraphRequest;->a(Z)V

    .line 802
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->n()Lbit;

    .line 803
    return-void

    .line 791
    :catch_0
    move-exception v0

    .line 792
    new-instance v1, Lbhp;

    const-string v2, "Failed to construct request"

    invoke-direct {v1, v2, v0}, Lbhp;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
