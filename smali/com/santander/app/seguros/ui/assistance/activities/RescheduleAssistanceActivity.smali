.class public Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;
.super Lgrs;
.source "SourceFile"


# static fields
.field public static final a:I = 0x5

.field public static final b:Ljava/lang/String; = "ASSISTANCE_NUMBER_KEY"

.field public static final c:Ljava/lang/String; = "ASSISTANCE_TYPE_KEY"


# instance fields
.field private d:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private e:Lkxm;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private w:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;->w:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lkxn;

    invoke-direct {v0}, Lkxn;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;->e:Lkxm;

    .line 60
    invoke-static {}, Llds;->a()Llds;

    move-result-object v0

    .line 61
    new-instance v1, Llaa;

    invoke-direct {v1, p0}, Llaa;-><init>(Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;)V

    invoke-virtual {v0, v1}, Llds;->a(Lldx;)V

    .line 68
    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 69
    return-void
.end method

.method private a(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f100110

    .line 116
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 118
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;->f:Ljava/lang/String;

    invoke-static {v0, p1}, Llbl;->b(Ljava/lang/String;Ljava/lang/String;)Llbl;

    move-result-object v0

    .line 94
    new-instance v1, Llad;

    invoke-direct {v1, p0}, Llad;-><init>(Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;)V

    invoke-virtual {v0, v1}, Llbl;->a(Llbo;)V

    .line 101
    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 102
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;->d:Lbr/com/zup/multistatelayout/MultiStateLayout;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 72
    iget-object v0, p0, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;->d:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 73
    iget-object v0, p0, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;->e:Lkxm;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;->w:Ljava/lang/String;

    new-instance v3, Llab;

    invoke-direct {v3, p0}, Llab;-><init>(Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;)V

    new-instance v4, Llac;

    invoke-direct {v4, p0}, Llac;-><init>(Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lkxm;->b(Ljava/lang/String;Ljava/lang/String;Lkxl;Lkxl;)V

    .line 90
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 108
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 109
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 110
    const v1, 0x7f0908cd

    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 124
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;->finish()V

    .line 127
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f040022

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ASSISTANCE_TYPE_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;->f:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ASSISTANCE_NUMBER_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;->g:Ljava/lang/String;

    .line 51
    :cond_0
    const v0, 0x7f10010f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;->d:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 53
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;->c()V

    .line 54
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;->a()V

    .line 55
    return-void
.end method
