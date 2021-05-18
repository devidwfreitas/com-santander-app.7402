.class public Lgcv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lgcv;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 64
    iget-object v1, p0, Lgcv;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbb;

    invoke-static {v1, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;Lgbb;)Lgbb;

    .line 65
    iget-object v0, p0, Lgcv;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;)Lgbb;

    move-result-object v0

    invoke-virtual {v0}, Lgbb;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lgcv;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;

    const-class v2, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    const-string v1, "motivo_envio_edit"

    iget-object v2, p0, Lgcv;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;

    invoke-static {v2}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;)Lgbb;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 68
    iget-object v1, p0, Lgcv;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lgcv;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;->b(Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;)V

    goto :goto_0
.end method
