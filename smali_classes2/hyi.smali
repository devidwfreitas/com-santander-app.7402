.class Lhyi;
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
        "Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhxy;

.field final synthetic b:Lhyb;


# direct methods
.method constructor <init>(Lhyb;Lhxy;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lhyi;->b:Lhyb;

    iput-object p2, p0, Lhyi;->a:Lhxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;)V
    .locals 3

    .prologue
    .line 245
    if-eqz p1, :cond_1

    .line 246
    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->getValorLimiteRisco()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-static {v0}, Lhyx;->b(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 250
    iget-object v1, p0, Lhyi;->b:Lhyb;

    invoke-static {v1}, Lhyb;->b(Lhyb;)Lhxo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhxo;->a(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lhyi;->a:Lhxy;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lhxy;->a(I)V

    .line 259
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v1, p0, Lhyi;->b:Lhyb;

    invoke-static {v1}, Lhyb;->b(Lhyb;)Lhxo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhxo;->a(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lhyi;->a:Lhxy;

    invoke-interface {v0}, Lhxy;->a()V

    goto :goto_0

    .line 257
    :cond_1
    iget-object v0, p0, Lhyi;->a:Lhxy;

    invoke-interface {v0}, Lhxy;->b()V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 242
    check-cast p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

    invoke-virtual {p0, p1}, Lhyi;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;)V

    return-void
.end method
