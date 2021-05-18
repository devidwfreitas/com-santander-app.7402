.class Ldek;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcqg;

.field final synthetic b:Ldej;


# direct methods
.method constructor <init>(Ldej;Lcqg;)V
    .locals 0

    iput-object p1, p0, Ldek;->b:Ldej;

    iput-object p2, p0, Ldek;->a:Lcqg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    sget-object v0, Ldat;->a:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Ldek;->b:Ldej;

    invoke-static {v0}, Ldej;->a(Ldej;)Lcqj;

    move-result-object v0

    iget-object v1, p0, Ldek;->a:Lcqg;

    invoke-virtual {v0, v1}, Lcqj;->a(Lcqg;)Lcpy;

    move-result-object v0

    iget-object v1, p0, Ldek;->b:Ldej;

    invoke-static {v1}, Ldej;->b(Ldej;)Ldel;

    move-result-object v1

    iget-object v2, p0, Ldek;->b:Ldej;

    invoke-static {v2}, Ldej;->b(Ldej;)Ldel;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ldel;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldel;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Ldat;->a:Ljava/lang/ThreadLocal;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Ldek;->b:Ldej;

    iget-object v1, p0, Ldek;->a:Lcqg;

    invoke-static {v0, v1}, Ldej;->a(Ldej;Lcqg;)V

    iget-object v0, p0, Ldek;->b:Ldej;

    invoke-static {v0}, Ldej;->c(Ldej;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpt;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ldek;->b:Ldej;

    invoke-virtual {v0, v1}, Lcpt;->b(Ldej;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Ldek;->b:Ldej;

    invoke-static {v1}, Ldej;->b(Ldej;)Ldel;

    move-result-object v1

    iget-object v2, p0, Ldek;->b:Ldej;

    invoke-static {v2}, Ldej;->b(Ldej;)Ldel;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Ldel;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldel;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Ldat;->a:Ljava/lang/ThreadLocal;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Ldek;->b:Ldej;

    iget-object v1, p0, Ldek;->a:Lcqg;

    invoke-static {v0, v1}, Ldej;->a(Ldej;Lcqg;)V

    iget-object v0, p0, Ldek;->b:Ldej;

    invoke-static {v0}, Ldej;->c(Ldej;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpt;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ldek;->b:Ldej;

    invoke-virtual {v0, v1}, Lcpt;->b(Ldej;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    sget-object v0, Ldat;->a:Ljava/lang/ThreadLocal;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Ldek;->b:Ldej;

    iget-object v2, p0, Ldek;->a:Lcqg;

    invoke-static {v0, v2}, Ldej;->a(Ldej;Lcqg;)V

    iget-object v0, p0, Ldek;->b:Ldej;

    invoke-static {v0}, Ldej;->c(Ldej;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpt;

    if-eqz v0, :cond_1

    iget-object v2, p0, Ldek;->b:Ldej;

    invoke-virtual {v0, v2}, Lcpt;->b(Ldej;)V

    :cond_1
    throw v1
.end method
