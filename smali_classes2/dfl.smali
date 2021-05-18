.class Ldfl;
.super Ldff;


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

    invoke-direct {p0}, Ldff;-><init>()V

    iput-object p1, p0, Ldfl;->a:Ldao;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Ldfl;->a:Ldao;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Ldao;->a(Ljava/lang/Object;)V

    return-void
.end method
