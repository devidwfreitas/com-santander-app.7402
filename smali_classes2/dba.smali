.class Ldba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldaz;


# direct methods
.method constructor <init>(Ldaz;)V
    .locals 0

    iput-object p1, p0, Ldba;->a:Ldaz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ldba;->a:Ldaz;

    invoke-static {v0}, Ldaz;->a(Ldaz;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Ldba;->a:Ldaz;

    invoke-static {v0}, Ldaz;->b(Ldaz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ldba;->a:Ldaz;

    invoke-static {v0}, Ldaz;->a(Ldaz;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldba;->a:Ldaz;

    invoke-static {v1}, Ldaz;->a(Ldaz;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
