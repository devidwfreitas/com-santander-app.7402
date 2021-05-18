.class public Lhmg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lhmg;->a:Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lhmg;->a:Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->a(Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 125
    iget-object v0, p0, Lhmg;->a:Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->b(Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;)Lhmo;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lhmo;->c(Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lhmg;->a:Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->a(Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 128
    iget-object v0, p0, Lhmg;->a:Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->b(Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;)Lhmo;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lhmo;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
