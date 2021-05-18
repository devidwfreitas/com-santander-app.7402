.class public Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lnau;


# static fields
.field private static final a:Ljava/lang/String; = "InvestimentoNoAtmConfirmacaoActivity"


# instance fields
.field private b:I

.field private c:Landroid/app/Dialog;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lkbu;

.field private f:I

.field private g:I

.field private w:Lfuu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->b:I

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->g:I

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->c:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;)Lkbu;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->e:Lkbu;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 78
    const v1, 0x7f100d6e

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 80
    if-nez v1, :cond_0

    .line 81
    new-instance v1, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    .line 82
    iget v2, p0, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->b:I

    invoke-virtual {v1, v2}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 83
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 84
    const v2, 0x7f100d6f

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 85
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 86
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 88
    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;)Lfuu;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->w:Lfuu;

    return-object v0
.end method

.method private b()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->d:Ljava/util/ArrayList;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->d:Ljava/util/ArrayList;

    .line 196
    new-instance v0, Lgky;

    const v1, 0x7f0906f3

    invoke-virtual {p0, v1}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmzr;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgky;->a(Z)V

    .line 198
    iget-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v0, Lgky;

    const v1, 0x7f09066b

    invoke-virtual {p0, v1}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmzr;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v0, Lgky;

    const v1, 0x7f09062f

    invoke-virtual {p0, v1}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->e:Lkbu;

    invoke-virtual {v2}, Lkbu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v0, Lgky;

    const v1, 0x7f090660

    invoke-virtual {p0, v1}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->e:Lkbu;

    invoke-virtual {v2}, Lkbu;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaq;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->c:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->f:I

    return v0
.end method

.method public static synthetic e(Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->b()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(IZ)V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lkbb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkbb;-><init>(Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;Lkba;)V

    const/4 v1, 0x0

    new-array v1, v1, [Lkbz;

    invoke-virtual {v0, v1}, Lkbb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f04027e

    invoke-virtual {p0, v0}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 59
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 60
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "investimento_no_atm"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lkbu;

    iput-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->e:Lkbu;

    .line 65
    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "posicaoFinal"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->f:I

    .line 66
    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "posicaoInicial"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->g:I

    .line 67
    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "cuentaBean"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lfuu;

    iput-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->w:Lfuu;

    .line 69
    const v0, 0x7f090a8a

    invoke-virtual {p0, v0}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;->a()V

    .line 73
    return-void
.end method
