.class Ldnv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Legk;

.field final synthetic b:Ldno;


# direct methods
.method constructor <init>(Ldno;Legk;)V
    .locals 0

    iput-object p1, p0, Ldnv;->b:Ldno;

    iput-object p2, p0, Ldnv;->a:Legk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Ldnv;->b:Ldno;

    invoke-static {v0}, Ldno;->c(Ldno;)Ldkp;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, p0, Ldnv;->b:Ldno;

    invoke-virtual {v0}, Ldno;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v1, "Failed to send current screen to service"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Ldnv;->a:Legk;

    if-nez v0, :cond_1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Ldnv;->b:Ldno;

    invoke-virtual {v0}, Ldno;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Ldkp;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Ldnv;->b:Ldno;

    invoke-static {v0}, Ldno;->d(Ldno;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Ldnv;->b:Ldno;

    invoke-virtual {v1}, Ldno;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Failed to send current screen to the service"

    invoke-virtual {v1, v2, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Ldnv;->a:Legk;

    iget-wide v2, v0, Legk;->d:J

    iget-object v0, p0, Ldnv;->a:Legk;

    iget-object v4, v0, Legk;->b:Ljava/lang/String;

    iget-object v0, p0, Ldnv;->a:Legk;

    iget-object v5, v0, Legk;->c:Ljava/lang/String;

    iget-object v0, p0, Ldnv;->b:Ldno;

    invoke-virtual {v0}, Ldno;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Ldkp;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
