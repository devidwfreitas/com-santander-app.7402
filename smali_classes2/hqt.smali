.class public Lhqt;
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
    .line 201
    iput-object p1, p0, Lhqt;->a:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lhqt;->a:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->a(Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;)Lhru;

    move-result-object v0

    invoke-interface {v0}, Lhru;->i()V

    .line 205
    iget-object v0, p0, Lhqt;->a:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->a(Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;)Lhru;

    move-result-object v0

    invoke-interface {v0}, Lhru;->l()V

    .line 206
    return-void
.end method
