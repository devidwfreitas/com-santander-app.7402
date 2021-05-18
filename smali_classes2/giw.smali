.class public Lgiw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lgiw;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 224
    if-nez p3, :cond_1

    .line 225
    const-string v0, "Cartoes_ParcelamentoDeFatura_OpcoesDeParcelamento"

    const-string v1, "ParcelasFixas"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_0
    :goto_0
    iget-object v0, p0, Lgiw;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-static {v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->g(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    :goto_1
    return-void

    .line 226
    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 227
    const-string v0, "Cartoes_ParcelamentoDeFatura_OpcoesDeParcelamento"

    const-string v1, "ValorPacial"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_2
    if-nez p3, :cond_3

    .line 235
    iget-object v0, p0, Lgiw;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-static {v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->l(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lgiw;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-static {v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->m(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 243
    :goto_2
    if-nez p3, :cond_4

    .line 244
    iget-object v0, p0, Lgiw;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-static {v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->f(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Lgjl;

    move-result-object v0

    iget-object v1, p0, Lgiw;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-static {v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->e(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Lghu;

    move-result-object v1

    invoke-interface {v0, v1}, Lgjl;->a(Lghu;)V

    goto :goto_1

    .line 239
    :cond_3
    iget-object v0, p0, Lgiw;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-static {v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->l(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lgiw;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-static {v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->m(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 246
    :cond_4
    iget-object v0, p0, Lgiw;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-static {v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->f(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Lgjl;

    move-result-object v2

    iget-object v0, p0, Lgiw;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-static {v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->b(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lgiw;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-static {v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->c(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Lghw;

    move-result-object v0

    :goto_3
    iget-object v1, p0, Lgiw;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-static {v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->e(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Lghu;

    move-result-object v3

    const-string v4, "P"

    iget-object v1, p0, Lgiw;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    .line 247
    invoke-static {v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->b(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lgiw;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-static {v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->c(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Lghw;

    move-result-object v1

    invoke-virtual {v1}, Lghw;->u()Ljava/lang/String;

    move-result-object v1

    .line 246
    :goto_4
    invoke-interface {v2, v0, v3, v4, v1}, Lgjl;->a(Lgnb;Lghu;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lgiw;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-static {v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->d(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Lghv;

    move-result-object v0

    goto :goto_3

    .line 247
    :cond_6
    iget-object v1, p0, Lgiw;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-static {v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->d(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Lghv;

    move-result-object v1

    invoke-virtual {v1}, Lghv;->u()Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 254
    return-void
.end method
