.class public Lcom/santander/app/PagamentoCartoesTransErrorActivity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lghu;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 32
    const-string v0, "PagamentoCartoesTransErrorActivity"

    iput-object v0, p0, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/PagamentoCartoesTransErrorActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->f:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 116
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 117
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 118
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 119
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v4, "com.santander.app"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->onDestroy()V

    .line 121
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 122
    const/4 v2, 0x1

    .line 125
    :cond_0
    return v2

    .line 118
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 43
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f040339

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 47
    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 48
    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 50
    iput-object p0, p0, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->f:Landroid/app/Activity;

    .line 52
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 55
    const v1, 0x7f090813

    invoke-virtual {p0, v1}, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 58
    if-eqz v1, :cond_0

    .line 60
    const-string v0, "cartao"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    iput-object v0, p0, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->b:Lghu;

    .line 63
    const-string v0, "cantidad"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->c:Ljava/lang/String;

    .line 64
    const-string v0, "fecha"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->d:Ljava/lang/String;

    .line 65
    const-string v0, "errorMsg"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->e:Ljava/lang/String;

    .line 68
    :cond_0
    const v0, 0x7f10053e

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    iget-object v1, p0, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->b:Lghu;

    invoke-virtual {v1}, Lghu;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const v0, 0x7f100540

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    iget-object v1, p0, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->b:Lghu;

    invoke-virtual {v1}, Lghu;->o()Lfud;

    move-result-object v1

    invoke-virtual {v1}, Lfud;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 73
    array-length v2, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v1, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_1
    const v0, 0x7f101043

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    iget-object v1, p0, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const v0, 0x7f101045

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    iget-object v1, p0, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->b:Lghu;

    invoke-virtual {v1}, Lghu;->o()Lfud;

    move-result-object v1

    invoke-virtual {v1}, Lfud;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const v0, 0x7f101049

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    iget-object v1, p0, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->c:Ljava/lang/String;

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const v0, 0x7f100deb

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lfja;

    invoke-direct {v1, p0}, Lfja;-><init>(Lcom/santander/app/PagamentoCartoesTransErrorActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 103
    const v0, 0x7f1005cf

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 104
    iget-object v1, p0, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Lgrs;->onDestroy()V

    .line 131
    return-void
.end method
