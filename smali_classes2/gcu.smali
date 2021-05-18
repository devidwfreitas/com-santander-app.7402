.class public Lgcu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lgcu;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lgcu;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lgcu;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->b(Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;)Lgbb;

    move-result-object v0

    iget-object v1, p0, Lgcu;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;

    invoke-static {v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgbb;->a(Ljava/lang/String;)V

    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    const-string v1, "motivo_envio_selected"

    iget-object v2, p0, Lgcu;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;

    invoke-static {v2}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->b(Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;)Lgbb;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Lgcu;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 89
    iget-object v0, p0, Lgcu;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;

    invoke-virtual {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->finish()V

    .line 93
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lgcu;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;

    iget-object v0, v0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->i:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0901d0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgcu;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;

    const v2, 0x7f10069e

    invoke-virtual {v1, v2}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lmzv;->a(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0
.end method
