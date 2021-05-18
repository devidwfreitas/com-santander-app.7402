.class public Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lgiy;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Ljava/lang/String;

.field private E:Lgjj;

.field private final a:Ljava/lang/String;

.field private b:Lghw;

.field private c:Lgif;

.field private d:Lghu;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 41
    const-string v0, "ParcelamentoFaturaCorrentistaConfirmacaoActivity"

    iput-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;)Lghw;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->b:Lghw;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    new-instance v0, Lnaf;

    invoke-direct {v0}, Lnaf;-><init>()V

    .line 132
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

    .line 137
    :goto_0
    return-object v0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    const-string v1, "ERRO_CRYPTO"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v0, ""

    goto :goto_0
.end method

.method public static synthetic b(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;)Lgif;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->c:Lgif;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;)Lghu;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->d:Lghu;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "calculoParcelarFatura"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lghw;

    iput-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->b:Lghw;

    .line 80
    invoke-virtual {p0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "parcelaSelecionada"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lgif;

    iput-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->c:Lgif;

    .line 81
    invoke-virtual {p0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cartaoSelecionado"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lghu;

    iput-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->d:Lghu;

    .line 83
    const v0, 0x7f100d14

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 84
    const v1, 0x7f100d0a

    invoke-virtual {p0, v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->e:Landroid/widget/TextView;

    .line 85
    const v1, 0x7f100d0b

    invoke-virtual {p0, v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->f:Landroid/widget/TextView;

    .line 86
    const v1, 0x7f100d0c

    invoke-virtual {p0, v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->g:Landroid/widget/TextView;

    .line 87
    const v1, 0x7f100d0d

    invoke-virtual {p0, v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->w:Landroid/widget/TextView;

    .line 88
    const v1, 0x7f100d0e

    invoke-virtual {p0, v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->x:Landroid/widget/TextView;

    .line 89
    const v1, 0x7f100d0f

    invoke-virtual {p0, v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->y:Landroid/widget/TextView;

    .line 90
    const v1, 0x7f100d10

    invoke-virtual {p0, v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->z:Landroid/widget/TextView;

    .line 91
    const v1, 0x7f100d11

    invoke-virtual {p0, v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->A:Landroid/widget/TextView;

    .line 92
    const v1, 0x7f100d12

    invoke-virtual {p0, v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->B:Landroid/widget/TextView;

    .line 93
    const v1, 0x7f100d13

    invoke-virtual {p0, v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->C:Landroid/widget/TextView;

    .line 95
    const v1, 0x7f100d09

    invoke-virtual {p0, v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 98
    new-instance v2, Lgjg;

    invoke-direct {v2, p0}, Lgjg;-><init>(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    new-instance v0, Lgjh;

    invoke-direct {v0, p0}, Lgjh;-><init>(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    new-instance v0, Lgjk;

    invoke-direct {v0, p0}, Lgjk;-><init>(Lgiy;)V

    iput-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->E:Lgjj;

    .line 126
    return-void
.end method

.method public static synthetic d(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;)Lgjj;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->E:Lgjj;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 3

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 162
    const-string v0, ""

    .line 163
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->b:Lghw;

    invoke-virtual {v0}, Lghw;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->b:Lghw;

    invoke-virtual {v0}, Lghw;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->b:Lghw;

    invoke-virtual {v0}, Lghw;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->b:Lghw;

    invoke-virtual {v0}, Lghw;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->c:Lgif;

    invoke-virtual {v0}, Lgif;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->c:Lgif;

    invoke-virtual {v0}, Lgif;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const/high16 v7, 0x42c80000    # 100.0f

    .line 143
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->c:Lgif;

    invoke-virtual {v0}, Lgif;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->c:Lgif;

    invoke-virtual {v1}, Lgif;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v1, v7

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-direct {p0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->D:Ljava/lang/String;

    .line 149
    iget-object v2, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->d:Lghu;

    invoke-virtual {v3}, Lghu;->H()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v2, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->f:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->b:Lghw;

    invoke-virtual {v3}, Lghw;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnak;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v2, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->g:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->b:Lghw;

    invoke-virtual {v4}, Lghw;->w()Ljava/lang/String;

    move-result-object v4

    const-string v5, "+"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    div-float/2addr v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v2, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->x:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->D:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->z:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->b:Lghw;

    invoke-virtual {v2}, Lghw;->v()Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v2, v7

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

    .line 156
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->A:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->b:Lghw;

    invoke-virtual {v2}, Lghw;->s()Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v2, v7

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

    .line 157
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->B:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->b:Lghw;

    invoke-virtual {v1}, Lghw;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->b:Lghw;

    invoke-virtual {v1}, Lghw;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    return-void
.end method

.method public a(Lgid;)V
    .locals 3

    .prologue
    .line 183
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaComprovanteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    const-string v1, "codigoBarrasParcelamentoFatura"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 186
    const-string v1, "valorPrimeiraParcela"

    iget-object v2, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->D:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 189
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public b(Lgid;)V
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p1}, Lgid;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmxn;->e(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    .line 194
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f040341

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 69
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 70
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 72
    const v1, 0x7f090826

    invoke-virtual {p0, v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->c()V

    .line 75
    return-void
.end method
