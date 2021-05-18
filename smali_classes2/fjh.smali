.class public Lfjh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lcom/santander/app/PagamentoFacturaCartoesActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/PagamentoFacturaCartoesActivity;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lfjh;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lfjh;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    iget-object v0, v0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfjh;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    iget-object v0, v0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lfjh;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    iget-object v0, v0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 224
    iget-object v0, p0, Lfjh;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/santander/app/PagamentoFacturaCartoesActivity;->a:Landroid/app/Dialog;

    .line 225
    iget-object v0, p0, Lfjh;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-static {v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->g(Lcom/santander/app/PagamentoFacturaCartoesActivity;)V

    .line 227
    :cond_0
    return-void
.end method
