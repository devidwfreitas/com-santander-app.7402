.class Ldkg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldkf;


# direct methods
.method constructor <init>(Ldkf;)V
    .locals 0

    iput-object p1, p0, Ldkg;->a:Ldkf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ldkg;->a:Ldkf;

    invoke-static {v0}, Ldkf;->a(Ldkf;)Ldlv;

    move-result-object v0

    invoke-virtual {v0}, Ldlv;->h()Ldlq;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldlq;->a(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ldkg;->a:Ldkf;

    invoke-virtual {v0}, Ldkf;->b()Z

    move-result v0

    iget-object v1, p0, Ldkg;->a:Ldkf;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Ldkf;->a(Ldkf;J)J

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldkg;->a:Ldkf;

    invoke-static {v0}, Ldkf;->b(Ldkf;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldkg;->a:Ldkf;

    invoke-virtual {v0}, Ldkf;->a()V

    goto :goto_0
.end method
