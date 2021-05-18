.class public Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lnau;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/widget/Button;

.field private c:Landroid/app/AlertDialog;

.field private d:Landroid/app/Dialog;

.field private e:Lgac;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 37
    const-string v0, "CSODebitoAutomaticoActivity"

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;->d:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;)Lgac;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;->e:Lgac;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;->d:Landroid/app/Dialog;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 67
    const-string v1, "EXTRADADOS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lgac;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;->e:Lgac;

    .line 68
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 150
    const-string v0, "avaliacaoApp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 152
    const-string v1, "transacaoKey"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 153
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 154
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const v3, 0x7f100685

    .line 73
    invoke-virtual {p0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 75
    if-nez v1, :cond_0

    .line 76
    new-instance v1, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    .line 77
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 78
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 79
    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 80
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 81
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 83
    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 2

    .prologue
    .line 146
    new-instance v0, Lfzo;

    invoke-direct {v0, p0}, Lfzo;-><init>(Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfzo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 147
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f04013f

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 52
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 53
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 54
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 56
    const-string v1, "D\u00e9bito Autom\u00e1tico"

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;->b()V

    .line 60
    invoke-virtual {p0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CSODebitoAutomaticoActivity;->a()V

    .line 62
    return-void
.end method
