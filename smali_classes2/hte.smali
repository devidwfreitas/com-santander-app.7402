.class Lhte;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkv",
        "<",
        "Lcom/santander/app/emprestimo/creditopessoal/domain/CPTextoCondicoesCPResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhtd;


# direct methods
.method constructor <init>(Lhtd;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lhte;->a:Lhtd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPTextoCondicoesCPResponse;)V
    .locals 3

    .prologue
    .line 48
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPTextoCondicoesCPResponse;->getCodigoRetorno()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lhte;->a:Lhtd;

    invoke-static {v0}, Lhtd;->a(Lhtd;)Lhoy;

    move-result-object v0

    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPTextoCondicoesCPResponse;->getConteudo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lhoy;->a(Ljava/lang/String;)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lhte;->a:Lhtd;

    invoke-static {v0}, Lhtd;->a(Lhtd;)Lhoy;

    move-result-object v0

    iget-object v1, p0, Lhte;->a:Lhtd;

    invoke-static {v1}, Lhtd;->b(Lhtd;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09043f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lhoy;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 45
    check-cast p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPTextoCondicoesCPResponse;

    invoke-virtual {p0, p1}, Lhte;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPTextoCondicoesCPResponse;)V

    return-void
.end method
