.class public Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/Button;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private final a:Ljava/lang/String;

.field private b:Lgac;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

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
    .line 24
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 26
    const-string v0, "ConfirmarDebitoAutomaticoActivity"

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;)Lgac;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->b:Lgac;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 159
    const-string v1, "EXTRADADOS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lgac;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->b:Lgac;

    .line 160
    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 61
    invoke-direct {p0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->b()V

    .line 63
    const v0, 0x7f1005f6

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->c:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f1005f8

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->d:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f1005fa

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->e:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f1005fd

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->f:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f1005ff

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->g:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f100601

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->w:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f100603

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->x:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f100605

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->y:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f100607

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->z:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f100609

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->A:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f100604

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->C:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f100608

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->D:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f10055c

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->B:Landroid/widget/Button;

    .line 77
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->b:Lgac;

    invoke-virtual {v0}, Lgac;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->b:Lgac;

    invoke-virtual {v1}, Lgac;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->b:Lgac;

    invoke-virtual {v0}, Lgac;->z()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->b:Lgac;

    invoke-virtual {v1}, Lgac;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaq;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->b:Lgac;

    invoke-virtual {v0}, Lgac;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->b:Lgac;

    invoke-virtual {v1}, Lgac;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->b:Lgac;

    invoke-virtual {v0}, Lgac;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 92
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->b:Lgac;

    invoke-virtual {v1}, Lgac;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->b:Lgac;

    invoke-virtual {v0}, Lgac;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 97
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->b:Lgac;

    invoke-virtual {v1}, Lgac;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->b:Lgac;

    invoke-virtual {v0}, Lgac;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 101
    const-string v0, ""

    .line 102
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->b:Lgac;

    invoke-virtual {v0}, Lgac;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 103
    const-string v0, "Sim"

    .line 108
    :goto_0
    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :cond_5
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->b:Lgac;

    invoke-virtual {v0}, Lgac;->D()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0,00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 112
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->y:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "R$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->b:Lgac;

    invoke-virtual {v2}, Lgac;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :goto_1
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->b:Lgac;

    invoke-virtual {v0}, Lgac;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 120
    const-string v0, ""

    .line 121
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->b:Lgac;

    invoke-virtual {v0}, Lgac;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 122
    const-string v0, "Sim"

    .line 128
    :goto_2
    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_6
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->b:Lgac;

    invoke-virtual {v0}, Lgac;->C()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 132
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->b:Lgac;

    invoke-virtual {v0}, Lgac;->C()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 133
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->A:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->b:Lgac;

    invoke-virtual {v1}, Lgac;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->B:Landroid/widget/Button;

    new-instance v1, Lgab;

    invoke-direct {v1, p0}, Lgab;-><init>(Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-void

    .line 106
    :cond_8
    const-string v0, "N\u00e3o"

    goto :goto_0

    .line 115
    :cond_9
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 125
    :cond_a
    const-string v0, "N\u00e3o"

    goto :goto_2

    .line 136
    :cond_b
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->D:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f040129

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 52
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 54
    const-string v1, "D\u00e9bito Autom\u00e1tico"

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lgac;

    invoke-direct {v0}, Lgac;-><init>()V

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->b:Lgac;

    .line 56
    invoke-virtual {p0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ConfirmarDebitoAutomaticoActivity;->a()V

    .line 58
    return-void
.end method
