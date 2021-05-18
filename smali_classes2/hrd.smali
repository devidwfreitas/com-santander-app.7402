.class public Lhrd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lhrd;->a:Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lhrd;->a:Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->a(Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;)Lhsi;

    move-result-object v0

    invoke-interface {v0}, Lhsi;->c()V

    .line 62
    return-void
.end method
