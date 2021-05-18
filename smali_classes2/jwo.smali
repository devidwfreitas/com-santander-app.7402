.class Ljwo;
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
    .line 132
    iput-object p1, p0, Ljwo;->b:Ljwj;

    iput-object p2, p0, Ljwo;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Ljwo;->b:Ljwj;

    invoke-static {v0}, Ljwj;->a(Ljwj;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Ljwo;->b:Ljwj;

    invoke-static {v0}, Ljwj;->a(Ljwj;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 146
    :cond_0
    iget-object v0, p0, Ljwo;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Ljwo;->b:Ljwj;

    invoke-static {v0}, Ljwj;->a(Ljwj;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Ljwo;->b:Ljwj;

    invoke-static {v0}, Ljwj;->a(Ljwj;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 138
    :cond_0
    iget-object v0, p0, Ljwo;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 139
    return-void
.end method
