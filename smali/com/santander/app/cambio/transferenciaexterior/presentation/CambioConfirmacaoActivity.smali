.class public Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lgcd;
.implements Lnau;


# instance fields
.field private A:Lcom/santander/app/components/view/SantanderTextView;

.field private B:Lcom/santander/app/components/view/SantanderTextView;

.field private C:Lcom/santander/app/components/view/SantanderTextView;

.field private D:Lcom/santander/app/components/view/SantanderTextView;

.field private E:Lcom/santander/app/components/view/SantanderTextView;

.field private F:Lcom/santander/app/components/view/SantanderTextView;

.field private G:Lcom/santander/app/components/view/SantanderTextView;

.field private H:Lcom/santander/app/components/view/SantanderTextView;

.field private I:Lcom/santander/app/components/view/SantanderTextView;

.field private J:Lcom/santander/app/components/view/SantanderTextView;

.field private K:Lcom/santander/app/components/view/SantanderTextView;

.field private L:Lcom/santander/app/components/view/SantanderTextView;

.field private M:Lcom/santander/app/components/view/SantanderTextView;

.field private N:Lcom/santander/app/components/view/SantanderTextView;

.field private O:Lcom/santander/app/components/view/SantanderTextView;

.field private P:Lcom/santander/app/components/view/SantanderButtonView;

.field private Q:Lgaq;

.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/LinearLayout;

.field private c:Lgdi;

.field private final d:I

.field private e:Lcom/santander/app/components/view/SantanderTextView;

.field private f:Lcom/santander/app/components/view/SantanderTextView;

.field private g:Lcom/santander/app/components/view/SantanderTextView;

.field private w:Lcom/santander/app/components/view/SantanderTextView;

.field private x:Lcom/santander/app/components/view/SantanderTextView;

.field private y:Lcom/santander/app/components/view/SantanderTextView;

.field private z:Lcom/santander/app/components/view/SantanderTextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->d:I

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cambio_dados"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lgaq;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->Q:Lgaq;

    .line 71
    const v0, 0x7f10014f

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->b:Landroid/widget/LinearLayout;

    .line 72
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 74
    const v0, 0x7f100cde

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->a:Landroid/widget/LinearLayout;

    .line 75
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 77
    new-instance v0, Lgdj;

    invoke-direct {v0, p0}, Lgdj;-><init>(Lgcd;)V

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->c:Lgdi;

    .line 79
    const v0, 0x7f100ac5

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderButtonView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->P:Lcom/santander/app/components/view/SantanderButtonView;

    .line 80
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->P:Lcom/santander/app/components/view/SantanderButtonView;

    invoke-virtual {v0, p0}, Lcom/santander/app/components/view/SantanderButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v0, 0x7f100aaf

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->e:Lcom/santander/app/components/view/SantanderTextView;

    .line 84
    const v0, 0x7f100ab0

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->f:Lcom/santander/app/components/view/SantanderTextView;

    .line 85
    const v0, 0x7f100ab1

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->g:Lcom/santander/app/components/view/SantanderTextView;

    .line 86
    const v0, 0x7f100ab2

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->w:Lcom/santander/app/components/view/SantanderTextView;

    .line 87
    const v0, 0x7f100ab3

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->x:Lcom/santander/app/components/view/SantanderTextView;

    .line 88
    const v0, 0x7f100ab4

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->y:Lcom/santander/app/components/view/SantanderTextView;

    .line 89
    const v0, 0x7f100ab5

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->z:Lcom/santander/app/components/view/SantanderTextView;

    .line 90
    const v0, 0x7f100ab6

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->A:Lcom/santander/app/components/view/SantanderTextView;

    .line 91
    const v0, 0x7f100ab7

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->B:Lcom/santander/app/components/view/SantanderTextView;

    .line 92
    const v0, 0x7f100ab8

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->C:Lcom/santander/app/components/view/SantanderTextView;

    .line 93
    const v0, 0x7f100ab9

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->D:Lcom/santander/app/components/view/SantanderTextView;

    .line 94
    const v0, 0x7f100aba

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->E:Lcom/santander/app/components/view/SantanderTextView;

    .line 95
    const v0, 0x7f100abd

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->F:Lcom/santander/app/components/view/SantanderTextView;

    .line 96
    const v0, 0x7f100abc

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->G:Lcom/santander/app/components/view/SantanderTextView;

    .line 97
    const v0, 0x7f100abb

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->H:Lcom/santander/app/components/view/SantanderTextView;

    .line 98
    const v0, 0x7f100abe

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->I:Lcom/santander/app/components/view/SantanderTextView;

    .line 99
    const v0, 0x7f100abf

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->J:Lcom/santander/app/components/view/SantanderTextView;

    .line 100
    const v0, 0x7f100ac0

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->K:Lcom/santander/app/components/view/SantanderTextView;

    .line 101
    const v0, 0x7f100ac1

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->L:Lcom/santander/app/components/view/SantanderTextView;

    .line 102
    const v0, 0x7f100ac2

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->M:Lcom/santander/app/components/view/SantanderTextView;

    .line 103
    const v0, 0x7f100ac3

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->N:Lcom/santander/app/components/view/SantanderTextView;

    .line 104
    const v0, 0x7f100ac4

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->O:Lcom/santander/app/components/view/SantanderTextView;

    .line 106
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->c:Lgdi;

    iget-object v1, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->Q:Lgaq;

    invoke-interface {v0, v1}, Lgdi;->b(Lgaq;)V

    .line 107
    return-void
.end method

.method private b(Lgaq;)V
    .locals 2

    .prologue
    .line 182
    const-string v0, "ServicosInternacionais_Cambio_Confirmacao_Pais"

    invoke-virtual {p1}, Lgaq;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v0, "ServicosInternacionais_Cambio_Confirmacao_MoedaEstrangeira"

    invoke-virtual {p1}, Lgaq;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v0, "ServicosInternacionais_Cambio_Confirmacao_MoedaNacional"

    invoke-virtual {p1}, Lgaq;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v0, "ServicosInternacionais_Cambio_Confirmacao_ValorCorrespondente"

    invoke-virtual {p1}, Lgaq;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const v3, 0x7f100cde

    .line 117
    invoke-virtual {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 118
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 120
    if-nez v1, :cond_0

    .line 121
    new-instance v1, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    .line 122
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 123
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 124
    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 125
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 126
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 131
    return-void
.end method

.method public a(IZ)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->c:Lgdi;

    iget-object v1, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->Q:Lgaq;

    invoke-interface {v0, v1}, Lgdi;->a(Lgaq;)V

    .line 112
    return-void
.end method

.method public a(Lgaq;)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->e:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Lgaq;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->f:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Lgaq;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->g:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Lgaq;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->w:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Lgaq;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->x:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Lgaq;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->y:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Lgaq;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->z:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Lgaq;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->A:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Lgaq;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->B:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Lgaq;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->C:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Lgaq;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->D:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Lgaq;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->E:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Lgaq;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->F:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Lgaq;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->G:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Lgaq;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->H:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Lgaq;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->I:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Lgaq;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->J:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Lgaq;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->K:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Lgaq;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->L:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Lgaq;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->M:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Lgaq;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->N:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Lgaq;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->O:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Lgaq;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-direct {p0, p1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->b(Lgaq;)V

    .line 167
    return-void
.end method

.method public a(Lgvb;)V
    .locals 2

    .prologue
    .line 135
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    const-string v1, "comprovanteBase"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 138
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 178
    :goto_0
    return-void

    .line 173
    :pswitch_0
    const-string v0, "ServicosInternacionais_Cambio_Confirmacao_Acao"

    const-string v1, "Confirmar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->c:Lgdi;

    invoke-interface {v0}, Lgdi;->a()V

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x7f100ac5
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f04002d

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 57
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 59
    const v1, 0x7f0902b7

    invoke-virtual {p0, v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 62
    :try_start_0
    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;->b()V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
