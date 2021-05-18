.class Ldmi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Ldot;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzatd;

.field final synthetic b:Ldmb;


# direct methods
.method constructor <init>(Ldmb;Lcom/google/android/gms/internal/zzatd;)V
    .locals 0

    iput-object p1, p0, Ldmi;->b:Ldmb;

    iput-object p2, p0, Ldmi;->a:Lcom/google/android/gms/internal/zzatd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ldot;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ldmi;->b:Ldmb;

    invoke-static {v0}, Ldmb;->a(Ldmb;)Ldlv;

    move-result-object v0

    invoke-virtual {v0}, Ldlv;->N()V

    iget-object v0, p0, Ldmi;->b:Ldmb;

    invoke-static {v0}, Ldmb;->a(Ldmb;)Ldlv;

    move-result-object v0

    invoke-virtual {v0}, Ldlv;->p()Ldkb;

    move-result-object v0

    iget-object v1, p0, Ldmi;->a:Lcom/google/android/gms/internal/zzatd;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldkb;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldmi;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
