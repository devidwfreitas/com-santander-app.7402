.class public Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lkhk;


# instance fields
.field private a:Lkik;

.field private b:Lkjk;

.field private c:Lkhp;

.field private d:Z

.field private e:Landroid/widget/TabHost;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 36
    const-string v0, "RecargaTelefoneActivity"

    iput-object v0, p0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 94
    const v1, 0x7f04014a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 95
    const v0, 0x7f1006ac

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 96
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    return-object v1
.end method

.method public a()V
    .locals 3

    .prologue
    .line 110
    new-instance v0, Lkik;

    invoke-direct {v0}, Lkik;-><init>()V

    iput-object v0, p0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->a:Lkik;

    .line 111
    invoke-virtual {p0}, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 112
    const v1, 0x7f1003d1

    iget-object v2, p0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->a:Lkik;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 113
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->d:Z

    .line 115
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->e:Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->e:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 106
    :cond_0
    return-void
.end method

.method public a(Lfvn;)V
    .locals 3

    .prologue
    .line 119
    new-instance v0, Lkjk;

    invoke-direct {v0}, Lkjk;-><init>()V

    iput-object v0, p0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->b:Lkjk;

    .line 120
    iget-object v0, p0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->b:Lkjk;

    invoke-virtual {v0, p1}, Lkjk;->a(Lfvn;)V

    .line 122
    invoke-virtual {p0}, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 123
    const v1, 0x7f1003d2

    iget-object v2, p0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->b:Lkjk;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 124
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->d:Z

    .line 127
    return-void
.end method

.method public a(Lkgm;)V
    .locals 3

    .prologue
    .line 141
    new-instance v0, Lkjk;

    invoke-direct {v0}, Lkjk;-><init>()V

    iput-object v0, p0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->b:Lkjk;

    .line 142
    invoke-virtual {p0}, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 143
    const v1, 0x7f1003d2

    iget-object v2, p0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->b:Lkjk;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 144
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 146
    iget-object v0, p0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->b:Lkjk;

    invoke-virtual {v0, p1}, Lkjk;->a(Lkgm;)V

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->d:Z

    .line 149
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 131
    new-instance v0, Lkgt;

    invoke-direct {v0}, Lkgt;-><init>()V

    .line 132
    invoke-virtual {p0}, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 133
    const v2, 0x7f1003d2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 134
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 136
    iget-object v1, p0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->c:Lkhp;

    invoke-virtual {v1}, Lkhp;->b()Lkgu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkgt;->a(Lkgu;)V

    .line 137
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 80
    invoke-static {p0}, Lgpu;->b(Landroid/app/Activity;)V

    .line 81
    invoke-super {p0, p1, p2, p3}, Lgrs;->onActivityResult(IILandroid/content/Intent;)V

    .line 84
    iget-boolean v0, p0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->d:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->b:Lkjk;

    invoke-virtual {v0, p1, p2, p3}, Lkjk;->onActivityResult(IILandroid/content/Intent;)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->a:Lkik;

    invoke-virtual {v0, p1, p2, p3}, Lkik;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 153
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->startActivity(Landroid/content/Intent;)V

    .line 156
    invoke-virtual {p0}, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->finish()V

    .line 157
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f04009c

    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->setContentView(I)V

    .line 43
    new-instance v0, Lkhp;

    invoke-direct {v0, p0}, Lkhp;-><init>(Lkhk;)V

    iput-object v0, p0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->c:Lkhp;

    .line 45
    invoke-virtual {p0}, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 49
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 50
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 52
    const v1, 0x7f090886

    invoke-virtual {p0, v1}, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 55
    :cond_0
    const v0, 0x7f1003d0

    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->e:Landroid/widget/TabHost;

    .line 57
    iget-object v0, p0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->e:Landroid/widget/TabHost;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->e:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 60
    iget-object v0, p0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->e:Landroid/widget/TabHost;

    const-string v1, "tab1"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 61
    const v1, 0x7f090887

    invoke-virtual {p0, v1}, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 62
    const v1, 0x7f1003d1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 64
    iget-object v1, p0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->e:Landroid/widget/TabHost;

    const-string v2, "tab2"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 65
    const v2, 0x7f09088c

    invoke-virtual {p0, v2}, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 66
    const v2, 0x7f1003d2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 68
    iget-object v2, p0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->e:Landroid/widget/TabHost;

    invoke-virtual {v2, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 69
    iget-object v0, p0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->e:Landroid/widget/TabHost;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 71
    iget-object v0, p0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->e:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->c:Lkhp;

    invoke-virtual {v1}, Lkhp;->a()Landroid/widget/TabHost$OnTabChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->c:Lkhp;

    invoke-virtual {p0}, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkhp;->a(Landroid/content/Intent;)V

    .line 76
    return-void
.end method
