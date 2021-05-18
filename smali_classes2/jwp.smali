.class Ljwp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Lgkw;

.field final synthetic b:Ljwj;


# direct methods
.method constructor <init>(Ljwj;Lgkw;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Ljwp;->b:Ljwj;

    iput-object p2, p0, Ljwp;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Ljwp;->b:Ljwj;

    invoke-static {v0}, Ljwj;->a(Ljwj;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Ljwp;->b:Ljwj;

    invoke-static {v0}, Ljwj;->a(Ljwj;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 175
    :cond_0
    iget-object v0, p0, Ljwp;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 176
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Ljwp;->b:Ljwj;

    invoke-static {v0}, Ljwj;->a(Ljwj;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Ljwp;->b:Ljwj;

    invoke-static {v0}, Ljwj;->a(Ljwj;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 167
    :cond_0
    iget-object v0, p0, Ljwp;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 168
    return-void
.end method
