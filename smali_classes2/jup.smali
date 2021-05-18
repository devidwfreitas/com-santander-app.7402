.class public Ljup;
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
    .line 151
    iput-object p1, p0, Ljup;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Ljup;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;

    invoke-virtual {v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->d()V

    .line 155
    const-string v0, "Pagamentos_Pagamento_DataDoPagamento_Acao"

    const-string v1, "PagarHoje"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method
