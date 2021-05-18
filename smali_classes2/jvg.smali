.class public Ljvg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Ljvg;->a:Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Ljvg;->a:Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->d(Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 102
    iget-object v0, p0, Ljvg;->a:Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->c(Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Ljvg;->a:Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->d(Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 105
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Ljvg;->a:Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->b(Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Ljvg;->a:Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->c(Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    iget-object v1, p0, Ljvg;->a:Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;

    invoke-static {v1}, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->a(Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;)Ljwf;

    move-result-object v1

    invoke-interface {v1, v0}, Ljwf;->b(Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method
