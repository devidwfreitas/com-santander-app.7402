.class public Lcom/santander/app/CadastramentoTransOkActivity;
.super Lgoj;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/santander/app/CadastramentoTransOkActivity;

.field private c:I

.field private f:I

.field private g:Landroid/widget/ImageView;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lgoj;-><init>()V

    .line 28
    const-string v0, "CadastramentoTransOkActivity"

    iput-object v0, p0, Lcom/santander/app/CadastramentoTransOkActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/CadastramentoTransOkActivity;)Lcom/santander/app/CadastramentoTransOkActivity;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/santander/app/CadastramentoTransOkActivity;->b:Lcom/santander/app/CadastramentoTransOkActivity;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 105
    iget-object v0, p0, Lcom/santander/app/CadastramentoTransOkActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/santander/app/CadastramentoTransOkActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/santander/app/CadastramentoTransOkActivity;->g:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    const v0, 0x7f10053a

    invoke-virtual {p0, v0}, Lcom/santander/app/CadastramentoTransOkActivity;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-object v0, p0, Lcom/santander/app/CadastramentoTransOkActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/santander/app/CadastramentoTransOkActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/santander/app/CadastramentoTransOkActivity;->g:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-super {p0, p1}, Lgoj;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f0400f6

    invoke-virtual {p0, v0}, Lcom/santander/app/CadastramentoTransOkActivity;->setContentView(I)V

    .line 44
    iput-object p0, p0, Lcom/santander/app/CadastramentoTransOkActivity;->b:Lcom/santander/app/CadastramentoTransOkActivity;

    .line 45
    invoke-virtual {p0}, Lcom/santander/app/CadastramentoTransOkActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 46
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 47
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 49
    const v1, 0x7f09043a

    invoke-virtual {p0, v1}, Lcom/santander/app/CadastramentoTransOkActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/santander/app/CadastramentoTransOkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    const-string v1, "strSeqEnd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/santander/app/CadastramentoTransOkActivity;->c:I

    .line 54
    const-string v1, "numCartao"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/santander/app/CadastramentoTransOkActivity;->f:I

    .line 59
    :cond_0
    const v0, 0x7f10053e

    invoke-virtual {p0, v0}, Lcom/santander/app/CadastramentoTransOkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 60
    const v1, 0x7f100540

    invoke-virtual {p0, v1}, Lcom/santander/app/CadastramentoTransOkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 61
    const v2, 0x7f100541

    invoke-virtual {p0, v2}, Lcom/santander/app/CadastramentoTransOkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 63
    iget-object v3, p0, Lcom/santander/app/CadastramentoTransOkActivity;->v:Lmip;

    invoke-interface {v3}, Lmip;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->s()Lght;

    move-result-object v3

    invoke-interface {v3}, Lght;->d()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/santander/app/CadastramentoTransOkActivity;->f:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lghu;

    invoke-virtual {v3}, Lghu;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/santander/app/CadastramentoTransOkActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/santander/app/CadastramentoTransOkActivity;->f:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    .line 65
    invoke-virtual {v0}, Lghu;->n()Lfuk;

    move-result-object v0

    invoke-virtual {v0}, Lfuk;->c()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/santander/app/CadastramentoTransOkActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/santander/app/CadastramentoTransOkActivity;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->m()Lfuf;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lfuf;->g()Ljava/util/Vector;

    move-result-object v0

    iget v1, p0, Lcom/santander/app/CadastramentoTransOkActivity;->c:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfun;

    invoke-virtual {v0}, Lfun;->b()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const v0, 0x7f1000f3

    invoke-virtual {p0, v0}, Lcom/santander/app/CadastramentoTransOkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/CadastramentoTransOkActivity;->g:Landroid/widget/ImageView;

    .line 75
    const v0, 0x7f100542

    invoke-virtual {p0, v0}, Lcom/santander/app/CadastramentoTransOkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/CadastramentoTransOkActivity;->w:Landroid/widget/LinearLayout;

    .line 76
    iget-object v0, p0, Lcom/santander/app/CadastramentoTransOkActivity;->w:Landroid/widget/LinearLayout;

    new-instance v1, Lfgy;

    invoke-direct {v1, p0}, Lfgy;-><init>(Lcom/santander/app/CadastramentoTransOkActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v0, 0x7f100543

    invoke-virtual {p0, v0}, Lcom/santander/app/CadastramentoTransOkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/CadastramentoTransOkActivity;->x:Landroid/widget/LinearLayout;

    .line 89
    iget-object v0, p0, Lcom/santander/app/CadastramentoTransOkActivity;->x:Landroid/widget/LinearLayout;

    new-instance v1, Lfgz;

    invoke-direct {v1, p0}, Lfgz;-><init>(Lcom/santander/app/CadastramentoTransOkActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {p0}, Lcom/santander/app/CadastramentoTransOkActivity;->b()V

    .line 101
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0}, Lgoj;->onResume()V

    .line 115
    invoke-virtual {p0}, Lcom/santander/app/CadastramentoTransOkActivity;->b()V

    .line 116
    return-void
.end method
