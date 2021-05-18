.class Ljtq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Ljtp;


# direct methods
.method constructor <init>(Ljtp;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Ljtq;->a:Ljtp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Ljtq;->a:Ljtp;

    invoke-static {v0}, Ljtp;->a(Ljtp;)V

    .line 69
    iget-object v0, p0, Ljtq;->a:Ljtp;

    invoke-static {v0}, Ljtp;->b(Ljtp;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljtq;->a:Ljtp;

    invoke-static {v0}, Ljtp;->b(Ljtp;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Ljtq;->a:Ljtp;

    invoke-static {v0}, Ljtp;->b(Ljtp;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 71
    iget-object v0, p0, Ljtq;->a:Ljtp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljtp;->a(Ljtp;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 73
    :cond_0
    return-void
.end method
