.class final Lbkr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-static {v0}, Lbkq;->a(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 67
    invoke-static {}, Lbla;->a()Lblf;

    move-result-object v0

    sget-object v1, Lblf;->EXPLICIT_ONLY:Lblf;

    if-eq v0, v1, :cond_0

    .line 69
    sget-object v0, Lblm;->TIMER:Lblm;

    invoke-static {v0}, Lbkq;->b(Lblm;)V

    .line 71
    :cond_0
    return-void
.end method
