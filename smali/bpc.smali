.class public Lbpc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0x8

.field private static final b:I = 0x2

.field private static c:Landroid/os/Handler;

.field private static d:Lbri;

.field private static e:Lbri;

.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lbph;",
            "Lbpg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lbri;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lbri;-><init>(I)V

    sput-object v0, Lbpc;->d:Lbri;

    .line 50
    new-instance v0, Lbri;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lbri;-><init>(I)V

    sput-object v0, Lbpc;->e:Lbri;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lbpc;->f:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 296
    const-class v1, Lbpc;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lbpc;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lbpc;->c:Landroid/os/Handler;

    .line 299
    :cond_0
    sget-object v0, Lbpc;->c:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Lbph;)Lbpg;
    .locals 2

    .prologue
    .line 303
    sget-object v1, Lbpc;->f:Ljava/util/Map;

    monitor-enter v1

    .line 304
    :try_start_0
    sget-object v0, Lbpc;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpg;

    monitor-exit v1

    return-object v0

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 119
    invoke-static {p0}, Lbpn;->b(Landroid/content/Context;)V

    .line 120
    invoke-static {}, Lbqp;->b()V

    .line 121
    return-void
.end method

.method static synthetic a(Lbph;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 45
    invoke-static {p0, p1}, Lbpc;->b(Lbph;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lbph;Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Lbpc;->b(Lbph;Landroid/content/Context;Z)V

    return-void
.end method

.method private static a(Lbph;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V
    .locals 7

    .prologue
    .line 171
    invoke-static {p0}, Lbpc;->a(Lbph;)Lbpg;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lbpg;->c:Z

    if-nez v1, :cond_0

    .line 173
    iget-object v1, v0, Lbpg;->b:Lbpi;

    .line 174
    invoke-virtual {v1}, Lbpi;->c()Lbpl;

    move-result-object v5

    .line 175
    if-eqz v5, :cond_0

    .line 176
    invoke-static {}, Lbpc;->a()Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lbpd;

    move-object v2, p1

    move v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lbpd;-><init>(Lbpi;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lbpl;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    :cond_0
    return-void
.end method

.method public static a(Lbpi;)V
    .locals 3

    .prologue
    .line 60
    if-nez p0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v1, Lbph;

    invoke-virtual {p0}, Lbpi;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lbpi;->e()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lbph;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 71
    sget-object v2, Lbpc;->f:Ljava/util/Map;

    monitor-enter v2

    .line 72
    :try_start_0
    sget-object v0, Lbpc;->f:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpg;

    .line 73
    if-eqz v0, :cond_1

    .line 74
    iput-object p0, v0, Lbpg;->b:Lbpi;

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, v0, Lbpg;->c:Z

    .line 76
    iget-object v0, v0, Lbpg;->a:Lbrk;

    invoke-interface {v0}, Lbrk;->c()V

    .line 80
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 78
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lbpi;->d()Z

    move-result v0

    invoke-static {p0, v1, v0}, Lbpc;->a(Lbpi;Lbph;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static a(Lbpi;Lbph;)V
    .locals 3

    .prologue
    .line 135
    sget-object v0, Lbpc;->d:Lbri;

    new-instance v1, Lbpf;

    .line 139
    invoke-virtual {p0}, Lbpi;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lbpf;-><init>(Landroid/content/Context;Lbph;)V

    .line 135
    invoke-static {p0, p1, v0, v1}, Lbpc;->a(Lbpi;Lbph;Lbri;Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method private static a(Lbpi;Lbph;Lbri;Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 147
    sget-object v1, Lbpc;->f:Ljava/util/Map;

    monitor-enter v1

    .line 148
    :try_start_0
    new-instance v0, Lbpg;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lbpg;-><init>(Lbpd;)V

    .line 149
    iput-object p0, v0, Lbpg;->b:Lbpi;

    .line 150
    sget-object v2, Lbpc;->f:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-virtual {p2, p3}, Lbri;->a(Ljava/lang/Runnable;)Lbrk;

    move-result-object v2

    iput-object v2, v0, Lbpg;->a:Lbrk;

    .line 161
    monitor-exit v1

    .line 162
    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Lbpi;Lbph;Z)V
    .locals 3

    .prologue
    .line 127
    sget-object v0, Lbpc;->e:Lbri;

    new-instance v1, Lbpe;

    .line 131
    invoke-virtual {p0}, Lbpi;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lbpe;-><init>(Landroid/content/Context;Lbph;Z)V

    .line 127
    invoke-static {p0, p1, v0, v1}, Lbpc;->a(Lbpi;Lbph;Lbri;Ljava/lang/Runnable;)V

    .line 132
    return-void
.end method

.method private static b(Lbph;Landroid/content/Context;)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 225
    .line 229
    const/4 v1, 0x1

    .line 232
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v4, p0, Lbph;->a:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-static {v0}, Lcom/ca/android/app/CaMDOHTTPClient;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 234
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 236
    invoke-static {v0}, Lcom/ca/android/app/CaMDOHTTPClient;->getResponseCode(Ljava/net/HttpURLConnection;)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 266
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v5

    .line 267
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    if-eqz v5, :cond_3

    .line 269
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 270
    const/16 v7, 0x80

    new-array v7, v7, [C

    .line 272
    :goto_0
    const/4 v8, 0x0

    array-length v9, v7

    invoke-virtual {v4, v7, v8, v9}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v8

    if-lez v8, :cond_2

    .line 273
    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v4

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    .line 286
    :goto_1
    invoke-static {v5}, Lbqq;->a(Ljava/io/Closeable;)V

    .line 287
    invoke-static {v4}, Lbqq;->a(Ljava/net/URLConnection;)V

    move-object v4, v0

    .line 290
    :goto_2
    if-eqz v1, :cond_0

    .line 291
    invoke-static {p0, v4, v3, v2}, Lbpc;->a(Lbph;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    .line 293
    :cond_0
    return-void

    .line 242
    :sswitch_0
    :try_start_3
    const-string v1, "location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-static {v1}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 244
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 245
    iget-object v4, p0, Lbph;->a:Landroid/net/Uri;

    invoke-static {v4, v1}, Lbqp;->a(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 249
    invoke-static {p0}, Lbpc;->a(Lbph;)Lbpg;

    move-result-object v4

    .line 250
    if-eqz v4, :cond_1

    iget-boolean v5, v4, Lbpg;->c:Z

    if-nez v5, :cond_1

    .line 251
    iget-object v4, v4, Lbpg;->b:Lbpi;

    new-instance v5, Lbph;

    iget-object v6, p0, Lbph;->b:Ljava/lang/Object;

    invoke-direct {v5, v1, v6}, Lbph;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v4, v5, v1}, Lbpc;->a(Lbpi;Lbph;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    move v1, v2

    move-object v4, v3

    move-object v5, v3

    .line 286
    :goto_3
    invoke-static {v5}, Lbqq;->a(Ljava/io/Closeable;)V

    .line 287
    invoke-static {v0}, Lbqq;->a(Ljava/net/URLConnection;)V

    goto :goto_2

    .line 261
    :sswitch_1
    :try_start_4
    invoke-static {p1, v0}, Lbpn;->a(Landroid/content/Context;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v5

    .line 262
    :try_start_5
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    .line 263
    goto :goto_3

    .line 275
    :cond_2
    invoke-static {v4}, Lbqq;->a(Ljava/io/Closeable;)V

    .line 280
    :goto_4
    new-instance v4, Lbhp;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lbhp;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 286
    :catchall_0
    move-exception v1

    move-object v3, v5

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_5
    invoke-static {v3}, Lbqq;->a(Ljava/io/Closeable;)V

    .line 287
    invoke-static {v1}, Lbqq;->a(Ljava/net/URLConnection;)V

    throw v0

    .line 277
    :cond_3
    :try_start_6
    sget v4, Lbjx;->com_facebook_image_download_unknown_error:I

    .line 278
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 277
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 286
    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_5

    .line 283
    :catch_1
    move-exception v0

    move-object v5, v3

    move-object v4, v3

    goto :goto_1

    :catch_2
    move-exception v4

    move-object v5, v3

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    goto/16 :goto_1

    :catch_3
    move-exception v1

    move-object v5, v3

    move-object v4, v0

    move-object v0, v1

    move v1, v2

    goto/16 :goto_1

    :cond_4
    move v1, v2

    move-object v4, v3

    move-object v5, v3

    goto :goto_3

    .line 236
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x12d -> :sswitch_0
        0x12e -> :sswitch_0
    .end sparse-switch
.end method

.method private static b(Lbph;Landroid/content/Context;Z)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 195
    .line 197
    if-eqz p2, :cond_4

    .line 198
    iget-object v1, p0, Lbph;->a:Landroid/net/Uri;

    invoke-static {v1}, Lbqp;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 199
    if-eqz v1, :cond_4

    .line 200
    invoke-static {v1, p1}, Lbpn;->a(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    .line 201
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    move v4, v0

    move-object v0, v1

    move v1, v4

    .line 205
    :goto_0
    if-nez v1, :cond_1

    .line 206
    iget-object v0, p0, Lbph;->a:Landroid/net/Uri;

    invoke-static {v0, p1}, Lbpn;->a(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v0

    .line 209
    :cond_1
    if-eqz v0, :cond_3

    .line 211
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 212
    invoke-static {v0}, Lbqq;->a(Ljava/io/Closeable;)V

    .line 213
    invoke-static {p0, v2, v3, v1}, Lbpc;->a(Lbph;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    .line 222
    :cond_2
    :goto_1
    return-void

    .line 217
    :cond_3
    invoke-static {p0}, Lbpc;->a(Lbph;)Lbpg;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lbpg;->c:Z

    if-nez v1, :cond_2

    .line 219
    iget-object v0, v0, Lbpg;->b:Lbpi;

    invoke-static {v0, p0}, Lbpc;->a(Lbpi;Lbph;)V

    goto :goto_1

    :cond_4
    move v1, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public static b(Lbpi;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 84
    const/4 v2, 0x0

    .line 85
    new-instance v3, Lbph;

    invoke-virtual {p0}, Lbpi;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lbpi;->e()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lbph;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 86
    sget-object v4, Lbpc;->f:Ljava/util/Map;

    monitor-enter v4

    .line 87
    :try_start_0
    sget-object v0, Lbpc;->f:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpg;

    .line 88
    if-eqz v0, :cond_1

    .line 95
    iget-object v2, v0, Lbpg;->a:Lbrk;

    invoke-interface {v2}, Lbrk;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    sget-object v0, Lbpc;->f:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 103
    :goto_0
    monitor-exit v4

    .line 105
    return v0

    .line 100
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lbpg;->c:Z

    move v0, v1

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static c(Lbpi;)V
    .locals 3

    .prologue
    .line 109
    new-instance v0, Lbph;

    invoke-virtual {p0}, Lbpi;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lbpi;->e()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbph;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 110
    sget-object v1, Lbpc;->f:Ljava/util/Map;

    monitor-enter v1

    .line 111
    :try_start_0
    sget-object v2, Lbpc;->f:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpg;

    .line 112
    if-eqz v0, :cond_0

    .line 113
    iget-object v0, v0, Lbpg;->a:Lbrk;

    invoke-interface {v0}, Lbrk;->c()V

    .line 115
    :cond_0
    monitor-exit v1

    .line 116
    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
