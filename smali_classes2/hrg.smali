.class public Lhrg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lhrg;->a:Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lhrg;->a:Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->b(Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;)Lcom/santander/app/components/view/SantanderButtonView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderButtonView;->setEnabled(Z)V

    .line 154
    return-void
.end method
