.class Lkxo;
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

.field final synthetic c:Lkxn;


# direct methods
.method constructor <init>(Lkxn;Lkxl;Lkxl;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lkxo;->c:Lkxn;

    iput-object p2, p0, Lkxo;->a:Lkxl;

    iput-object p3, p0, Lkxo;->b:Lkxl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lis;)V
    .locals 5

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    iget-object v0, p0, Lkxo;->a:Lkxl;

    const-string v1, ""

    invoke-interface {v0, v1}, Lkxl;->a(Ljava/lang/Object;)V

    .line 115
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_4

    .line 88
    :try_start_0
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "subservices"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lkxo;->b:Lkxl;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Lkxl;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    iget-object v0, p0, Lkxo;->a:Lkxl;

    const-string v1, ""

    invoke-interface {v0, v1}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 93
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "subservices"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 94
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 96
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 97
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "subservice"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, [Lkps;

    invoke-virtual {v0, v2, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkps;

    check-cast v0, [Lkps;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 107
    :goto_2
    iget-object v1, p0, Lkxo;->b:Lkxl;

    invoke-interface {v1, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 104
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 113
    :cond_4
    iget-object v1, p0, Lkxo;->a:Lkxl;

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-interface {v1, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, ""

    goto :goto_3
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 80
    check-cast p1, Lis;

    invoke-virtual {p0, p1}, Lkxo;->a(Lis;)V

    return-void
.end method
