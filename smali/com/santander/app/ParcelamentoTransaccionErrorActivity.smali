.class public Lcom/santander/app/ParcelamentoTransaccionErrorActivity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/santander/app/ParcelamentoTransaccionErrorActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 33
    const-string v0, "ParcelamentoTransaccionErrorActivity"

    iput-object v0, p0, Lcom/santander/app/ParcelamentoTransaccionErrorActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/ParcelamentoTransaccionErrorActivity;)Lcom/santander/app/ParcelamentoTransaccionErrorActivity;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/santander/app/ParcelamentoTransaccionErrorActivity;->c:Lcom/santander/app/ParcelamentoTransaccionErrorActivity;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 146
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 147
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 148
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 149
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v4, "com.santander.app"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/santander/app/ParcelamentoTransaccionErrorActivity;->onDestroy()V

    .line 151
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 152
    const/4 v2, 0x1

    .line 155
    :cond_0
    return v2

    .line 148
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/high16 v10, 0x42c80000    # 100.0f

    .line 40
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f040342

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoTransaccionErrorActivity;->setContentView(I)V

    .line 44
    iput-object p0, p0, Lcom/santander/app/ParcelamentoTransaccionErrorActivity;->c:Lcom/santander/app/ParcelamentoTransaccionErrorActivity;

    .line 45
    invoke-virtual {p0}, Lcom/santander/app/ParcelamentoTransaccionErrorActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 46
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 47
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 49
    const v1, 0x7f090826

    invoke-virtual {p0, v1}, Lcom/santander/app/ParcelamentoTransaccionErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0}, Lhau;->v()Lful;

    move-result-object v6

    .line 53
    const-string v3, ""

    .line 54
    const-string v2, ""

    .line 55
    const-string v1, ""

    move v4, v5

    .line 56
    :goto_0
    invoke-virtual {v6}, Lful;->K()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 58
    invoke-virtual {v6}, Lful;->K()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfum;

    invoke-virtual {v0}, Lfum;->b()Ljava/lang/String;

    move-result-object v0

    const-string v7, "true"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    :try_start_0
    invoke-virtual {v6}, Lful;->K()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfum;

    invoke-virtual {v0}, Lfum;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 61
    invoke-virtual {v6}, Lful;->K()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfum;

    invoke-virtual {v0}, Lfum;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 62
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Float;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-virtual {v0}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {v0}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v2

    move-object v2, v3

    .line 56
    :goto_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_1

    .line 72
    :cond_0
    invoke-virtual {v6}, Lful;->G()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Lful;->G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 74
    :try_start_1
    invoke-virtual {v6}, Lful;->G()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    .line 75
    invoke-virtual {v6}, Lful;->G()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->s(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 82
    :cond_1
    :goto_2
    const v0, 0x7f10053e

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoTransaccionErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    invoke-virtual {v6}, Lful;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const v0, 0x7f100540

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoTransaccionErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 85
    invoke-virtual {v6}, Lful;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const v0, 0x7f101045

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoTransaccionErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lful;->J()Ljava/lang/String;

    move-result-object v7

    const-string v8, "+"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    div-float/2addr v7, v10

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const v0, 0x7f101049

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoTransaccionErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 93
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const v0, 0x7f10105e

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoTransaccionErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const v0, 0x7f101060

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoTransaccionErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const v0, 0x7f101062

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoTransaccionErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lful;->I()Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const v0, 0x7f101064

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoTransaccionErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lful;->F()Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    const v0, 0x7f101066

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoTransaccionErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    invoke-virtual {v6}, Lful;->B()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const v0, 0x7f101068

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoTransaccionErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    invoke-virtual {v6}, Lful;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const v0, 0x7f100541

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoTransaccionErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 107
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const v0, 0x7f100deb

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoTransaccionErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 111
    new-instance v1, Lfkc;

    invoke-direct {v1, p0}, Lfkc;-><init>(Lcom/santander/app/ParcelamentoTransaccionErrorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-virtual {p0}, Lcom/santander/app/ParcelamentoTransaccionErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_2

    .line 130
    const-string v1, "errorMsg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/ParcelamentoTransaccionErrorActivity;->b:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/santander/app/ParcelamentoTransaccionErrorActivity;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/santander/app/ParcelamentoTransaccionErrorActivity;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 132
    const v0, 0x7f101080

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoTransaccionErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 133
    iget-object v1, p0, Lcom/santander/app/ParcelamentoTransaccionErrorActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    :cond_2
    return-void

    .line 77
    :catch_1
    move-exception v0

    .line 78
    invoke-virtual {v6}, Lful;->G()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_3
    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Lgrs;->onDestroy()V

    .line 161
    return-void
.end method
