.class Lgxo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lgta;

.field final synthetic b:Lgxj;


# direct methods
.method constructor <init>(Lgxj;Lgta;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lgxo;->b:Lgxj;

    iput-object p2, p0, Lgxo;->a:Lgta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 351
    check-cast p1, Lgwy;

    .line 352
    invoke-virtual {p1}, Lgwy;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lgxo;->a:Lgta;

    invoke-virtual {v0}, Lgta;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgws;->valueOf(Ljava/lang/String;)Lgws;

    move-result-object v0

    .line 356
    sget-object v1, Lgxr;->b:[I

    invoke-virtual {v0}, Lgws;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 358
    :pswitch_0
    iget-object v0, p0, Lgxo;->b:Lgxj;

    iget-object v1, p0, Lgxo;->a:Lgta;

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lgxj;->a(Lgxj;Lgta;I)V

    goto :goto_0

    .line 362
    :pswitch_1
    iget-object v0, p0, Lgxo;->b:Lgxj;

    iget-object v1, p0, Lgxo;->a:Lgta;

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Lgxj;->a(Lgxj;Lgta;I)V

    goto :goto_0

    .line 366
    :pswitch_2
    iget-object v0, p0, Lgxo;->b:Lgxj;

    iget-object v1, p0, Lgxo;->a:Lgta;

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lgxj;->a(Lgxj;Lgta;I)V

    goto :goto_0

    .line 370
    :pswitch_3
    iget-object v0, p0, Lgxo;->b:Lgxj;

    iget-object v1, p0, Lgxo;->a:Lgta;

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lgxj;->a(Lgxj;Lgta;I)V

    goto :goto_0

    .line 374
    :pswitch_4
    iget-object v0, p0, Lgxo;->b:Lgxj;

    iget-object v0, v0, Lgxj;->a:Lgxg;

    iget-object v0, v0, Lgxg;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 375
    iget-object v0, p0, Lgxo;->b:Lgxj;

    iget-object v0, v0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->h(Lgxg;)Lgxu;

    move-result-object v0

    const-class v1, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-interface {v0, v1}, Lgxu;->a(Ljava/lang/Class;)V

    .line 376
    iget-object v0, p0, Lgxo;->b:Lgxj;

    iget-object v0, v0, Lgxj;->a:Lgxg;

    iget-object v0, v0, Lgxg;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->w()Lgwx;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgwx;->b(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 378
    :cond_1
    iget-object v0, p0, Lgxo;->b:Lgxj;

    iget-object v0, v0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->i(Lgxg;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lgxo;->b:Lgxj;

    iget-object v1, v1, Lgxj;->a:Lgxg;

    invoke-static {v1}, Lgxg;->i(Lgxg;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090336

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :pswitch_5
    iget-object v0, p0, Lgxo;->b:Lgxj;

    iget-object v0, v0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->i(Lgxg;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "POUPANCA"

    invoke-static {v0, v1}, Ljcw;->c(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 387
    :pswitch_6
    iget-object v0, p0, Lgxo;->b:Lgxj;

    iget-object v0, v0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->i(Lgxg;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "POUPANCA"

    invoke-static {v0, v1}, Ljcw;->c(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 391
    :pswitch_7
    iget-object v0, p0, Lgxo;->b:Lgxj;

    iget-object v0, v0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->i(Lgxg;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "CDB_RECOMPENSA"

    invoke-static {v0, v1}, Ljcw;->c(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 395
    :pswitch_8
    iget-object v0, p0, Lgxo;->b:Lgxj;

    iget-object v0, v0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->i(Lgxg;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "CDB_FUNCIONARIO"

    invoke-static {v0, v1}, Ljcw;->c(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 399
    :pswitch_9
    iget-object v0, p0, Lgxo;->b:Lgxj;

    iget-object v0, v0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->i(Lgxg;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "PREVIDENCIA"

    invoke-static {v0, v1}, Ljcw;->c(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 402
    :pswitch_a
    iget-object v0, p0, Lgxo;->b:Lgxj;

    iget-object v0, v0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->h(Lgxg;)Lgxu;

    move-result-object v0

    const-class v1, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;

    invoke-interface {v0, v1}, Lgxu;->a(Ljava/lang/Class;)V

    .line 403
    iget-object v0, p0, Lgxo;->b:Lgxj;

    iget-object v0, v0, Lgxj;->a:Lgxg;

    iget-object v0, v0, Lgxg;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->w()Lgwx;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgwx;->b(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 407
    :pswitch_b
    iget-object v0, p0, Lgxo;->b:Lgxj;

    iget-object v0, v0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->i(Lgxg;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "CDB_VG_DIGITAL"

    invoke-static {v0, v1}, Ljcw;->c(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 411
    :pswitch_c
    iget-object v0, p0, Lgxo;->b:Lgxj;

    iget-object v0, v0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->i(Lgxg;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "FUNDOS"

    invoke-static {v0, v1}, Ljcw;->c(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
