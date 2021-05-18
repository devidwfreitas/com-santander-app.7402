.class Ldjc;
.super Ldum;


# instance fields
.field private final a:Lddn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lddn",
            "<",
            "Ldtu;",
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
            "Ldtu;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ldum;-><init>()V

    iput-object p1, p0, Ldjc;->a:Lddn;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldjc;->a:Lddn;

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

.method public a(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 2

    iget-object v0, p0, Ldjc;->a:Lddn;

    new-instance v1, Ldje;

    invoke-direct {v1, p0, p1}, Ldje;-><init>(Ldjc;Lcom/google/android/gms/location/LocationAvailability;)V

    invoke-virtual {v0, v1}, Lddn;->a(Lddq;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/location/LocationResult;)V
    .locals 2

    iget-object v0, p0, Ldjc;->a:Lddn;

    new-instance v1, Ldjd;

    invoke-direct {v1, p0, p1}, Ldjd;-><init>(Ldjc;Lcom/google/android/gms/location/LocationResult;)V

    invoke-virtual {v0, v1}, Lddn;->a(Lddq;)V

    return-void
.end method
