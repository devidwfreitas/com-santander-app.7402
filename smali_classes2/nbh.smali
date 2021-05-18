.class Lnbh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lnbg;


# direct methods
.method constructor <init>(Lnbg;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lnbh;->a:Lnbg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    check-cast p1, Lfwx;

    .line 55
    iget-object v0, p0, Lnbh;->a:Lnbg;

    invoke-static {v0}, Lnbg;->a(Lnbg;)Lmip;

    move-result-object v0

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->b()Lmwx;

    move-result-object v0

    invoke-virtual {p1}, Lfwx;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwx;->c(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lnbh;->a:Lnbg;

    invoke-static {v0}, Lnbg;->a(Lnbg;)Lmip;

    move-result-object v0

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->b()Lmwx;

    move-result-object v0

    invoke-virtual {p1}, Lfwx;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwx;->a(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lnbh;->a:Lnbg;

    invoke-static {v0}, Lnbg;->a(Lnbg;)Lmip;

    move-result-object v0

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->b()Lmwx;

    move-result-object v0

    invoke-virtual {p1}, Lfwx;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwx;->b(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lnbh;->a:Lnbg;

    invoke-static {v0, v2}, Lnbg;->a(Lnbg;Z)V

    .line 61
    iget-object v0, p0, Lnbh;->a:Lnbg;

    invoke-static {v0}, Lnbg;->b(Lnbg;)Lndw;

    move-result-object v0

    invoke-interface {v0, v2}, Lndw;->a(Z)V

    .line 63
    iget-object v0, p0, Lnbh;->a:Lnbg;

    invoke-static {v0}, Lnbg;->b(Lnbg;)Lndw;

    move-result-object v0

    invoke-interface {v0}, Lndw;->e()V

    .line 65
    iget-object v0, p0, Lnbh;->a:Lnbg;

    invoke-static {v0}, Lnbg;->b(Lnbg;)Lndw;

    move-result-object v0

    new-instance v1, Lnbi;

    invoke-direct {v1, p0}, Lnbi;-><init>(Lnbh;)V

    invoke-interface {v0, v1}, Lndw;->b(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-static {}, Lmzr;->d()I

    move-result v0

    .line 95
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 96
    iget-object v0, p0, Lnbh;->a:Lnbg;

    invoke-static {v0}, Lnbg;->b(Lnbg;)Lndw;

    move-result-object v0

    invoke-interface {v0}, Lndw;->c()V

    .line 100
    :cond_0
    :goto_0
    iget-object v0, p0, Lnbh;->a:Lnbg;

    invoke-static {v0}, Lnbg;->b(Lnbg;)Lndw;

    move-result-object v0

    new-instance v1, Lnbk;

    invoke-direct {v1, p0}, Lnbk;-><init>(Lnbh;)V

    invoke-interface {v0, v1}, Lndw;->a(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void

    .line 97
    :cond_1
    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 98
    :cond_2
    iget-object v0, p0, Lnbh;->a:Lnbg;

    invoke-static {v0}, Lnbg;->b(Lnbg;)Lndw;

    move-result-object v0

    invoke-interface {v0}, Lndw;->d()V

    goto :goto_0
.end method
