.class final Lblx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(JLandroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 214
    iput-wide p1, p0, Lblx;->a:J

    iput-object p3, p0, Lblx;->b:Landroid/content/Context;

    iput-object p4, p0, Lblx;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 217
    invoke-static {}, Lblt;->c()Lbmd;

    move-result-object v2

    if-nez v2, :cond_0

    .line 220
    new-instance v2, Lbmd;

    iget-wide v4, p0, Lblx;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lbmd;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v2}, Lblt;->a(Lbmd;)Lbmd;

    .line 223
    :cond_0
    invoke-static {}, Lblt;->c()Lbmd;

    move-result-object v2

    iget-wide v4, p0, Lblx;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbmd;->b(Ljava/lang/Long;)V

    .line 224
    invoke-static {}, Lblt;->f()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-gtz v2, :cond_1

    .line 228
    new-instance v2, Lbly;

    invoke-direct {v2, p0}, Lbly;-><init>(Lblx;)V

    .line 244
    invoke-static {}, Lblt;->g()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    .line 246
    invoke-static {}, Lblt;->e()I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 244
    invoke-interface {v3, v2, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    invoke-static {v2}, Lblt;->a(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 251
    :cond_1
    invoke-static {}, Lblt;->h()J

    move-result-wide v2

    .line 252
    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    iget-wide v0, p0, Lblx;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 255
    :cond_2
    iget-object v2, p0, Lblx;->c:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lbma;->a(Ljava/lang/String;J)V

    .line 260
    invoke-static {}, Lblt;->c()Lbmd;

    move-result-object v0

    invoke-virtual {v0}, Lbmd;->k()V

    .line 261
    return-void
.end method
