.class public Ldhk;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Ldhl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldhk;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ldhk;->b:Ldhl;

    return-void
.end method


# virtual methods
.method public a(Ldhd;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldhd",
            "<TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldhk;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ldhd;->b()Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ldhk;->b:Ldhl;

    invoke-virtual {p1, v0}, Ldhd;->a(Ldhl;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldhk;->a:Z

    if-eqz v0, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->e:Lcyc;

    const-string v1, "com.google.android.gms.flags"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Lcyc;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0

    const-string v1, "com.google.android.gms.flags.impl.FlagProviderImpl"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ldhm;->asInterface(Landroid/os/IBinder;)Ldhl;

    move-result-object v0

    iput-object v0, p0, Ldhk;->b:Ldhl;

    iget-object v0, p0, Ldhk;->b:Ldhl;

    invoke-static {p1}, Lcxo;->a(Ljava/lang/Object;)Lcwx;

    move-result-object v1

    invoke-interface {v0, v1}, Ldhl;->init(Lcwx;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldhk;->a:Z
    :try_end_1
    .catch Lcyb; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :goto_2
    :try_start_3
    const-string v1, "FlagValueProvider"

    const-string v2, "Failed to initialize flags module."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method
