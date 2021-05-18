.class public abstract Lmgf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final g:I = 0x1


# instance fields
.field private final a:J

.field private final b:J

.field private c:J

.field private d:J

.field private e:Z

.field private f:Z

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v0, p0, Lmgf;->e:Z

    .line 70
    iput-boolean v0, p0, Lmgf;->f:Z

    .line 144
    new-instance v0, Lmgg;

    invoke-direct {v0, p0}, Lmgg;-><init>(Lmgf;)V

    iput-object v0, p0, Lmgf;->h:Landroid/os/Handler;

    .line 80
    iput-wide p1, p0, Lmgf;->a:J

    .line 81
    iput-wide p3, p0, Lmgf;->b:J

    .line 82
    return-void
.end method

.method static synthetic a(Lmgf;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lmgf;->f:Z

    return v0
.end method

.method static synthetic b(Lmgf;)J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lmgf;->c:J

    return-wide v0
.end method

.method static synthetic c(Lmgf;)J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lmgf;->b:J

    return-wide v0
.end method

.method static synthetic d(Lmgf;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lmgf;->e:Z

    return v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(J)V
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 90
    iget-object v0, p0, Lmgf;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 91
    iput-boolean v1, p0, Lmgf;->e:Z

    .line 92
    return-void
.end method

.method public final declared-synchronized c()Lmgf;
    .locals 4

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lmgf;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lmgf;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    .line 106
    :goto_0
    monitor-exit p0

    return-object v0

    .line 102
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lmgf;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmgf;->c:J

    .line 103
    iget-object v0, p0, Lmgf;->h:Landroid/os/Handler;

    iget-object v1, p0, Lmgf;->h:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmgf;->e:Z

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmgf;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    .line 106
    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()J
    .locals 4

    .prologue
    .line 113
    iget-wide v0, p0, Lmgf;->c:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lmgf;->d:J

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmgf;->f:Z

    .line 115
    iget-wide v0, p0, Lmgf;->d:J

    return-wide v0
.end method

.method public e()J
    .locals 4

    .prologue
    .line 122
    iget-wide v0, p0, Lmgf;->d:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmgf;->c:J

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmgf;->f:Z

    .line 124
    iget-object v0, p0, Lmgf;->h:Landroid/os/Handler;

    iget-object v1, p0, Lmgf;->h:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 125
    iget-wide v0, p0, Lmgf;->d:J

    return-wide v0
.end method
