.class final Lgqz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lfoh;


# direct methods
.method constructor <init>(Lfoh;)V
    .locals 0

    .prologue
    .line 1789
    iput-object p1, p0, Lgqz;->a:Lfoh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1792
    invoke-static {}, Lgpu;->p()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lgpu;->p()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1793
    invoke-static {}, Lgpu;->p()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1794
    const/4 v0, 0x0

    invoke-static {v0}, Lgpu;->b(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1796
    :cond_0
    iget-object v0, p0, Lgqz;->a:Lfoh;

    invoke-interface {v0, p1}, Lfoh;->a(Ljava/lang/Object;)V

    .line 1797
    return-void
.end method
