.class public Ljux;
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
    .line 176
    iput-object p1, p0, Ljux;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Ljux;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    invoke-virtual {v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->b()V

    .line 180
    const-string v0, "Pagamentos_DDA_DataDoPagamento"

    const-string v1, "PagarHoje"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method
