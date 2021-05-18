.class public Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lgct;


# instance fields
.field private A:Lgbd;

.field private B:Lgdq;

.field private C:Lgaq;

.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Lcom/santander/app/components/view/ClickToSelectEditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private w:Landroid/widget/Button;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method private a(Lgtd;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lgcr;

    invoke-direct {v0, p0, p1}, Lgcr;-><init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;Lgtd;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)Lgbd;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->A:Lgbd;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;Lgbd;)Lgbd;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->A:Lgbd;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cambio_dados"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lgaq;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->C:Lgaq;

    .line 77
    const v0, 0x7f100bdd

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->a:Landroid/widget/EditText;

    .line 78
    const v0, 0x7f100bdf

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->b:Landroid/widget/EditText;

    .line 79
    const v0, 0x7f100be1

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/ClickToSelectEditText;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->c:Lcom/santander/app/components/view/ClickToSelectEditText;

    .line 80
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->c:Lcom/santander/app/components/view/ClickToSelectEditText;

    new-instance v1, Lgco;

    invoke-direct {v1, p0}, Lgco;-><init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ClickToSelectEditText;->setOnItemSelectedListener(Lgpd;)V

    .line 95
    const v0, 0x7f100be3

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->d:Landroid/widget/EditText;

    .line 96
    const v0, 0x7f100be5

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->e:Landroid/widget/EditText;

    .line 97
    const v0, 0x7f100be8

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->f:Landroid/widget/EditText;

    .line 99
    const v0, 0x7f100beb

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->g:Landroid/widget/EditText;

    .line 100
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->g:Landroid/widget/EditText;

    new-instance v1, Lgcp;

    invoke-direct {v1, p0}, Lgcp;-><init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 114
    const v0, 0x7f1009d7

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->w:Landroid/widget/Button;

    .line 116
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->w:Landroid/widget/Button;

    new-instance v1, Lgcq;

    invoke-direct {v1, p0}, Lgcq;-><init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v0, 0x7f100bec

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->x:Landroid/widget/ImageView;

    .line 136
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->x:Landroid/widget/ImageView;

    sget-object v1, Lgtd;->CAMBIO_INFO_ADICIONAIS:Lgtd;

    invoke-direct {p0, v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->a(Lgtd;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v0, 0x7f100be9

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->y:Landroid/widget/ImageView;

    .line 138
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->y:Landroid/widget/ImageView;

    sget-object v1, Lgtd;->CAMBIO_SWIFT:Lgtd;

    invoke-direct {p0, v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->a(Lgtd;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v0, 0x7f100be6

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->z:Landroid/widget/ImageView;

    .line 140
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->z:Landroid/widget/ImageView;

    sget-object v1, Lgtd;->CAMBIO_AG_CC_BENEFICIARIO:Lgtd;

    invoke-direct {p0, v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->a(Lgtd;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->c:Lcom/santander/app/components/view/ClickToSelectEditText;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/ClickToSelectEditText;->setText(Ljava/lang/CharSequence;)V

    .line 180
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)Lgdq;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->B:Lgdq;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)Lcom/santander/app/components/view/ClickToSelectEditText;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->c:Lcom/santander/app/components/view/ClickToSelectEditText;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic f(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic g(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic h(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic i(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic j(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;)Lgaq;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->C:Lgaq;

    return-object v0
.end method


# virtual methods
.method public a(Lgaq;)V
    .locals 2

    .prologue
    .line 173
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    const-string v1, "cambio_dados"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 175
    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->startActivity(Landroid/content/Intent;)V

    .line 176
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lgbd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->c:Lcom/santander/app/components/view/ClickToSelectEditText;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/ClickToSelectEditText;->setItems(Ljava/util/List;)V

    .line 162
    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lgbd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    const-string v1, "demais_paises"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 168
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 169
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 184
    invoke-static {p0}, Lgpu;->b(Landroid/app/Activity;)V

    .line 185
    invoke-super {p0, p1, p2, p3}, Lgrs;->onActivityResult(IILandroid/content/Intent;)V

    .line 186
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 187
    const-string v0, "demais_paises_selected"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lgbd;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->A:Lgbd;

    .line 188
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->A:Lgbd;

    if-eqz v0, :cond_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->A:Lgbd;

    invoke-virtual {v0}, Lgbd;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->a(Ljava/lang/String;)V

    .line 192
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f0401c8

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 63
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 64
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 66
    const v1, 0x7f0901d4

    invoke-virtual {p0, v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->a()V

    .line 70
    new-instance v0, Lgdr;

    invoke-direct {v0, p0}, Lgdr;-><init>(Lgct;)V

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->B:Lgdq;

    .line 71
    return-void
.end method
