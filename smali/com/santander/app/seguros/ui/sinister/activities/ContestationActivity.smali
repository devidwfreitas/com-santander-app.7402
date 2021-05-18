.class public Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;
.super Lgrs;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "sinister-key"

.field public static final b:Ljava/lang/String; = "justify-contestation-frag-tag"

.field public static final c:Ljava/lang/String; = "success-contestation-frag-tag"

.field public static final d:Ljava/lang/String; = "status-payment"


# instance fields
.field private e:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private f:Landroid/widget/FrameLayout;

.field private g:Landroid/widget/Button;

.field private w:Lkya;

.field private x:Lkvp;

.field private y:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 47
    new-instance v0, Lkyb;

    invoke-direct {v0}, Lkyb;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->w:Lkya;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->g:Landroid/widget/Button;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 77
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 78
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 79
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 80
    const v1, 0x7f0902ec

    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 131
    const v0, 0x7f10010f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->e:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 132
    const v0, 0x7f10020b

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->f:Landroid/widget/FrameLayout;

    .line 133
    const v0, 0x7f10020c

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->g:Landroid/widget/Button;

    .line 134
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->g:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->c()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    return-void
.end method


# virtual methods
.method public a()Lkya;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->w:Lkya;

    return-object v0
.end method

.method public a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 3

    .prologue
    const v2, 0x7f050018

    const v1, 0x7f050017

    .line 84
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v1, v2, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f10020b

    .line 86
    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 87
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 89
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 97
    if-eqz p2, :cond_0

    .line 98
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->g:Landroid/widget/Button;

    const-string v1, "textColor"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x7f0e0075

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const v4, 0x7f0e00b9

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 99
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 100
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 102
    new-instance v1, Llql;

    invoke-direct {v1, p0, p1}, Llql;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 123
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public b()Lbr/com/zup/multistatelayout/MultiStateLayout;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->e:Lbr/com/zup/multistatelayout/MultiStateLayout;

    return-object v0
.end method

.method public c()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 138
    new-instance v0, Llqm;

    invoke-direct {v0, p0}, Llqm;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;)V

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->finish()V

    .line 149
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->y:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 155
    invoke-static {}, Lkws;->a()Lkws;

    move-result-object v0

    invoke-virtual {v0}, Lkws;->b()Lnfg;

    move-result-object v0

    new-instance v1, Lkxd;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lkxd;-><init>(Z)V

    invoke-virtual {v0, v1}, Lnfg;->a(Ljava/lang/Object;)V

    .line 156
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->close()V

    .line 158
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 59
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f040043

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sinister-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "sinister-key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkvp;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvp;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->x:Lkvp;

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "status-payment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "status-payment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->y:Z

    .line 70
    :cond_1
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->f()V

    .line 71
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->e()V

    .line 72
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->x:Lkvp;

    invoke-static {v0}, Llxc;->a(Lkvp;)Llxc;

    move-result-object v0

    const-string v1, "justify-contestation-frag-tag"

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 73
    return-void
.end method
