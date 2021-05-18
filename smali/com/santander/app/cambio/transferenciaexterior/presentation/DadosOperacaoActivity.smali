.class public Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lgck;


# instance fields
.field private A:Landroid/app/Dialog;

.field private B:Lgav;

.field private a:Lcom/santander/app/components/view/ClickToSelectEditText;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Lgdn;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private w:Lgdc;

.field private x:Ljava/lang/String;

.field private y:Lgbb;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;)Lgav;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->B:Lgav;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;Lgav;)Lgav;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->B:Lgav;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;Lgdc;)Lgdc;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->w:Lgdc;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;Lgdn;)Lgdn;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->e:Lgdn;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->x:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic b(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;)Lcom/santander/app/components/view/ClickToSelectEditText;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->a:Lcom/santander/app/components/view/ClickToSelectEditText;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 69
    const v0, 0x7f100b0e

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->b:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f100b14

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->f:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f100b15

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->g:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f100b10

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/ClickToSelectEditText;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->a:Lcom/santander/app/components/view/ClickToSelectEditText;

    .line 74
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->a:Lcom/santander/app/components/view/ClickToSelectEditText;

    new-instance v1, Lgcf;

    invoke-direct {v1, p0}, Lgcf;-><init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ClickToSelectEditText;->setOnItemSelectedListener(Lgpd;)V

    .line 104
    const v0, 0x7f100b11

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->d:Landroid/widget/RelativeLayout;

    .line 105
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Lgch;

    invoke-direct {v1, p0}, Lgch;-><init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f100ae6

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->z:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f1009d7

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->c:Landroid/widget/Button;

    .line 115
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->c:Landroid/widget/Button;

    new-instance v1, Lgci;

    invoke-direct {v1, p0}, Lgci;-><init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lgcj;

    invoke-direct {v2, p0}, Lgcj;-><init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;)V

    invoke-static {p0, v0, v1, v2}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->A:Landroid/app/Dialog;

    .line 134
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;)Lgdc;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->w:Lgdc;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->x:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;)Lgdn;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->e:Lgdn;

    return-object v0
.end method

.method public static synthetic f(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;)Lgbb;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->y:Lgbb;

    return-object v0
.end method

.method public static synthetic g(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->A:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public a(Lgaq;)V
    .locals 2

    .prologue
    .line 160
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    const-string v1, "cambio_dados"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 162
    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 163
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lgbb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    const-string v1, "motivo_envio"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 169
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 170
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgav;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->a:Lcom/santander/app/components/view/ClickToSelectEditText;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/ClickToSelectEditText;->setItems(Ljava/util/List;)V

    .line 139
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0, p1, p2, p3}, Lgrs;->onActivityResult(IILandroid/content/Intent;)V

    .line 179
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 180
    const-string v0, "motivo_envio_selected"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lgbb;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->y:Lgbb;

    .line 181
    const-string v0, "ServicosInternacionais_Cambio_DadosDaOperacao_MotivoDoEnvioDaMoedaEstrangeira_Acao"

    iget-object v1, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->y:Lgbb;

    invoke-virtual {v1}, Lgbb;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->y:Lgbb;

    invoke-virtual {v0}, Lgbb;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->b(Ljava/lang/String;)V

    .line 186
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f04014b

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->setContentView(I)V

    .line 59
    invoke-virtual {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 61
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 63
    const v1, 0x7f090346

    invoke-virtual {p0, v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->b()V

    .line 66
    return-void
.end method
