.class Ldnx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldno;


# direct methods
.method constructor <init>(Ldno;)V
    .locals 0

    iput-object p1, p0, Ldnx;->a:Ldno;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ldnx;->a:Ldno;

    invoke-static {v0}, Ldno;->c(Ldno;)Ldkp;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldnx;->a:Ldno;

    invoke-virtual {v0}, Ldno;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v1, "Failed to send measurementEnabled to service"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Ldnx;->a:Ldno;

    invoke-virtual {v1}, Ldno;->i()Ldks;

    move-result-object v1

    iget-object v2, p0, Ldnx;->a:Ldno;

    invoke-virtual {v2}, Ldno;->u()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldks;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatd;

    move-result-object v1

    invoke-interface {v0, v1}, Ldkp;->b(Lcom/google/android/gms/internal/zzatd;)V

    iget-object v0, p0, Ldnx;->a:Ldno;

    invoke-static {v0}, Ldno;->d(Ldno;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Ldnx;->a:Ldno;

    invoke-virtual {v1}, Ldno;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Failed to send measurementEnabled to the service"

    invoke-virtual {v1, v2, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
