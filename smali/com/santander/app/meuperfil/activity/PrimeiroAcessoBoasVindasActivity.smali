.class public Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field protected static a:Ljava/util/ArrayList;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Z

.field private d:Landroid/app/AlertDialog;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Landroid/app/Activity;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 32
    const-string v0, "PrimeiroAcessoBoasVindasActivity"

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->b:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->c:Z

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->e:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->f:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->i:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->h:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public aoSelecionarContinuar(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->c:Z

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 90
    const v2, 0x7f04018c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 91
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->d:Landroid/app/AlertDialog;

    .line 92
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget v0, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    const-string v1, "Nome"

    iget-object v2, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v1, "cpf"

    iget-object v2, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 99
    :cond_2
    iget v0, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "listaContas"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->a:Ljava/util/ArrayList;

    .line 102
    const-string v1, "Nome"

    iget-object v2, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v1, "cpf"

    iget-object v2, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v1, "listaContas"

    sget-object v2, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 105
    const-string v1, "selecionaActivity"

    iget v2, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->startActivity(Landroid/content/Intent;)V

    .line 107
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->finish()V

    goto :goto_0

    .line 108
    :cond_3
    iget v0, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 109
    new-instance v0, Lfoi;

    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->h:Landroid/app/Activity;

    new-instance v2, Ljpu;

    invoke-direct {v2, p0}, Ljpu;-><init>(Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;)V

    invoke-direct {v0, v1, v2}, Lfoi;-><init>(Landroid/app/Activity;Lfoh;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 124
    invoke-virtual {v0, v1}, Lfoi;->c([Ljava/lang/Object;)Lgne;

    goto :goto_0
.end method

.method public aoSelecionarTermos(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoTermos;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->startActivity(Landroid/content/Intent;)V

    .line 84
    return-void
.end method

.method public checkBoxTermos(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->c:Z

    .line 135
    return-void

    .line 134
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissDialog(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 131
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 139
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 140
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->h:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    const-string v1, "reopen"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->h:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 143
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f04034c

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->setContentView(I)V

    .line 48
    iput-object p0, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->h:Landroid/app/Activity;

    .line 49
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02061f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 52
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 53
    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 55
    const v0, 0x7f1004c6

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 58
    :try_start_0
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Nome"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->e:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cpf"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->f:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "selecionaActivity"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->g:I

    .line 61
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "codRetorno"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "codRetorno"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->i:Ljava/lang/String;

    .line 63
    const v0, 0x7f10109e

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OL\u00c1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const v0, 0x7f100190

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 67
    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->i:Ljava/lang/String;

    const-string v2, "106"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    const-string v1, "A mesma senha que voc\u00ea cadastrou no Internet Banking ser\u00e1 utilizada para acessar o aplicativo Santander e a Central de Atendimento Santander."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :goto_1
    return-void

    .line 61
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->i:Ljava/lang/String;

    const-string v2, "107"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    const-string v1, "A mesma senha que voc\u00ea cadastrou na Central de Atendimento Santander ser\u00e1 utilizada para acessar o aplicativo Santander e o Internet Banking."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 75
    :catch_0
    move-exception v0

    .line 77
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 72
    :cond_2
    const v1, 0x7f090a02

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
