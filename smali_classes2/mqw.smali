.class Lmqw;
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
    .line 172
    iput-object p1, p0, Lmqw;->b:Lmqn;

    iput-object p2, p0, Lmqw;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lmqw;->b:Lmqn;

    invoke-static {v0}, Lmqn;->a(Lmqn;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lmqw;->b:Lmqn;

    invoke-static {v0}, Lmqn;->a(Lmqn;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 186
    :cond_0
    iget-object v0, p0, Lmqw;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 187
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lmqw;->b:Lmqn;

    invoke-static {v0}, Lmqn;->a(Lmqn;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lmqw;->b:Lmqn;

    invoke-static {v0}, Lmqn;->a(Lmqn;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 178
    :cond_0
    iget-object v0, p0, Lmqw;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 179
    return-void
.end method
