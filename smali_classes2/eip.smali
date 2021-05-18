.class Leip;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Leio;


# direct methods
.method constructor <init>(Leio;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Leip;->a:Leio;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    invoke-static {p1}, Lcom/google/android/gms/iid/MessengerCompat;->a(Landroid/os/Message;)I

    move-result v0

    iget-object v1, p0, Leip;->a:Leio;

    invoke-static {v1}, Leiu;->a(Landroid/content/Context;)Ljava/lang/String;

    iget-object v1, p0, Leip;->a:Leio;

    invoke-virtual {v1}, Leio;->getPackageManager()Landroid/content/pm/PackageManager;

    sget v1, Leiu;->c:I

    if-eq v0, v1, :cond_0

    sget v1, Leiu;->b:I

    if-eq v0, v1, :cond_0

    const-string v1, "FirebaseInstanceId"

    sget v2, Leiu;->b:I

    sget v3, Leiu;->c:I

    const/16 v4, 0x4d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Message from unexpected caller "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " mine="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " appid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Leip;->a:Leio;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Leio;->b(Landroid/content/Intent;)V

    goto :goto_0
.end method
