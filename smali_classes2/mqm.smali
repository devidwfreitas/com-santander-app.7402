.class Lmqm;
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
    .line 205
    iput-object p1, p0, Lmqm;->b:Lmqc;

    iput-object p2, p0, Lmqm;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lmqm;->b:Lmqc;

    invoke-static {v0}, Lmqc;->a(Lmqc;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lmqm;->b:Lmqc;

    invoke-static {v0}, Lmqc;->a(Lmqc;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 219
    :cond_0
    iget-object v0, p0, Lmqm;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 220
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lmqm;->b:Lmqc;

    invoke-static {v0}, Lmqc;->a(Lmqc;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lmqm;->b:Lmqc;

    invoke-static {v0}, Lmqc;->a(Lmqc;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 211
    :cond_0
    iget-object v0, p0, Lmqm;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 212
    return-void
.end method
