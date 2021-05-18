.class Ldmc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzatd;

.field final synthetic b:Ldmb;


# direct methods
.method constructor <init>(Ldmb;Lcom/google/android/gms/internal/zzatd;)V
    .locals 0

    iput-object p1, p0, Ldmc;->b:Ldmb;

    iput-object p2, p0, Ldmc;->a:Lcom/google/android/gms/internal/zzatd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ldmc;->b:Ldmb;

    invoke-static {v0}, Ldmb;->a(Ldmb;)Ldlv;

    move-result-object v0

    invoke-virtual {v0}, Ldlv;->N()V

    iget-object v0, p0, Ldmc;->b:Ldmb;

    invoke-static {v0}, Ldmb;->a(Ldmb;)Ldlv;

    move-result-object v0

    iget-object v1, p0, Ldmc;->a:Lcom/google/android/gms/internal/zzatd;

    invoke-virtual {v0, v1}, Ldlv;->a(Lcom/google/android/gms/internal/zzatd;)V

    return-void
.end method
