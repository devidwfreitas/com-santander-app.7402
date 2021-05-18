.class Ldmr;
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
        "Lcom/google/android/gms/internal/zzatg;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzatd;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ldmb;


# direct methods
.method constructor <init>(Ldmb;Lcom/google/android/gms/internal/zzatd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldmr;->d:Ldmb;

    iput-object p2, p0, Ldmr;->a:Lcom/google/android/gms/internal/zzatd;

    iput-object p3, p0, Ldmr;->b:Ljava/lang/String;

    iput-object p4, p0, Ldmr;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzatg;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ldmr;->d:Ldmb;

    invoke-static {v0}, Ldmb;->a(Ldmb;)Ldlv;

    move-result-object v0

    invoke-virtual {v0}, Ldlv;->N()V

    iget-object v0, p0, Ldmr;->d:Ldmb;

    invoke-static {v0}, Ldmb;->a(Ldmb;)Ldlv;

    move-result-object v0

    invoke-virtual {v0}, Ldlv;->p()Ldkb;

    move-result-object v0

    iget-object v1, p0, Ldmr;->a:Lcom/google/android/gms/internal/zzatd;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzatd;->a:Ljava/lang/String;

    iget-object v2, p0, Ldmr;->b:Ljava/lang/String;

    iget-object v3, p0, Ldmr;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Ldkb;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldmr;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
