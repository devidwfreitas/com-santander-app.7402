.class Livu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Livt;


# direct methods
.method constructor <init>(Livt;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Livu;->a:Livt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 52
    check-cast p1, Lfwx;

    .line 54
    iget-object v0, p0, Livu;->a:Livt;

    invoke-static {v0}, Livt;->a(Livt;)Lmip;

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

    .line 55
    iget-object v0, p0, Livu;->a:Livt;

    invoke-static {v0}, Livt;->a(Livt;)Lmip;

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

    .line 56
    iget-object v0, p0, Livu;->a:Livt;

    invoke-static {v0}, Livt;->a(Livt;)Lmip;

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

    .line 58
    iget-object v0, p0, Livu;->a:Livt;

    invoke-static {v0}, Livt;->b(Livt;)V

    .line 60
    iget-object v0, p0, Livu;->a:Livt;

    invoke-static {v0}, Livt;->c(Livt;)Ljaj;

    move-result-object v0

    invoke-interface {v0}, Ljaj;->d()V

    .line 62
    iget-object v0, p0, Livu;->a:Livt;

    invoke-static {v0}, Livt;->c(Livt;)Ljaj;

    move-result-object v0

    new-instance v1, Livv;

    invoke-direct {v1, p0}, Livv;-><init>(Livu;)V

    invoke-interface {v0, v1}, Ljaj;->a(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method
