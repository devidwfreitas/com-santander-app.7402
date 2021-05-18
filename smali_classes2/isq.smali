.class Lisq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lism;


# direct methods
.method constructor <init>(Lism;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 673
    iput-object p1, p0, Lisq;->b:Lism;

    iput-object p2, p0, Lisq;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 676
    const-string v0, "Outros_Way_RedirecionamentoAppWayParaNaoCorrentistaNoLogin_PopUp_Acao"

    const-string v1, "Fechar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lisq;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 680
    iget-object v0, p0, Lisq;->b:Lism;

    invoke-static {v0}, Lism;->a(Lism;)Litf;

    move-result-object v0

    invoke-interface {v0}, Litf;->l()V

    .line 681
    return-void
.end method
