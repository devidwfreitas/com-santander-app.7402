.class final Lbuq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lbum;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbut;


# direct methods
.method constructor <init>(Lbut;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lbuq;->a:Lbut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lbum;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 162
    new-instance v1, Lbum;

    invoke-direct {v1}, Lbum;-><init>()V

    .line 164
    :try_start_0
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v0

    .line 165
    iget-object v2, p0, Lbuq;->a:Lbut;

    invoke-static {v0, v2}, Lbva;->a(Landroid/content/Context;Lbut;)Lbuf;

    move-result-object v2

    .line 167
    invoke-interface {v2}, Lbuf;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :try_start_1
    invoke-interface {v2}, Lbuf;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :try_start_2
    iget-object v0, p0, Lbuq;->a:Lbut;

    invoke-virtual {v0}, Lbut;->m()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    :goto_0
    :try_start_3
    invoke-interface {v2}, Lbuf;->c()V

    .line 180
    invoke-interface {v2}, Lbuf;->d()I

    move-result v0

    .line 181
    if-nez v0, :cond_0

    .line 182
    invoke-interface {v2}, Lbuf;->e()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lbum;->g:Ljava/util/List;

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, v1, Lbum;->f:Z

    .line 198
    :goto_1
    return-object v1

    .line 177
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Lbuf;->c()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    const-string v2, "Exception scanning for bluetooth beacons"

    invoke-static {v2, v0}, Lbun;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    iput-boolean v6, v1, Lbum;->f:Z

    goto :goto_1

    .line 185
    :cond_0
    :try_start_4
    invoke-static {}, Lbhv;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    const-string v2, "LocationPackageManager"

    const-string v3, "Bluetooth LE scan failed with error: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 190
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 188
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, v1, Lbum;->f:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 173
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lbuq;->a()Lbum;

    move-result-object v0

    return-object v0
.end method
