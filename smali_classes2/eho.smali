.class Leho;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Legv;

.field final synthetic b:Lehn;


# direct methods
.method constructor <init>(Lehn;Legv;)V
    .locals 0

    iput-object p1, p0, Leho;->b:Lehn;

    iput-object p2, p0, Leho;->a:Legv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Leho;->b:Lehn;

    invoke-static {v0}, Lehn;->a(Lehn;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Leho;->b:Lehn;

    invoke-static {v0}, Lehn;->b(Lehn;)Legt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leho;->b:Lehn;

    invoke-static {v0}, Lehn;->b(Lehn;)Legt;

    move-result-object v0

    iget-object v2, p0, Leho;->a:Legv;

    invoke-virtual {v2}, Legv;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Legt;->a(Ljava/lang/Object;)V

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
