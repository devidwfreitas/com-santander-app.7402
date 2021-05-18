.class Ldmn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzatg;

.field final synthetic b:Ldmb;


# direct methods
.method constructor <init>(Ldmb;Lcom/google/android/gms/internal/zzatg;)V
    .locals 0

    iput-object p1, p0, Ldmn;->b:Ldmb;

    iput-object p2, p0, Ldmn;->a:Lcom/google/android/gms/internal/zzatg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ldmn;->b:Ldmb;

    invoke-static {v0}, Ldmb;->a(Ldmb;)Ldlv;

    move-result-object v0

    invoke-virtual {v0}, Ldlv;->N()V

    iget-object v0, p0, Ldmn;->b:Ldmb;

    invoke-static {v0}, Ldmb;->a(Ldmb;)Ldlv;

    move-result-object v0

    iget-object v1, p0, Ldmn;->a:Lcom/google/android/gms/internal/zzatg;

    invoke-virtual {v0, v1}, Ldlv;->b(Lcom/google/android/gms/internal/zzatg;)V

    return-void
.end method
