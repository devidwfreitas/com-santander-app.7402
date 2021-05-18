.class public final Ldxj;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Ldxj;->a:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x0

    const-class v1, Ldxj;

    monitor-enter v1

    :try_start_0
    const-string v2, "Context is null"

    invoke-static {p0, v2}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Ldxj;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    invoke-static {p0}, Leao;->a(Landroid/content/Context;)Leas;
    :try_end_1
    .catch Lcop; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    invoke-static {v2}, Ldxj;->a(Leas;)V

    const/4 v2, 0x1

    sput-boolean v2, Ldxj;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    iget v0, v0, Lcop;->a:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static a(Leas;)V
    .locals 2

    :try_start_0
    invoke-interface {p0}, Leas;->a()Ldyl;

    move-result-object v0

    invoke-static {v0}, Ldva;->a(Ldyl;)V

    invoke-interface {p0}, Leas;->b()Leej;

    move-result-object v0

    invoke-static {v0}, Ledn;->a(Leej;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
