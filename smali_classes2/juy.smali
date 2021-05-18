.class public Ljuy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Ljuy;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 192
    const-string v0, "Pagamentos_DDA_DataDoPagamento"

    const-string v1, "AgendarPara"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Ljuy;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->d(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)Ljvz;

    move-result-object v0

    invoke-interface {v0}, Ljvz;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "Pagamentos_DDA_PopUp_Acao"

    const-string v1, "AgendarPagamentoDeBoleto"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Ljuy;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->e(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)Landroid/app/DatePickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 196
    iget-object v0, p0, Ljuy;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    invoke-virtual {v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->c()V

    .line 198
    :cond_0
    return-void
.end method
