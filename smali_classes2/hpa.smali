.class Lhpa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhpo;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lhoz;


# direct methods
.method constructor <init>(Lhoz;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lhpa;->b:Lhoz;

    iput-object p2, p0, Lhpa;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lhpa;->b:Lhoz;

    invoke-static {v0, p1}, Lhoz;->a(Lhoz;Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    .line 126
    iget-object v0, p0, Lhpa;->b:Lhoz;

    invoke-static {v0}, Lhoz;->b(Lhoz;)Lhrl;

    move-result-object v0

    iget-object v1, p0, Lhpa;->b:Lhoz;

    invoke-static {v1}, Lhoz;->a(Lhoz;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    move-result-object v1

    invoke-interface {v0, v1}, Lhrl;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)V

    .line 127
    iget-object v0, p0, Lhpa;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 128
    return-void
.end method

.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V
    .locals 3

    .prologue
    .line 132
    if-eqz p1, :cond_0

    .line 133
    iget-object v0, p0, Lhpa;->b:Lhoz;

    invoke-static {v0}, Lhoz;->b(Lhoz;)Lhrl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lhrl;->a(Ljava/lang/String;)V

    .line 137
    :goto_0
    iget-object v0, p0, Lhpa;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 138
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lhpa;->b:Lhoz;

    invoke-static {v0}, Lhoz;->b(Lhoz;)Lhrl;

    move-result-object v0

    iget-object v1, p0, Lhpa;->b:Lhoz;

    invoke-static {v1}, Lhoz;->c(Lhoz;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09043f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lhrl;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
