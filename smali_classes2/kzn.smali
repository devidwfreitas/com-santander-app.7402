.class Lkzn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkw",
        "<",
        "Lis;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkxl;

.field final synthetic b:Lkxl;

.field final synthetic c:Lkzl;


# direct methods
.method constructor <init>(Lkzl;Lkxl;Lkxl;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lkzn;->c:Lkzl;

    iput-object p2, p0, Lkzn;->a:Lkxl;

    iput-object p3, p0, Lkzn;->b:Lkxl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lis;)V
    .locals 4

    .prologue
    .line 106
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 109
    :try_start_0
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 111
    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lkzn;->a:Lkxl;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkxl;->a(Ljava/lang/Object;)V

    .line 131
    :goto_0
    return-void

    .line 117
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v3, [Lkvs;

    invoke-virtual {v2, v0, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkvs;

    check-cast v0, [Lkvs;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 123
    iget-object v0, p0, Lkzn;->a:Lkxl;

    invoke-interface {v0, v1}, Lkxl;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 126
    iget-object v0, p0, Lkzn;->b:Lkxl;

    const-string v1, ""

    invoke-interface {v0, v1}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object v1, p0, Lkzn;->b:Lkxl;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v1, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 103
    check-cast p1, Lis;

    invoke-virtual {p0, p1}, Lkzn;->a(Lis;)V

    return-void
.end method
