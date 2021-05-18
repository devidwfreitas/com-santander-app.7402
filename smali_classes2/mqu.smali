.class Lmqu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Lgkw;

.field final synthetic b:Lmqn;


# direct methods
.method constructor <init>(Lmqn;Lgkw;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lmqu;->b:Lmqn;

    iput-object p2, p0, Lmqu;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lmqu;->b:Lmqn;

    invoke-static {v0}, Lmqn;->a(Lmqn;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lmqu;->b:Lmqn;

    invoke-static {v0}, Lmqn;->a(Lmqn;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 134
    :cond_0
    iget-object v0, p0, Lmqu;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lmqu;->b:Lmqn;

    invoke-static {v0}, Lmqn;->a(Lmqn;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lmqu;->b:Lmqn;

    invoke-static {v0}, Lmqn;->a(Lmqn;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 126
    :cond_0
    iget-object v0, p0, Lmqu;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 127
    return-void
.end method
