.class public Lbmr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lbmr;


# instance fields
.field private b:Ljava/util/UUID;

.field private c:Landroid/content/Intent;

.field private d:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lbmr;-><init>(ILjava/util/UUID;)V

    .line 73
    return-void
.end method

.method public constructor <init>(ILjava/util/UUID;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lbmr;->b:Ljava/util/UUID;

    .line 83
    iput p1, p0, Lbmr;->d:I

    .line 84
    return-void
.end method

.method public static a()Lbmr;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lbmr;->a:Lbmr;

    return-object v0
.end method

.method public static declared-synchronized a(Ljava/util/UUID;I)Lbmr;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 42
    const-class v2, Lbmr;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lbmr;->a()Lbmr;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Lbmr;->c()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    invoke-virtual {v0}, Lbmr;->d()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eq v3, p1, :cond_1

    :cond_0
    move-object v0, v1

    .line 51
    :goto_0
    monitor-exit v2

    return-object v0

    .line 49
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Lbmr;->a(Lbmr;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static declared-synchronized a(Lbmr;)Z
    .locals 2

    .prologue
    .line 56
    const-class v1, Lbmr;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lbmr;->a()Lbmr;

    move-result-object v0

    .line 57
    sput-object p0, Lbmr;->a:Lbmr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 116
    iput p1, p0, Lbmr;->d:I

    .line 117
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lbmr;->c:Landroid/content/Intent;

    .line 121
    return-void
.end method

.method public b()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lbmr;->c:Landroid/content/Intent;

    return-object v0
.end method

.method public c()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lbmr;->b:Ljava/util/UUID;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lbmr;->d:I

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 129
    invoke-static {p0}, Lbmr;->a(Lbmr;)Z

    move-result v0

    return v0
.end method
