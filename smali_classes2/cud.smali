.class final Lcud;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcuc;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Z

.field private e:Landroid/os/IBinder;

.field private final f:Lcub;

.field private g:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Lcuc;Lcub;)V
    .locals 1

    iput-object p1, p0, Lcud;->a:Lcuc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcud;->f:Lcub;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcud;->b:Ljava/util/Set;

    const/4 v0, 0x2

    iput v0, p0, Lcud;->c:I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcud;->a:Lcuc;

    invoke-static {v0}, Lcuc;->d(Lcuc;)Lcvf;

    move-result-object v0

    iget-object v1, p0, Lcud;->a:Lcuc;

    invoke-static {v1}, Lcuc;->c(Lcuc;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcud;->f:Lcub;

    invoke-virtual {v2}, Lcub;->c()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcvf;->a(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Intent;)V

    iget-object v0, p0, Lcud;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x3

    iput v0, p0, Lcud;->c:I

    iget-object v0, p0, Lcud;->a:Lcuc;

    invoke-static {v0}, Lcuc;->d(Lcuc;)Lcvf;

    move-result-object v0

    iget-object v1, p0, Lcud;->a:Lcuc;

    invoke-static {v1}, Lcuc;->c(Lcuc;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcud;->f:Lcub;

    invoke-virtual {v2}, Lcub;->c()Landroid/content/Intent;

    move-result-object v3

    const/16 v5, 0x81

    move-object v2, p1

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcvf;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcud;->d:Z

    iget-boolean v0, p0, Lcud;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcud;->a:Lcuc;

    invoke-static {v0}, Lcuc;->b(Lcuc;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcud;->f:Lcub;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcud;->a:Lcuc;

    invoke-static {v1}, Lcuc;->b(Lcuc;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcud;->a:Lcuc;

    invoke-static {v2}, Lcuc;->e(Lcuc;)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcud;->c:I

    :try_start_0
    iget-object v0, p0, Lcud;->a:Lcuc;

    invoke-static {v0}, Lcuc;->d(Lcuc;)Lcvf;

    move-result-object v0

    iget-object v1, p0, Lcud;->a:Lcuc;

    invoke-static {v1}, Lcuc;->c(Lcuc;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcvf;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcud;->d:Z

    return v0
.end method

.method public a(Landroid/content/ServiceConnection;)Z
    .locals 1

    iget-object v0, p0, Lcud;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcud;->c:I

    return v0
.end method

.method public b(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcud;->a:Lcuc;

    invoke-static {v0}, Lcuc;->d(Lcuc;)Lcvf;

    move-result-object v0

    iget-object v1, p0, Lcud;->a:Lcuc;

    invoke-static {v1}, Lcuc;->c(Lcuc;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcvf;->b(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcud;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcud;->a:Lcuc;

    invoke-static {v0}, Lcuc;->b(Lcuc;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcud;->f:Lcub;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcud;->a:Lcuc;

    invoke-static {v0}, Lcuc;->d(Lcuc;)Lcvf;

    move-result-object v0

    iget-object v1, p0, Lcud;->a:Lcuc;

    invoke-static {v1}, Lcuc;->c(Lcuc;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcvf;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcud;->d:Z

    const/4 v0, 0x2

    iput v0, p0, Lcud;->c:I

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcud;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public d()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcud;->e:Landroid/os/IBinder;

    return-object v0
.end method

.method public e()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcud;->g:Landroid/content/ComponentName;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lcud;->a:Lcuc;

    invoke-static {v0}, Lcuc;->a(Lcuc;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcud;->a:Lcuc;

    invoke-static {v0}, Lcuc;->b(Lcuc;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcud;->f:Lcub;

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-object p2, p0, Lcud;->e:Landroid/os/IBinder;

    iput-object p1, p0, Lcud;->g:Landroid/content/ComponentName;

    iget-object v0, p0, Lcud;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcud;->c:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v0, p0, Lcud;->a:Lcuc;

    invoke-static {v0}, Lcuc;->a(Lcuc;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcud;->a:Lcuc;

    invoke-static {v0}, Lcuc;->b(Lcuc;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcud;->f:Lcub;

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcud;->e:Landroid/os/IBinder;

    iput-object p1, p0, Lcud;->g:Landroid/content/ComponentName;

    iget-object v0, p0, Lcud;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x2

    :try_start_1
    iput v0, p0, Lcud;->c:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
