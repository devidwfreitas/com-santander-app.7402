.class final Lbku;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbkf;

.field final synthetic b:Lbkl;


# direct methods
.method constructor <init>(Lbkf;Lbkl;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lbku;->a:Lbkf;

    iput-object p2, p0, Lbku;->b:Lbkl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 100
    invoke-static {}, Lbkq;->c()Lbkp;

    move-result-object v0

    iget-object v1, p0, Lbku;->a:Lbkf;

    iget-object v2, p0, Lbku;->b:Lbkl;

    invoke-virtual {v0, v1, v2}, Lbkp;->a(Lbkf;Lbkl;)V

    .line 102
    invoke-static {}, Lbla;->a()Lblf;

    move-result-object v0

    sget-object v1, Lblf;->EXPLICIT_ONLY:Lblf;

    if-eq v0, v1, :cond_1

    .line 104
    invoke-static {}, Lbkq;->c()Lbkp;

    move-result-object v0

    invoke-virtual {v0}, Lbkp;->b()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 106
    sget-object v0, Lblm;->EVENT_THRESHOLD:Lblm;

    invoke-static {v0}, Lbkq;->b(Lblm;)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-static {}, Lbkq;->d()Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-nez v0, :cond_0

    .line 108
    invoke-static {}, Lbkq;->f()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 109
    invoke-static {}, Lbkq;->e()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xf

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 108
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-static {v0}, Lbkq;->a(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method
