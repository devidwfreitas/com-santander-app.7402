.class public Ljvk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Ljvk;->b:Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;

    iput-object p2, p0, Ljvk;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Ljvk;->b:Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->a(Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;)Ljwf;

    move-result-object v0

    invoke-interface {v0}, Ljwf;->b()V

    .line 208
    iget-object v0, p0, Ljvk;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 209
    return-void
.end method
