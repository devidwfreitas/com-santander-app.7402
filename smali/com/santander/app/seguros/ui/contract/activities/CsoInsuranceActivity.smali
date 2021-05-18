.class public Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lnau;


# static fields
.field public static final a:Ljava/lang/String; = "proposal-formalization-id"

.field public static final b:Ljava/lang/String; = "status_insurance"


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const v3, 0x7f10020d

    .line 58
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 59
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 61
    if-nez v1, :cond_0

    .line 62
    new-instance v1, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    .line 63
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 64
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 66
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 67
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 69
    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "insurance-name-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "insurance-name-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->c:Ljava/lang/String;

    .line 78
    :goto_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "proposal-formalization-id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "proposal-formalization-id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->d:Ljava/lang/String;

    .line 84
    :goto_1
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "status_insurance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "status_insurance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->e:Ljava/lang/String;

    .line 90
    :goto_2
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "family-id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "family-id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->f:Ljava/lang/String;

    .line 96
    :goto_3
    return-void

    .line 75
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 81
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->d:Ljava/lang/String;

    goto :goto_1

    .line 87
    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->e:Ljava/lang/String;

    goto :goto_2

    .line 93
    :cond_3
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->f:Ljava/lang/String;

    goto :goto_3
.end method

.method private c()V
    .locals 2

    .prologue
    .line 100
    :try_start_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 101
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 102
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 103
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 104
    const v1, 0x7f09052c

    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    const-string v1, "insurance_name_key"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v1, "proposal-formalization-id"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v1, "family-id"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v1, "tag-name-key"

    const-string v2, "Seguros_Cancelamento_Vida_AP_Confirmacao_%s"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->startActivity(Landroid/content/Intent;)V

    .line 141
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 144
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    const-string v1, "insurance-name-key"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v1, "proposal-formalization-id"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->startActivity(Landroid/content/Intent;)V

    .line 148
    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->e:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->e()V

    .line 126
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->e:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->d()V

    goto :goto_0

    .line 124
    :cond_1
    const-string v0, "CSOERROR"

    const-string v1, "ERRO STATUS INSURANCE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->finish()V

    .line 114
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f040044

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->setContentView(I)V

    .line 47
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->c()V

    .line 49
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiq;->f(Z)V

    .line 51
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->b()V

    .line 52
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;->a()V

    .line 54
    return-void
.end method
