.class public Ljvf;
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
    .line 76
    iput-object p1, p0, Ljvf;->a:Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 79
    const-string v0, "Pagamentos_Pagamento_CodigoDeBarras_Acao"

    const-string v1, "LeitorDeCodigoDeBarras"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Ljvf;->a:Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->a(Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;)Ljwf;

    move-result-object v0

    invoke-interface {v0}, Ljwf;->b()V

    .line 81
    return-void
.end method
