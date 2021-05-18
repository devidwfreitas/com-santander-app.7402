.class public Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lgig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 30
    const-string v0, "ParcelamentoFaturaCorrentistaConfirmacaoActivity"

    iput-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;)Lgig;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->b:Lgig;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 119
    new-instance v0, Lnaf;

    invoke-direct {v0}, Lnaf;-><init>()V

    .line 121
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lnaf;->c([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    const-string v1, "ERRO_CRYPTO"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v0, ""

    goto :goto_0
.end method

.method private a()V
    .locals 10

    .prologue
    const/high16 v8, 0x42c80000    # 100.0f

    .line 49
    const v0, 0x7f100d14

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 50
    new-instance v1, Lgiz;

    invoke-direct {v1, p0}, Lgiz;-><init>(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {p0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "parcelarFatura"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lgig;

    iput-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->b:Lgig;

    .line 63
    const-string v2, ""

    .line 64
    const-string v0, ""

    .line 65
    const-string v1, ""

    .line 66
    iget-object v3, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->b:Lgig;

    invoke-virtual {v3}, Lgig;->k()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v2

    move-object v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgif;

    .line 69
    :try_start_0
    invoke-virtual {v0}, Lgif;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 70
    invoke-virtual {v0}, Lgif;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Float;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-virtual {v0}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual {v0}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v2

    move-object v2, v3

    :goto_1
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 78
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_1

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->b:Lgig;

    invoke-virtual {v0}, Lgig;->s()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->b:Lgig;

    invoke-virtual {v0}, Lgig;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 82
    :try_start_1
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->b:Lgig;

    invoke-virtual {v0}, Lgig;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->b:Lgig;

    invoke-virtual {v0}, Lgig;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->s(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 90
    :cond_1
    :goto_2
    const v0, 0x7f10053e

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    iget-object v4, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->b:Lgig;

    invoke-virtual {v4}, Lgig;->m()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnaj;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const v0, 0x7f100540

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 93
    iget-object v4, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->b:Lgig;

    invoke-virtual {v4}, Lgig;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnak;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const v0, 0x7f101045

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->b:Lgig;

    invoke-virtual {v5}, Lgig;->v()Ljava/lang/String;

    move-result-object v5

    const-string v6, "+"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    div-float/2addr v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const v0, 0x7f101049

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 101
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    const v0, 0x7f10105e

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const v0, 0x7f101060

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const v0, 0x7f101062

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->b:Lgig;

    invoke-virtual {v2}, Lgig;->u()Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const v0, 0x7f101064

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->b:Lgig;

    invoke-virtual {v2}, Lgig;->r()Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const v0, 0x7f101066

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 111
    iget-object v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->b:Lgig;

    invoke-virtual {v1}, Lgig;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const v0, 0x7f101068

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 113
    iget-object v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->b:Lgig;

    invoke-virtual {v1}, Lgig;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    return-void

    .line 85
    :catch_1
    move-exception v0

    .line 86
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->b:Lgig;

    invoke-virtual {v0}, Lgig;->s()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f04033d

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 39
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 40
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 42
    const v1, 0x7f090826

    invoke-virtual {p0, v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->a()V

    .line 45
    return-void
.end method
