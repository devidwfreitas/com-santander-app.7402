.class Llyq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxa;


# instance fields
.field final synthetic a:Llyp;


# direct methods
.method constructor <init>(Llyp;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Llyq;->a:Llyp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Llyq;->a:Llyp;

    invoke-virtual {v0}, Llyp;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Llyq;->a:Llyp;

    invoke-static {v0}, Llyp;->c(Llyp;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->ERROR:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 142
    iget-object v0, p0, Llyq;->a:Llyp;

    invoke-virtual {v0}, Llyp;->dismiss()V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 116
    iget-object v0, p0, Llyq;->a:Llyp;

    invoke-virtual {v0}, Llyp;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    :try_start_0
    instance-of v0, p1, Lis;

    if-eqz v0, :cond_0

    .line 120
    check-cast p1, Lis;

    .line 121
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 123
    iget-object v1, p0, Llyq;->a:Llyp;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v4, [Lkvh;

    invoke-virtual {v3, v0, v4}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkvh;

    check-cast v0, [Lkvh;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Llyp;->a(Llyp;Ljava/util/List;)Ljava/util/List;

    .line 125
    iget-object v0, p0, Llyq;->a:Llyp;

    invoke-static {v0}, Llyp;->a(Llyp;)V

    .line 130
    iget-object v0, p0, Llyq;->a:Llyp;

    invoke-static {v0}, Llyp;->b(Llyp;)V

    .line 131
    iget-object v0, p0, Llyq;->a:Llyp;

    invoke-static {v0}, Llyp;->c(Llyp;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
