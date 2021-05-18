.class Lhth;
.super Lhtn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhtn",
        "<",
        "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultaTermosContratoCSG;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lhtd;


# direct methods
.method constructor <init>(Lhtd;Lir;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lhth;->b:Lhtd;

    iput-object p3, p0, Lhth;->a:Landroid/app/Dialog;

    invoke-direct {p0, p2}, Lhtn;-><init>(Lir;)V

    return-void
.end method


# virtual methods
.method public a(ILcom/santander/app/emprestimo/creditopessoal/domain/ConsultaTermosContratoCSG;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lhth;->b:Lhtd;

    invoke-static {v0}, Lhtd;->a(Lhtd;)Lhoy;

    move-result-object v0

    invoke-virtual {p2}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultaTermosContratoCSG;->getContractTerms()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lhoy;->a(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lhth;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 98
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 93
    check-cast p2, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultaTermosContratoCSG;

    invoke-virtual {p0, p1, p2}, Lhth;->a(ILcom/santander/app/emprestimo/creditopessoal/domain/ConsultaTermosContratoCSG;)V

    return-void
.end method

.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lhth;->b:Lhtd;

    invoke-static {v0}, Lhtd;->a(Lhtd;)Lhoy;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Lhoy;->b(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lhth;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 104
    return-void

    .line 102
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
