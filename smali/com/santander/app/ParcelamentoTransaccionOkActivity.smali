.class public Lcom/santander/app/ParcelamentoTransaccionOkActivity;
.super Lgoj;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/santander/app/ParcelamentoTransaccionOkActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lgoj;-><init>()V

    .line 37
    const-string v0, "ParcelamentoTransaccionOkActivity"

    iput-object v0, p0, Lcom/santander/app/ParcelamentoTransaccionOkActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/ParcelamentoTransaccionOkActivity;)Lcom/santander/app/ParcelamentoTransaccionOkActivity;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/santander/app/ParcelamentoTransaccionOkActivity;->b:Lcom/santander/app/ParcelamentoTransaccionOkActivity;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const v0, 0x7f10052e

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoTransaccionOkActivity;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 174
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 175
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 176
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 177
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v4, "com.santander.app"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/santander/app/ParcelamentoTransaccionOkActivity;->onDestroy()V

    .line 179
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 180
    const/4 v2, 0x1

    .line 183
    :cond_0
    return v2

    .line 176
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/high16 v9, 0x42c80000    # 100.0f

    .line 43
    invoke-super {p0, p1}, Lgoj;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v1, 0x7f040343

    invoke-virtual {p0, v1}, Lcom/santander/app/ParcelamentoTransaccionOkActivity;->setContentView(I)V

    .line 47
    iput-object p0, p0, Lcom/santander/app/ParcelamentoTransaccionOkActivity;->b:Lcom/santander/app/ParcelamentoTransaccionOkActivity;

    .line 48
    invoke-virtual {p0}, Lcom/santander/app/ParcelamentoTransaccionOkActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 49
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 50
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 52
    const v2, 0x7f090826

    invoke-virtual {p0, v2}, Lcom/santander/app/ParcelamentoTransaccionOkActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 54
    const-string v1, "Cartoes_ParcelamentoDeFatura"

    invoke-static {v1}, Lfrq;->a(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v1

    invoke-virtual {v1}, Lhau;->v()Lful;

    move-result-object v5

    .line 60
    const-string v3, ""

    .line 61
    const-string v2, ""

    .line 62
    const-string v1, ""

    move v4, v0

    .line 63
    :goto_0
    invoke-virtual {v5}, Lful;->K()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 65
    invoke-virtual {v5}, Lful;->K()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfum;

    invoke-virtual {v0}, Lfum;->b()Ljava/lang/String;

    move-result-object v0

    const-string v6, "true"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    :try_start_0
    invoke-virtual {v5}, Lful;->K()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfum;

    invoke-virtual {v0}, Lfum;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 68
    invoke-virtual {v5}, Lful;->K()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfum;

    invoke-virtual {v0}, Lfum;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 69
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Float;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-virtual {v0}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-virtual {v0}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v2

    move-object v2, v3

    .line 63
    :goto_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_1

    .line 79
    :cond_0
    invoke-virtual {v5}, Lful;->G()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v5}, Lful;->G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 81
    :try_start_1
    invoke-virtual {v5}, Lful;->G()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    .line 82
    invoke-virtual {v5}, Lful;->G()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->s(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 89
    :cond_1
    :goto_2
    const v0, 0x7f10053e

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoTransaccionOkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    invoke-virtual {v5}, Lful;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const v0, 0x7f100540

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoTransaccionOkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    invoke-virtual {v5}, Lful;->m()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const v0, 0x7f101045

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoTransaccionOkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lful;->J()Ljava/lang/String;

    move-result-object v6

    const-string v7, "+"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    div-float/2addr v6, v9

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const v0, 0x7f101049

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoTransaccionOkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 100
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const v0, 0x7f10105e

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoTransaccionOkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const v0, 0x7f101060

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoTransaccionOkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 104
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    const v0, 0x7f101062

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoTransaccionOkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lful;->I()Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v2, v9

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

    .line 107
    const v0, 0x7f101064

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoTransaccionOkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lful;->F()Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v2, v9

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

    .line 109
    const v0, 0x7f101066

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoTransaccionOkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 110
    invoke-virtual {v5}, Lful;->B()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const v0, 0x7f101068

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoTransaccionOkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 112
    invoke-virtual {v5}, Lful;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const v0, 0x7f100541

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoTransaccionOkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 114
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    const v0, 0x7f101057

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoTransaccionOkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 118
    invoke-virtual {v5}, Lful;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    const v0, 0x7f10053c

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoTransaccionOkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 121
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 122
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v1

    invoke-virtual {v1}, Lhau;->z()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "realizad"

    const-string v3, "agendad"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :cond_2
    const v0, 0x7f1001ac

    invoke-virtual {p0, v0}, Lcom/santander/app/ParcelamentoTransaccionOkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 128
    const v1, 0x7f1001ad

    invoke-virtual {p0, v1}, Lcom/santander/app/ParcelamentoTransaccionOkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 130
    new-instance v2, Lfkd;

    invoke-direct {v2, p0, v0, v1}, Lfkd;-><init>(Lcom/santander/app/ParcelamentoTransaccionOkActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    new-instance v0, Lfke;

    invoke-direct {v0, p0}, Lfke;-><init>(Lcom/santander/app/ParcelamentoTransaccionOkActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    return-void

    .line 84
    :catch_1
    move-exception v0

    .line 85
    invoke-virtual {v5}, Lful;->G()Ljava/lang/String;

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
    .line 192
    invoke-super {p0}, Lgoj;->onDestroy()V

    .line 193
    return-void
.end method
