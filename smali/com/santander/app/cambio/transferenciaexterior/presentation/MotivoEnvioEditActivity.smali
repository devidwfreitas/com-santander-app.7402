.class public Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field private a:Lgbb;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 55
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->a:Lgbb;

    invoke-virtual {v0}, Lgbb;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->a:Lgbb;

    invoke-virtual {v1}, Lgbb;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->a:Lgbb;

    invoke-virtual {v0}, Lgbb;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->a:Lgbb;

    invoke-virtual {v1}, Lgbb;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :goto_1
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->a:Lgbb;

    invoke-virtual {v0}, Lgbb;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->a:Lgbb;

    invoke-virtual {v1}, Lgbb;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :goto_2
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public static synthetic b(Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;)Lgbb;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->a:Lgbb;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 72
    new-instance v1, Lgui;

    invoke-direct {v1}, Lgui;-><init>()V

    .line 73
    const v0, 0x7f10032d

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->b:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f1004a9

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->c:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f100ff9

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->d:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f10069f

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->e:Landroid/widget/EditText;

    .line 77
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Lgui;->a(Landroid/widget/EditText;)V

    .line 78
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 80
    const v0, 0x7f100783

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->f:Landroid/widget/Button;

    .line 81
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->f:Landroid/widget/Button;

    new-instance v1, Lgcu;

    invoke-direct {v1, p0}, Lgcu;-><init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f040320

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 42
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 43
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 45
    const v1, 0x7f090346

    invoke-virtual {p0, v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "motivo_envio_edit"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lgbb;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->a:Lgbb;

    .line 49
    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->b()V

    .line 51
    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioEditActivity;->a()V

    .line 52
    return-void
.end method
