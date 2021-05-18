.class Lmjm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lmjk;


# direct methods
.method constructor <init>(Lmjk;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lmjm;->a:Lmjk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 107
    check-cast p1, Lmiw;

    .line 108
    if-eqz p1, :cond_4

    .line 109
    invoke-virtual {p1}, Lmiw;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 110
    invoke-virtual {p1}, Lmiw;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmjm;->a:Lmjk;

    invoke-static {v0}, Lmjk;->b(Lmjk;)Lmip;

    move-result-object v0

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    iget-object v0, p0, Lmjm;->a:Lmjk;

    invoke-static {v0}, Lmjk;->a(Lmjk;)Lmjj;

    move-result-object v0

    invoke-interface {v0, p1}, Lmjj;->a(Lmiw;)V

    .line 134
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {p1}, Lmiw;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 117
    iget-object v0, p0, Lmjm;->a:Lmjk;

    invoke-static {v0}, Lmjk;->c(Lmjk;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0908a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiw;->setMensagemErro(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lmjm;->a:Lmjk;

    invoke-static {v0}, Lmjk;->a(Lmjk;)Lmjj;

    move-result-object v0

    invoke-interface {v0, p1}, Lmjj;->b(Lmiw;)V

    goto :goto_0

    .line 122
    :cond_2
    iget-object v0, p0, Lmjm;->a:Lmjk;

    invoke-static {v0}, Lmjk;->a(Lmjk;)Lmjj;

    move-result-object v0

    invoke-virtual {p1}, Lmiw;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmjj;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_3
    iget-object v0, p0, Lmjm;->a:Lmjk;

    invoke-static {v0}, Lmjk;->a(Lmjk;)Lmjj;

    move-result-object v0

    invoke-interface {v0, p1}, Lmjj;->a(Lmiw;)V

    goto :goto_0

    .line 132
    :cond_4
    iget-object v0, p0, Lmjm;->a:Lmjk;

    invoke-static {v0}, Lmjk;->a(Lmjk;)Lmjj;

    move-result-object v0

    invoke-interface {v0, p1}, Lmjj;->b(Lmiw;)V

    goto :goto_0
.end method
