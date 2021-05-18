.class public Lhqw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lhqw;->a:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lhqw;->a:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->v()V

    .line 398
    iget-object v0, p0, Lhqw;->a:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->x()V

    .line 399
    if-nez p2, :cond_0

    .line 400
    iget-object v0, p0, Lhqw;->a:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->c(Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;)V

    .line 402
    :cond_0
    return-void
.end method
