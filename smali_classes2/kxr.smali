.class Lkxr;
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
    .line 270
    iput-object p1, p0, Lkxr;->c:Lkxn;

    iput-object p2, p0, Lkxr;->a:Lkxl;

    iput-object p3, p0, Lkxr;->b:Lkxl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lis;)V
    .locals 6

    .prologue
    .line 274
    if-nez p1, :cond_0

    .line 275
    iget-object v0, p0, Lkxr;->a:Lkxl;

    const-string v1, ""

    invoke-interface {v0, v1}, Lkxl;->a(Ljava/lang/Object;)V

    .line 315
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_7

    .line 278
    :try_start_0
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "situations"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "situations"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 279
    :cond_1
    iget-object v0, p0, Lkxr;->b:Lkxl;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Lkxl;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 310
    iget-object v0, p0, Lkxr;->a:Lkxl;

    const-string v1, ""

    invoke-interface {v0, v1}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 282
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "situations"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 283
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 284
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 285
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "situation"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 286
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 289
    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 290
    new-instance v0, Leju;

    invoke-direct {v0}, Leju;-><init>()V

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {v0, v1}, Leju;->a(Ljava/lang/String;)Leju;

    move-result-object v0

    invoke-virtual {v0}, Leju;->j()Lejm;

    move-result-object v0

    .line 291
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, [Lkpo;

    invoke-virtual {v0, v2, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkpo;

    check-cast v0, [Lkpo;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 295
    :goto_2
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v2

    .line 296
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpo;

    .line 297
    invoke-virtual {v0}, Lkpo;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lkpo;->a(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0}, Lkpo;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 299
    const-string v5, "reagendado"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 300
    iget-object v4, p0, Lkxr;->c:Lkxn;

    invoke-virtual {v0}, Lkpo;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkxn;->a(Lkxn;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 301
    invoke-virtual {v0, v4}, Lkpo;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 293
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    goto :goto_2

    .line 305
    :cond_6
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 307
    iget-object v0, p0, Lkxr;->b:Lkxl;

    invoke-interface {v0, v1}, Lkxl;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 313
    :cond_7
    iget-object v1, p0, Lkxr;->a:Lkxl;

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-interface {v1, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, ""

    goto :goto_4
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 270
    check-cast p1, Lis;

    invoke-virtual {p0, p1}, Lkxr;->a(Lis;)V

    return-void
.end method
