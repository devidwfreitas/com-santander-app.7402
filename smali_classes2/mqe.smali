.class Lmqe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Lgkw;

.field final synthetic b:Lmqc;


# direct methods
.method constructor <init>(Lmqc;Lgkw;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lmqe;->b:Lmqc;

    iput-object p2, p0, Lmqe;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lmqe;->b:Lmqc;

    invoke-static {v0}, Lmqc;->a(Lmqc;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lmqe;->b:Lmqc;

    invoke-static {v0}, Lmqc;->a(Lmqc;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 245
    :cond_0
    iget-object v0, p0, Lmqe;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 246
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lmqe;->b:Lmqc;

    invoke-static {v0}, Lmqc;->a(Lmqc;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lmqe;->b:Lmqc;

    invoke-static {v0}, Lmqc;->a(Lmqc;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 237
    :cond_0
    iget-object v0, p0, Lmqe;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 238
    return-void
.end method
