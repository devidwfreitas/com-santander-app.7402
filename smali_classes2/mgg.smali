.class Lmgg;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lmgf;


# direct methods
.method constructor <init>(Lmgf;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lmgg;->a:Lmgf;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 149
    iget-object v2, p0, Lmgg;->a:Lmgf;

    monitor-enter v2

    .line 150
    :try_start_0
    iget-object v0, p0, Lmgg;->a:Lmgf;

    invoke-static {v0}, Lmgf;->a(Lmgf;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lmgg;->a:Lmgf;

    invoke-static {v0}, Lmgf;->b(Lmgf;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 153
    cmp-long v3, v0, v6

    if-gtz v3, :cond_1

    .line 154
    iget-object v0, p0, Lmgg;->a:Lmgf;

    invoke-virtual {v0}, Lmgf;->a()V

    .line 174
    :cond_0
    :goto_0
    monitor-exit v2

    .line 175
    return-void

    .line 155
    :cond_1
    iget-object v3, p0, Lmgg;->a:Lmgf;

    invoke-static {v3}, Lmgf;->c(Lmgf;)J

    move-result-wide v4

    cmp-long v3, v0, v4

    if-gez v3, :cond_2

    .line 157
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lmgg;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v1}, Lmgg;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 159
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 160
    iget-object v3, p0, Lmgg;->a:Lmgf;

    invoke-virtual {v3, v0, v1}, Lmgf;->a(J)V

    .line 163
    iget-object v0, p0, Lmgg;->a:Lmgf;

    invoke-static {v0}, Lmgf;->c(Lmgf;)J

    move-result-wide v0

    add-long/2addr v0, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 167
    :goto_1
    cmp-long v3, v0, v6

    if-gez v3, :cond_3

    iget-object v3, p0, Lmgg;->a:Lmgf;

    invoke-static {v3}, Lmgf;->c(Lmgf;)J

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_1

    .line 169
    :cond_3
    iget-object v3, p0, Lmgg;->a:Lmgf;

    invoke-static {v3}, Lmgf;->d(Lmgf;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 170
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lmgg;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v1}, Lmgg;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
