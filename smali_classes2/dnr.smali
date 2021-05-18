.class Ldnr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/gms/internal/zzauq;

.field final synthetic c:Ldno;


# direct methods
.method constructor <init>(Ldno;ZLcom/google/android/gms/internal/zzauq;)V
    .locals 0

    iput-object p1, p0, Ldnr;->c:Ldno;

    iput-boolean p2, p0, Ldnr;->a:Z

    iput-object p3, p0, Ldnr;->b:Lcom/google/android/gms/internal/zzauq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ldnr;->c:Ldno;

    invoke-static {v0}, Ldno;->c(Ldno;)Ldkp;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, p0, Ldnr;->c:Ldno;

    invoke-virtual {v0}, Ldno;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v1, "Discarding data. Failed to set user attribute"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Ldnr;->c:Ldno;

    iget-boolean v0, p0, Ldnr;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v1, v0}, Ldno;->a(Ldkp;Lcom/google/android/gms/common/internal/safeparcel/zza;)V

    iget-object v0, p0, Ldnr;->c:Ldno;

    invoke-static {v0}, Ldno;->d(Ldno;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ldnr;->b:Lcom/google/android/gms/internal/zzauq;

    goto :goto_1
.end method
