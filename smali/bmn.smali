.class Lbmn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbim;


# instance fields
.field final synthetic a:Lfu;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/util/HashSet;

.field final synthetic d:Lbml;


# direct methods
.method constructor <init>(Lbml;Lfu;Ljava/util/Map;Ljava/util/HashSet;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lbmn;->d:Lbml;

    iput-object p2, p0, Lbmn;->a:Lfu;

    iput-object p3, p0, Lbmn;->b:Ljava/util/Map;

    iput-object p4, p0, Lbmn;->c:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbix;)V
    .locals 9

    .prologue
    .line 143
    invoke-virtual {p1}, Lbix;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    .line 145
    iget-object v1, p0, Lbmn;->a:Lfu;

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->n()Lbhp;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfu;->b(Ljava/lang/Exception;)V

    .line 194
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {p1}, Lbix;->b()Lorg/json/JSONObject;

    move-result-object v2

    .line 150
    if-nez v2, :cond_1

    .line 151
    iget-object v0, p0, Lbmn;->a:Lfu;

    iget-object v1, p0, Lbmn;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lfu;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lbmn;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 156
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 164
    const-string v4, "app_links"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 166
    const-string v1, "android"

    .line 167
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 169
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 170
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_4

    .line 174
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8}, Lbml;->a(Lorg/json/JSONObject;)Lel;

    move-result-object v8

    .line 175
    if-eqz v8, :cond_3

    .line 176
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 180
    :cond_4
    invoke-static {v0, v4}, Lbml;->a(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;

    move-result-object v1

    .line 181
    new-instance v4, Lek;

    invoke-direct {v4, v0, v7, v1}, Lek;-><init>(Landroid/net/Uri;Ljava/util/List;Landroid/net/Uri;)V

    .line 183
    iget-object v1, p0, Lbmn;->b:Ljava/util/Map;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v1, p0, Lbmn;->d:Lbml;

    invoke-static {v1}, Lbml;->a(Lbml;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :try_start_1
    iget-object v5, p0, Lbmn;->d:Lbml;

    invoke-static {v5}, Lbml;->a(Lbml;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 187
    :catch_0
    move-exception v0

    goto :goto_1

    .line 193
    :cond_5
    iget-object v0, p0, Lbmn;->a:Lfu;

    iget-object v1, p0, Lbmn;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lfu;->b(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
