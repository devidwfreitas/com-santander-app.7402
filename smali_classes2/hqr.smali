.class public Lhqr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgor;


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lhqr;->a:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/santander/app/components/view/CheckCardGroup;Lcom/santander/app/components/view/CheckCardView;I)V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lhqr;->a:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->b(Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;)Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 173
    iget-object v0, p0, Lhqr;->a:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->r()V

    .line 174
    iget-object v0, p0, Lhqr;->a:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->d()V

    .line 175
    iget-object v0, p0, Lhqr;->a:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->aa()V

    .line 176
    iget-object v0, p0, Lhqr;->a:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->b()V

    .line 181
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lhqr;->a:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->s()V

    .line 179
    iget-object v0, p0, Lhqr;->a:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->a(Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;)Lhru;

    move-result-object v0

    invoke-interface {v0}, Lhru;->e()V

    goto :goto_0
.end method
