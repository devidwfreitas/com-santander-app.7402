.class public Lhqs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lhqs;->a:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lhqs;->a:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->a(Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;)Lhru;

    move-result-object v0

    invoke-interface {v0}, Lhru;->f()V

    .line 197
    iget-object v0, p0, Lhqs;->a:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->a(Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;)Lhru;

    move-result-object v0

    invoke-interface {v0}, Lhru;->k()V

    .line 198
    return-void
.end method
