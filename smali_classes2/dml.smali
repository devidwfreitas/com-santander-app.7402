.class Ldml;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzatg;

.field final synthetic b:Lcom/google/android/gms/internal/zzatd;

.field final synthetic c:Ldmb;


# direct methods
.method constructor <init>(Ldmb;Lcom/google/android/gms/internal/zzatg;Lcom/google/android/gms/internal/zzatd;)V
    .locals 0

    iput-object p1, p0, Ldml;->c:Ldmb;

    iput-object p2, p0, Ldml;->a:Lcom/google/android/gms/internal/zzatg;

    iput-object p3, p0, Ldml;->b:Lcom/google/android/gms/internal/zzatd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ldml;->c:Ldmb;

    invoke-static {v0}, Ldmb;->a(Ldmb;)Ldlv;

    move-result-object v0

    invoke-virtual {v0}, Ldlv;->N()V

    iget-object v0, p0, Ldml;->c:Ldmb;

    invoke-static {v0}, Ldmb;->a(Ldmb;)Ldlv;

    move-result-object v0

    iget-object v1, p0, Ldml;->a:Lcom/google/android/gms/internal/zzatg;

    iget-object v2, p0, Ldml;->b:Lcom/google/android/gms/internal/zzatd;

    invoke-virtual {v0, v1, v2}, Ldlv;->b(Lcom/google/android/gms/internal/zzatg;Lcom/google/android/gms/internal/zzatd;)V

    return-void
.end method
