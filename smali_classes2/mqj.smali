.class Lmqj;
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
    .line 107
    iput-object p1, p0, Lmqj;->b:Lmqc;

    iput-object p2, p0, Lmqj;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lmqj;->b:Lmqc;

    invoke-static {v0}, Lmqc;->a(Lmqc;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lmqj;->b:Lmqc;

    invoke-static {v0}, Lmqc;->a(Lmqc;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 121
    :cond_0
    iget-object v0, p0, Lmqj;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lmqj;->b:Lmqc;

    invoke-static {v0}, Lmqc;->a(Lmqc;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lmqj;->b:Lmqc;

    invoke-static {v0}, Lmqc;->a(Lmqc;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 113
    :cond_0
    iget-object v0, p0, Lmqj;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 114
    return-void
.end method
