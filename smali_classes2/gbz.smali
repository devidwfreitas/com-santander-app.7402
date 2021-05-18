.class public Lgbz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lgbz;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 353
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 370
    :goto_0
    :pswitch_0
    return-void

    .line 355
    :pswitch_1
    iget-object v0, p0, Lgbz;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->i(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lgte;

    move-result-object v0

    sget-object v1, Lgtd;->CAMBIO_VET:Lgtd;

    invoke-virtual {v0, v1}, Lgte;->a(Lgtd;)V

    goto :goto_0

    .line 358
    :pswitch_2
    iget-object v0, p0, Lgbz;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->i(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lgte;

    move-result-object v0

    sget-object v1, Lgtd;->CAMBIO_VALOR_TOTAL_DEBITO:Lgtd;

    invoke-virtual {v0, v1}, Lgte;->a(Lgtd;)V

    goto :goto_0

    .line 361
    :pswitch_3
    iget-object v0, p0, Lgbz;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->i(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lgte;

    move-result-object v0

    sget-object v1, Lgtd;->CAMBIO_TIMER:Lgtd;

    invoke-virtual {v0, v1}, Lgte;->a(Lgtd;)V

    goto :goto_0

    .line 365
    :pswitch_4
    const-string v0, "ServicosInternacionais_Cambio_Cambio_Acao"

    const-string v1, "Confirmar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lgbz;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->l(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lgdk;

    move-result-object v0

    iget-object v1, p0, Lgbz;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-static {v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->j(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lgaq;

    move-result-object v1

    iget-object v2, p0, Lgbz;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-static {v2}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->k(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v2

    iget-object v3, p0, Lgbz;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-static {v3}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->d(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lcom/santander/app/components/view/SantanderEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/santander/app/components/view/SantanderEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lgbz;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-static {v4}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lgaz;

    move-result-object v4

    iget-object v5, p0, Lgbz;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-static {v5}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->f(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lgaz;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lgdk;->a(Lgaq;Lcom/santander/app/contacorrente/domain/Conta;Ljava/lang/String;Lgaz;Lgaz;)V

    goto :goto_0

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0x7f100aa6
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
