.class public final Ldho;
.super Ljava/lang/Object;


# static fields
.field private static a:Ldho;


# instance fields
.field private final b:Ldhj;

.field private final c:Ldhk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldho;

    invoke-direct {v0}, Ldho;-><init>()V

    invoke-static {v0}, Ldho;->a(Ldho;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldhj;

    invoke-direct {v0}, Ldhj;-><init>()V

    iput-object v0, p0, Ldho;->b:Ldhj;

    new-instance v0, Ldhk;

    invoke-direct {v0}, Ldhk;-><init>()V

    iput-object v0, p0, Ldho;->c:Ldhk;

    return-void
.end method

.method public static a()Ldhj;
    .locals 1

    invoke-static {}, Ldho;->c()Ldho;

    move-result-object v0

    iget-object v0, v0, Ldho;->b:Ldhj;

    return-object v0
.end method

.method protected static a(Ldho;)V
    .locals 2

    const-class v1, Ldho;

    monitor-enter v1

    :try_start_0
    sput-object p0, Ldho;->a:Ldho;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b()Ldhk;
    .locals 1

    invoke-static {}, Ldho;->c()Ldho;

    move-result-object v0

    iget-object v0, v0, Ldho;->c:Ldhk;

    return-object v0
.end method

.method private static c()Ldho;
    .locals 2

    const-class v1, Ldho;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldho;->a:Ldho;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
