.class Ljwn;
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
    .line 103
    iput-object p1, p0, Ljwn;->b:Ljwj;

    iput-object p2, p0, Ljwn;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Ljwn;->b:Ljwj;

    invoke-static {v0}, Ljwj;->a(Ljwj;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Ljwn;->b:Ljwj;

    invoke-static {v0}, Ljwj;->a(Ljwj;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 117
    :cond_0
    iget-object v0, p0, Ljwn;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Ljwn;->b:Ljwj;

    invoke-static {v0}, Ljwj;->a(Ljwj;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Ljwn;->b:Ljwj;

    invoke-static {v0}, Ljwj;->a(Ljwj;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 109
    :cond_0
    iget-object v0, p0, Ljwn;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 110
    return-void
.end method
