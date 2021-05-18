.class Ldme;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzatq;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ldmb;


# direct methods
.method constructor <init>(Ldmb;Lcom/google/android/gms/internal/zzatq;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldme;->c:Ldmb;

    iput-object p2, p0, Ldme;->a:Lcom/google/android/gms/internal/zzatq;

    iput-object p3, p0, Ldme;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ldme;->c:Ldmb;

    invoke-static {v0}, Ldmb;->a(Ldmb;)Ldlv;

    move-result-object v0

    invoke-virtual {v0}, Ldlv;->N()V

    iget-object v0, p0, Ldme;->c:Ldmb;

    invoke-static {v0}, Ldmb;->a(Ldmb;)Ldlv;

    move-result-object v0

    iget-object v1, p0, Ldme;->a:Lcom/google/android/gms/internal/zzatq;

    iget-object v2, p0, Ldme;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ldlv;->a(Lcom/google/android/gms/internal/zzatq;Ljava/lang/String;)V

    return-void
.end method
