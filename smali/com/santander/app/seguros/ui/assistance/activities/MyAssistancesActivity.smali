.class public Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 25
    const-string v0, "SCHEDULING_LIST_FRAGMENT_TAG"

    iput-object v0, p0, Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;->a:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Llca;->a()Llca;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 38
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 44
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 45
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 46
    const v1, 0x7f0907bf

    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f100110

    .line 52
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 55
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 68
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lkzz;

    invoke-direct {v1, p0}, Lkzz;-><init>(Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 61
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;->finish()V

    .line 64
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f040022

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;->setContentView(I)V

    .line 32
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;->b()V

    .line 33
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;->a()V

    .line 34
    return-void
.end method
