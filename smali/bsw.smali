.class Lbsw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lbso;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Lbso;
    .locals 1

    .prologue
    .line 733
    invoke-static {p0}, Lbsw;->b(Landroid/content/Context;)Lbso;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized b(Landroid/content/Context;)Lbso;
    .locals 3

    .prologue
    .line 737
    const-class v1, Lbsw;

    monitor-enter v1

    if-eqz p0, :cond_0

    .line 738
    :goto_0
    if-nez p0, :cond_1

    .line 739
    const/4 v0, 0x0

    .line 744
    :goto_1
    monitor-exit v1

    return-object v0

    .line 737
    :cond_0
    :try_start_0
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 741
    :cond_1
    sget-object v0, Lbsw;->a:Lbso;

    if-nez v0, :cond_2

    .line 742
    new-instance v0, Lbso;

    invoke-static {}, Lbhv;->l()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lbso;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lbsw;->a:Lbso;

    .line 744
    :cond_2
    sget-object v0, Lbsw;->a:Lbso;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 737
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
