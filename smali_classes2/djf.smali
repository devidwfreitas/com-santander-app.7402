.class Ldjf;
.super Ldup;


# instance fields
.field private final a:Lddn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lddn",
            "<",
            "Ldtv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lddn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddn",
            "<",
            "Ldtv;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ldup;-><init>()V

    iput-object p1, p0, Ldjf;->a:Lddn;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldjf;->a:Lddn;

    invoke-virtual {v0}, Lddn;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/location/Location;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldjf;->a:Lddn;

    new-instance v1, Ldjg;

    invoke-direct {v1, p0, p1}, Ldjg;-><init>(Ldjf;Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Lddn;->a(Lddq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
