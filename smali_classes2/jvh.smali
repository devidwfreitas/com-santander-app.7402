.class public Ljvh;
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
    .line 108
    iput-object p1, p0, Ljvh;->a:Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 111
    const-string v0, "Pagamentos_Pagamento_CodigoDeBarras_Acao"

    const-string v1, "DigitarCodigoDeBarras"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method
