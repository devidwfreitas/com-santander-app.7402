.class Ljfs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Ljfq;


# direct methods
.method constructor <init>(Ljfq;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Ljfs;->a:Ljfq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 62
    check-cast p1, Ljdi;

    .line 63
    invoke-virtual {p1}, Ljdi;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljdi;->getMensagemErro()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Ljfs;->a:Ljfq;

    invoke-static {v0, p1}, Ljfq;->a(Ljfq;Ljdi;)V

    .line 71
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v0, Ljds;

    invoke-direct {v0}, Ljds;-><init>()V

    .line 68
    iget-object v1, p0, Ljfs;->a:Ljfq;

    invoke-static {v1}, Ljfq;->b(Ljfq;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0909f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljds;->setMensagemErro(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Ljfs;->a:Ljfq;

    invoke-static {v1}, Ljfq;->a(Ljfq;)Ljfp;

    move-result-object v1

    invoke-interface {v1, v0}, Ljfp;->b(Ljds;)V

    goto :goto_0
.end method
