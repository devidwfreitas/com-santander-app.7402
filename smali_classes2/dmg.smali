.class Ldmg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzauq;

.field final synthetic b:Lcom/google/android/gms/internal/zzatd;

.field final synthetic c:Ldmb;


# direct methods
.method constructor <init>(Ldmb;Lcom/google/android/gms/internal/zzauq;Lcom/google/android/gms/internal/zzatd;)V
    .locals 0

    iput-object p1, p0, Ldmg;->c:Ldmb;

    iput-object p2, p0, Ldmg;->a:Lcom/google/android/gms/internal/zzauq;

    iput-object p3, p0, Ldmg;->b:Lcom/google/android/gms/internal/zzatd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ldmg;->c:Ldmb;

    invoke-static {v0}, Ldmb;->a(Ldmb;)Ldlv;

    move-result-object v0

    invoke-virtual {v0}, Ldlv;->N()V

    iget-object v0, p0, Ldmg;->c:Ldmb;

    invoke-static {v0}, Ldmb;->a(Ldmb;)Ldlv;

    move-result-object v0

    iget-object v1, p0, Ldmg;->a:Lcom/google/android/gms/internal/zzauq;

    iget-object v2, p0, Ldmg;->b:Lcom/google/android/gms/internal/zzatd;

    invoke-virtual {v0, v1, v2}, Ldlv;->b(Lcom/google/android/gms/internal/zzauq;Lcom/google/android/gms/internal/zzatd;)V

    return-void
.end method
