.class public Ljuq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Ljuq;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Ljuq;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->d(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)Ljwb;

    move-result-object v0

    invoke-interface {v0}, Ljwb;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Ljuq;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->e(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)Landroid/app/DatePickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 169
    iget-object v0, p0, Ljuq;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;

    invoke-virtual {v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->e()V

    .line 171
    :cond_0
    const-string v0, "Pagamentos_Pagamento_DataDoPagamento_Acao"

    const-string v1, "AgendarPara"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method
