.class public Lhqx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lhqx;->a:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 408
    iget-object v0, p0, Lhqx;->a:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->d(Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;)V

    .line 410
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
