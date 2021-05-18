.class Lehk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Legv;

.field final synthetic b:Lehj;


# direct methods
.method constructor <init>(Lehj;Legv;)V
    .locals 0

    iput-object p1, p0, Lehk;->b:Lehj;

    iput-object p2, p0, Lehk;->a:Legv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lehk;->b:Lehj;

    invoke-static {v0}, Lehj;->a(Lehj;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lehk;->b:Lehj;

    invoke-static {v0}, Lehj;->b(Lehj;)Legr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lehk;->b:Lehj;

    invoke-static {v0}, Lehj;->b(Lehj;)Legr;

    move-result-object v0

    iget-object v2, p0, Lehk;->a:Legv;

    invoke-interface {v0, v2}, Legr;->a(Legv;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
