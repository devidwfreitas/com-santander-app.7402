.class public Ljvi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Ljvi;->a:Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 119
    const-string v0, "Pagamentos_Pagamento_CodigoDeBarras_Acao"

    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Ljvi;->a:Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->a(Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;)Ljwf;

    move-result-object v0

    iget-object v1, p0, Ljvi;->a:Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;

    invoke-static {v1}, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->c(Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwf;->a(Ljava/lang/String;)V

    .line 121
    return-void
.end method
