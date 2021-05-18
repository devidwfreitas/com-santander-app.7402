.class public Lcom/santander/app/PagamentoCartoesTransOkAction;
.super Lgoj;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lmyk;

.field private c:Landroid/content/Intent;

.field private f:Lcom/santander/app/PagamentoCartoesTransOkAction;

.field private g:Lghu;

.field private w:I

.field private x:I

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lgoj;-><init>()V

    .line 37
    const-string v0, "PagamentoCartoesTransOkAction"

    iput-object v0, p0, Lcom/santander/app/PagamentoCartoesTransOkAction;->a:Ljava/lang/String;

    .line 39
    new-instance v0, Lmyk;

    invoke-direct {v0}, Lmyk;-><init>()V

    iput-object v0, p0, Lcom/santander/app/PagamentoCartoesTransOkAction;->b:Lmyk;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/PagamentoCartoesTransOkAction;->c:Landroid/content/Intent;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/PagamentoCartoesTransOkAction;)Lcom/santander/app/PagamentoCartoesTransOkAction;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesTransOkAction;->f:Lcom/santander/app/PagamentoCartoesTransOkAction;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    const v0, 0x7f10052e

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesTransOkAction;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 189
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 190
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 191
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 192
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v4, "com.santander.app"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/santander/app/PagamentoCartoesTransOkAction;->onDestroy()V

    .line 194
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 195
    const/4 v2, 0x1

    .line 198
    :cond_0
    return v2

    .line 191
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const v7, 0x7f101045

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 52
    invoke-super {p0, p1}, Lgoj;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f04033a

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesTransOkAction;->setContentView(I)V

    .line 55
    iput-object p0, p0, Lcom/santander/app/PagamentoCartoesTransOkAction;->f:Lcom/santander/app/PagamentoCartoesTransOkAction;

    .line 56
    invoke-virtual {p0}, Lcom/santander/app/PagamentoCartoesTransOkAction;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 58
    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 60
    const v1, 0x7f090813

    invoke-virtual {p0, v1}, Lcom/santander/app/PagamentoCartoesTransOkAction;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 62
    const v0, 0x7f1001ac

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesTransOkAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 63
    const v1, 0x7f1001ad

    invoke-virtual {p0, v1}, Lcom/santander/app/PagamentoCartoesTransOkAction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 65
    new-instance v2, Lfjb;

    invoke-direct {v2, p0, v0, v1}, Lfjb;-><init>(Lcom/santander/app/PagamentoCartoesTransOkAction;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    new-instance v0, Lfjc;

    invoke-direct {v0, p0}, Lfjc;-><init>(Lcom/santander/app/PagamentoCartoesTransOkAction;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {p0}, Lcom/santander/app/PagamentoCartoesTransOkAction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_0

    .line 103
    const-string v0, "cartao"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lghu;

    iput-object v0, p0, Lcom/santander/app/PagamentoCartoesTransOkAction;->g:Lghu;

    .line 104
    const-string v0, "tipo"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/santander/app/PagamentoCartoesTransOkAction;->x:I

    .line 105
    const-string v0, "cantidad"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/PagamentoCartoesTransOkAction;->y:Ljava/lang/String;

    .line 106
    const-string v0, "fecha"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/PagamentoCartoesTransOkAction;->z:Ljava/lang/String;

    .line 109
    :cond_0
    const v0, 0x7f10053e

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesTransOkAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 110
    iget-object v1, p0, Lcom/santander/app/PagamentoCartoesTransOkAction;->g:Lghu;

    invoke-virtual {v1}, Lghu;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, "/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const v0, 0x7f101057

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesTransOkAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 113
    iget-object v1, p0, Lcom/santander/app/PagamentoCartoesTransOkAction;->g:Lghu;

    invoke-virtual {v1}, Lghu;->o()Lfud;

    move-result-object v1

    invoke-virtual {v1}, Lfud;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const v0, 0x7f100540

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesTransOkAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 116
    iget-object v1, p0, Lcom/santander/app/PagamentoCartoesTransOkAction;->g:Lghu;

    invoke-virtual {v1}, Lghu;->o()Lfud;

    move-result-object v1

    invoke-virtual {v1}, Lfud;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 117
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

    .line 119
    const v0, 0x7f101043

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesTransOkAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 120
    iget-object v1, p0, Lcom/santander/app/PagamentoCartoesTransOkAction;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget v0, p0, Lcom/santander/app/PagamentoCartoesTransOkAction;->x:I

    if-ne v0, v5, :cond_2

    .line 125
    const v0, 0x7f101055

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesTransOkAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 126
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    const v0, 0x7f101031

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesTransOkAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 129
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v1, p0, Lcom/santander/app/PagamentoCartoesTransOkAction;->g:Lghu;

    invoke-virtual {v1}, Lghu;->o()Lfud;

    move-result-object v1

    invoke-virtual {v1}, Lfud;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const v0, 0x7f101044

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesTransOkAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 133
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    invoke-virtual {p0, v7}, Lcom/santander/app/PagamentoCartoesTransOkAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 136
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    :goto_0
    const v0, 0x7f101049

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesTransOkAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 144
    iget-object v1, p0, Lcom/santander/app/PagamentoCartoesTransOkAction;->y:Ljava/lang/String;

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 147
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 148
    const v0, 0x7f100541

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesTransOkAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 149
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    const v0, 0x7f10053c

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesTransOkAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 152
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 153
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v1

    invoke-virtual {v1}, Lhau;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "realizad"

    const-string v3, "agendad"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :cond_1
    const-string v0, "Cartoes_PagamentoDeFatura"

    invoke-static {v0}, Lfrq;->a(Ljava/lang/String;)V

    .line 160
    return-void

    .line 139
    :cond_2
    invoke-virtual {p0, v7}, Lcom/santander/app/PagamentoCartoesTransOkAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 140
    iget-object v1, p0, Lcom/santander/app/PagamentoCartoesTransOkAction;->g:Lghu;

    invoke-virtual {v1}, Lghu;->o()Lfud;

    move-result-object v1

    invoke-virtual {v1}, Lfud;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
