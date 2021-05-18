.class public final Lctj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lctb;

.field private final b:I


# direct methods
.method public constructor <init>(Lctb;I)V
    .locals 0

    iput-object p1, p0, Lctj;->a:Lctb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lctj;->b:I

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lctj;->a:Lctb;

    const/16 v1, 0x8

    iget v2, p0, Lctj;->b:I

    invoke-virtual {v0, v1, v3, v2}, Lctb;->a(ILandroid/os/Bundle;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lctj;->a:Lctb;

    invoke-static {v0}, Lctb;->a(Lctb;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lctj;->a:Lctb;

    invoke-static {p2}, Lcus;->a(Landroid/os/IBinder;)Lcur;

    move-result-object v2

    invoke-static {v0, v2}, Lctb;->a(Lctb;Lcur;)Lcur;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lctj;->a:Lctb;

    const/4 v1, 0x0

    iget v2, p0, Lctj;->b:I

    invoke-virtual {v0, v1, v3, v2}, Lctb;->a(ILandroid/os/Bundle;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    iget-object v0, p0, Lctj;->a:Lctb;

    invoke-static {v0}, Lctb;->a(Lctb;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lctj;->a:Lctb;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lctb;->a(Lctb;Lcur;)Lcur;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lctj;->a:Lctb;

    iget-object v0, v0, Lctb;->a:Landroid/os/Handler;

    iget-object v1, p0, Lctj;->a:Lctb;

    iget-object v1, v1, Lctb;->a:Landroid/os/Handler;

    const/4 v2, 0x4

    iget v3, p0, Lctj;->b:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
