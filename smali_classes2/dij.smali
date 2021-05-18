.class Ldij;
.super Ldiq;


# instance fields
.field private final a:Ldao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldao",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldao",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ldiq;-><init>()V

    iput-object p1, p0, Ldij;->a:Ldao;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/zzarz;)V
    .locals 2

    iget-object v0, p0, Ldij;->a:Ldao;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzarz;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Ldao;->a(Ljava/lang/Object;)V

    return-void
.end method
