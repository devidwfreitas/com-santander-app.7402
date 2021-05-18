.class public Lcom/santander/app/dpp/DPPConfirmacaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private A:I

.field private B:Landroid/widget/TextView;

.field private C:I

.field private D:Landroid/app/Activity;

.field private E:Z

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Lheq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->E:Z

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 148
    const-string v0, "[R$,.]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 150
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "R$ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 114
    iget-object v0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->b:Landroid/widget/TextView;

    invoke-static {}, Lmzr;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->z:Lheq;

    invoke-static {}, Lmzr;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lheq;->p(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnai;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->z:Lheq;

    iget-object v1, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lheq;->t(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->z:Lheq;

    invoke-virtual {v0}, Lheq;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->d:Landroid/widget/TextView;

    const-string v1, "Nova Conta"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->z:Lheq;

    invoke-virtual {v1}, Lheq;->s()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->z:Lheq;

    invoke-virtual {v1}, Lheq;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->z:Lheq;

    invoke-virtual {v1}, Lheq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->z:Lheq;

    invoke-virtual {v0}, Lheq;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 129
    if-nez v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->w:Landroid/widget/TextView;

    const-string v1, "Indeterminado"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :goto_1
    iget-object v0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->z:Lheq;

    invoke-virtual {v1}, Lheq;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->z:Lheq;

    invoke-virtual {v1}, Lheq;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->z:Lheq;

    invoke-virtual {v2}, Lheq;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget v0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->A:I

    if-ne v0, v4, :cond_0

    .line 140
    iget-object v0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->z:Lheq;

    invoke-virtual {v1}, Lheq;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->z:Lheq;

    invoke-virtual {v1}, Lheq;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->z:Lheq;

    invoke-virtual {v1}, Lheq;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :cond_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->z:Lheq;

    invoke-virtual {v1}, Lheq;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->z:Lheq;

    invoke-virtual {v2}, Lheq;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->w:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public static synthetic a(Lcom/santander/app/dpp/DPPConfirmacaoActivity;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->E:Z

    return v0
.end method

.method public static synthetic b(Lcom/santander/app/dpp/DPPConfirmacaoActivity;)Lheq;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->z:Lheq;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/dpp/DPPConfirmacaoActivity;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->A:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f0401a8

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->setContentView(I)V

    .line 63
    iput-object p0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->D:Landroid/app/Activity;

    .line 65
    invoke-virtual {p0}, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 67
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 69
    const v1, 0x7f0903e3

    invoke-virtual {p0, v1}, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 71
    const v0, 0x7f1007f9

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->b:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f1007fb

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->c:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f1007fd

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->d:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f1007ff

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->e:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f100801

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->f:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f100803

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->g:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f100805

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->w:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f100807

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->y:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f100809

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 80
    const v1, 0x7f100808

    invoke-virtual {p0, v1}, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->B:Landroid/widget/TextView;

    .line 81
    const v1, 0x7f1007e0

    invoke-virtual {p0, v1}, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->x:Landroid/widget/TextView;

    .line 82
    invoke-virtual {p0}, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 83
    const-string v1, "dpp"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lheq;

    iput-object v1, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->z:Lheq;

    .line 84
    const-string v1, "opcao"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->A:I

    .line 85
    const-string v1, "novaPoupanca"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->C:I

    .line 87
    const-string v1, "isProprioCliente"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 88
    const-string v1, "isProprioCliente"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->E:Z

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->a()V

    .line 93
    new-instance v1, Lhdf;

    invoke-direct {v1, p0}, Lhdf;-><init>(Lcom/santander/app/dpp/DPPConfirmacaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void

    :cond_1
    move v1, v2

    .line 88
    goto :goto_0
.end method
