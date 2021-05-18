.class Lbkq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:I = 0x64

.field private static final c:I = 0xf

.field private static volatile d:Lbkp;

.field private static final e:Ljava/util/concurrent/ScheduledExecutorService;

.field private static f:Ljava/util/concurrent/ScheduledFuture;

.field private static final g:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lbkq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbkq;->a:Ljava/lang/String;

    .line 56
    new-instance v0, Lbkp;

    invoke-direct {v0}, Lbkp;-><init>()V

    sput-object v0, Lbkq;->d:Lbkp;

    .line 58
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lbkq;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 62
    new-instance v0, Lbkr;

    invoke-direct {v0}, Lbkr;-><init>()V

    sput-object v0, Lbkq;->g:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lbkp;)Lbkp;
    .locals 0

    .prologue
    .line 50
    sput-object p0, Lbkq;->d:Lbkp;

    return-object p0
.end method

.method private static a(Lblm;Lbkp;)Lblo;
    .locals 8

    .prologue
    .line 158
    new-instance v1, Lblo;

    invoke-direct {v1}, Lblo;-><init>()V

    .line 160
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v0

    .line 161
    invoke-static {v0}, Lbhv;->b(Landroid/content/Context;)Z

    move-result v2

    .line 163
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 164
    invoke-virtual {p1}, Lbkp;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbkf;

    .line 167
    invoke-virtual {p1, v0}, Lbkp;->a(Lbkf;)Lbls;

    move-result-object v5

    .line 165
    invoke-static {v0, v5, v2, v1}, Lbkq;->a(Lbkf;Lbls;ZLblo;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 176
    sget-object v0, Lbjb;->APP_EVENTS:Lbjb;

    sget-object v2, Lbkq;->a:Ljava/lang/String;

    const-string v4, "Flushing %d events due to %s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v1, Lblo;->a:I

    .line 177
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 178
    invoke-virtual {p0}, Lblm;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 176
    invoke-static {v0, v2, v4, v5}, Lbpu;->a(Lbjb;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 183
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->m()Lbix;

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 188
    :goto_2
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static a(Lbkf;Lbls;ZLblo;)Lcom/facebook/GraphRequest;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 196
    invoke-virtual {p0}, Lbkf;->b()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v0, v1}, Lbol;->a(Ljava/lang/String;Z)Lboj;

    move-result-object v4

    .line 201
    const-string v3, "%s/activities"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    .line 203
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-static {v2, v0, v2, v2}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lbim;)Lcom/facebook/GraphRequest;

    move-result-object v3

    .line 207
    invoke-virtual {v3}, Lcom/facebook/GraphRequest;->e()Landroid/os/Bundle;

    move-result-object v0

    .line 208
    if-nez v0, :cond_0

    .line 209
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 211
    :cond_0
    const-string v5, "access_token"

    invoke-virtual {p0}, Lbkf;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lbla;->d()Ljava/lang/String;

    move-result-object v5

    .line 214
    if-eqz v5, :cond_1

    .line 215
    const-string v6, "device_token"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_1
    invoke-virtual {v3, v0}, Lcom/facebook/GraphRequest;->a(Landroid/os/Bundle;)V

    .line 222
    if-eqz v4, :cond_3

    .line 223
    invoke-virtual {v4}, Lboj;->a()Z

    move-result v0

    .line 228
    :goto_0
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v1

    .line 226
    invoke-virtual {p1, v3, v1, v0, p2}, Lbls;->a(Lcom/facebook/GraphRequest;Landroid/content/Context;ZZ)I

    move-result v0

    .line 232
    if-nez v0, :cond_2

    move-object v0, v2

    .line 250
    :goto_1
    return-object v0

    .line 236
    :cond_2
    iget v1, p3, Lblo;->a:I

    add-int/2addr v0, v1

    iput v0, p3, Lblo;->a:I

    .line 238
    new-instance v0, Lbkv;

    invoke-direct {v0, p0, v3, p1, p3}, Lbkv;-><init>(Lbkf;Lcom/facebook/GraphRequest;Lbls;Lblo;)V

    invoke-virtual {v3, v0}, Lcom/facebook/GraphRequest;->a(Lbim;)V

    move-object v0, v3

    .line 250
    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .prologue
    .line 50
    sput-object p0, Lbkq;->f:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lbkq;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lbks;

    invoke-direct {v1}, Lbks;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method

.method public static a(Lbkf;Lbkl;)V
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lbkq;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lbku;

    invoke-direct {v1, p0, p1}, Lbku;-><init>(Lbkf;Lbkl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method

.method static synthetic a(Lbkf;Lcom/facebook/GraphRequest;Lbix;Lbls;Lblo;)V
    .locals 0

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3, p4}, Lbkq;->b(Lbkf;Lcom/facebook/GraphRequest;Lbix;Lbls;Lblo;)V

    return-void
.end method

.method public static a(Lblm;)V
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lbkq;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lbkt;

    invoke-direct {v1, p0}, Lbkt;-><init>(Lblm;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method public static b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lbkf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    sget-object v0, Lbkq;->d:Lbkp;

    invoke-virtual {v0}, Lbkp;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lbkf;Lcom/facebook/GraphRequest;Lbix;Lbls;Lblo;)V
    .locals 10

    .prologue
    .line 259
    invoke-virtual {p2}, Lbix;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v3

    .line 260
    const-string v1, "Success"

    .line 262
    sget-object v0, Lbln;->SUCCESS:Lbln;

    .line 264
    if-eqz v3, :cond_5

    .line 266
    invoke-virtual {v3}, Lcom/facebook/FacebookRequestError;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 267
    const-string v1, "Failed: No Connectivity"

    .line 268
    sget-object v0, Lbln;->NO_CONNECTIVITY:Lbln;

    move-object v2, v1

    move-object v1, v0

    .line 277
    :goto_0
    sget-object v0, Lbjb;->APP_EVENTS:Lbjb;

    invoke-static {v0}, Lbhv;->c(Lbjb;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 282
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 283
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 288
    :goto_1
    sget-object v4, Lbjb;->APP_EVENTS:Lbjb;

    sget-object v5, Lbkq;->a:Ljava/lang/String;

    const-string v6, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 290
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->a()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v2, 0x2

    aput-object v0, v7, v2

    .line 288
    invoke-static {v4, v5, v6, v7}, Lbpu;->a(Lbjb;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    :cond_0
    if-eqz v3, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p3, v0}, Lbls;->a(Z)V

    .line 297
    sget-object v0, Lbln;->NO_CONNECTIVITY:Lbln;

    if-ne v1, v0, :cond_1

    .line 303
    invoke-static {}, Lbhv;->f()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lbkw;

    invoke-direct {v2, p0, p3}, Lbkw;-><init>(Lbkf;Lbls;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 311
    :cond_1
    sget-object v0, Lbln;->SUCCESS:Lbln;

    if-eq v1, v0, :cond_2

    .line 313
    iget-object v0, p4, Lblo;->b:Lbln;

    sget-object v2, Lbln;->NO_CONNECTIVITY:Lbln;

    if-eq v0, v2, :cond_2

    .line 314
    iput-object v1, p4, Lblo;->b:Lbln;

    .line 317
    :cond_2
    return-void

    .line 270
    :cond_3
    const-string v0, "Failed:\n  Response: %s\n  Error %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 271
    invoke-virtual {p2}, Lbix;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    .line 272
    invoke-virtual {v3}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 270
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 273
    sget-object v0, Lbln;->SERVER_ERROR:Lbln;

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    const-string v0, "<Can\'t encode events for debug logging>"

    goto :goto_1

    .line 295
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    move-object v2, v1

    move-object v1, v0

    goto :goto_0
.end method

.method static b(Lblm;)V
    .locals 4

    .prologue
    .line 127
    invoke-static {}, Lbkx;->a()Lblp;

    move-result-object v0

    .line 129
    sget-object v1, Lbkq;->d:Lbkp;

    invoke-virtual {v1, v0}, Lbkp;->a(Lblp;)V

    .line 134
    :try_start_0
    sget-object v0, Lbkq;->d:Lbkp;

    invoke-static {p0, v0}, Lbkq;->a(Lblm;Lbkp;)Lblo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.facebook.sdk.APP_EVENTS_FLUSHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    const-string v2, "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

    iget v3, v0, Lblo;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    const-string v2, "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

    iget-object v0, v0, Lblo;->b:Lbln;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 150
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v0

    .line 151
    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    sget-object v1, Lbkq;->a:Ljava/lang/String;

    const-string v2, "Caught unexpected exception while flushing app events: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic c()Lbkp;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lbkq;->d:Lbkp;

    return-object v0
.end method

.method static synthetic d()Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lbkq;->f:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lbkq;->g:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic f()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lbkq;->e:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method
