.class Liaz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Liaw;


# direct methods
.method constructor <init>(Liaw;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Liaz;->a:Liaw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Liaz;->a:Liaw;

    invoke-static {v0}, Liaw;->d(Liaw;)V

    .line 587
    iget-object v0, p0, Liaz;->a:Liaw;

    invoke-static {v0}, Liaw;->e(Liaw;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Liaz;->a:Liaw;

    invoke-static {v0}, Liaw;->e(Liaw;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Liaz;->a:Liaw;

    invoke-static {v0}, Liaw;->e(Liaw;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 589
    iget-object v0, p0, Liaz;->a:Liaw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Liaw;->a(Liaw;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 591
    :cond_0
    return-void
.end method
