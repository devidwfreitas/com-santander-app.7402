.class public Lbml;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lep;


# static fields
.field private static final a:Ljava/lang/String; = "app_links"

.field private static final b:Ljava/lang/String; = "android"

.field private static final c:Ljava/lang/String; = "web"

.field private static final d:Ljava/lang/String; = "package"

.field private static final e:Ljava/lang/String; = "class"

.field private static final f:Ljava/lang/String; = "app_name"

.field private static final g:Ljava/lang/String; = "url"

.field private static final h:Ljava/lang/String; = "should_fallback"


# instance fields
.field private final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lek;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbml;->i:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 51
    invoke-static {p0, p1}, Lbml;->b(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lorg/json/JSONObject;)Lel;
    .locals 1

    .prologue
    .line 51
    invoke-static {p0}, Lbml;->b(Lorg/json/JSONObject;)Lel;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 253
    :goto_0
    return-object p2

    .line 252
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lbml;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lbml;->i:Ljava/util/HashMap;

    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 262
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 264
    :goto_0
    return p2

    .line 263
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static b(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 223
    :try_start_0
    const-string v1, "web"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 224
    const-string v2, "should_fallback"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lbml;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    .line 226
    if-nez v2, :cond_1

    move-object p0, v0

    .line 242
    :cond_0
    :goto_0
    return-object p0

    .line 231
    :cond_1
    const-string v2, "url"

    const/4 v3, 0x0

    .line 232
    invoke-static {v1, v2, v3}, Lbml;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    if-eqz v1, :cond_2

    .line 235
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 239
    :cond_2
    if-eqz v0, :cond_0

    move-object p0, v0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static b(Lorg/json/JSONObject;)Lel;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 203
    const-string v1, "package"

    invoke-static {p0, v1, v0}, Lbml;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    if-nez v2, :cond_0

    .line 216
    :goto_0
    return-object v0

    .line 208
    :cond_0
    const-string v1, "class"

    invoke-static {p0, v1, v0}, Lbml;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 209
    const-string v1, "app_name"

    invoke-static {p0, v1, v0}, Lbml;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 210
    const-string v1, "url"

    invoke-static {p0, v1, v0}, Lbml;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    if-eqz v1, :cond_1

    .line 213
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 216
    :cond_1
    new-instance v1, Lel;

    invoke-direct {v1, v2, v3, v0, v4}, Lel;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lfd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lfd",
            "<",
            "Lek;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {p0, v0}, Lbml;->a(Ljava/util/List;)Lfd;

    move-result-object v0

    .line 78
    new-instance v1, Lbmm;

    invoke-direct {v1, p0, p1}, Lbmm;-><init>(Lbml;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lfd;->c(Lfa;)Lfd;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)Lfd;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Lfd",
            "<",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lek;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 97
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 102
    iget-object v4, p0, Lbml;->i:Ljava/util/HashMap;

    monitor-enter v4

    .line 103
    :try_start_0
    iget-object v1, p0, Lbml;->i:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lek;

    .line 104
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    if-eqz v1, :cond_0

    .line 107
    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 109
    :cond_0
    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 110
    const/16 v1, 0x2c

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    invoke-static {v6}, Lfd;->a(Ljava/lang/Object;)Lfd;

    move-result-object v0

    .line 199
    :goto_1
    return-object v0

    .line 121
    :cond_3
    invoke-static {}, Lfd;->b()Lfu;

    move-result-object v8

    .line 123
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 125
    const-string v0, "ids"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v0, "fields"

    const-string v1, "%s.fields(%s,%s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "app_links"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "android"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "web"

    aput-object v5, v2, v4

    .line 128
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 136
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v1

    const-string v2, ""

    const/4 v4, 0x0

    new-instance v5, Lbmn;

    invoke-direct {v5, p0, v8, v6, v7}, Lbmn;-><init>(Lbml;Lfu;Ljava/util/Map;Ljava/util/HashSet;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;Lbim;)V

    .line 197
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->n()Lbit;

    .line 199
    invoke-virtual {v8}, Lfu;->a()Lfd;

    move-result-object v0

    goto :goto_1
.end method
