.class public Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;
.super Lgrs;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/widget/ListView;

.field private c:Lcom/santander/app/contacorrente/domain/Conta;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Landroid/widget/ListAdapter;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 42
    const-string v0, "DetalheAgendamentosActivity"

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->a:Ljava/lang/String;

    return-void
.end method

.method private a()Landroid/view/View;
    .locals 8

    .prologue
    .line 104
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->d:Ljava/util/List;

    .line 105
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->d:Ljava/util/List;

    iget v1, p0, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->g:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->c:Lcom/santander/app/contacorrente/domain/Conta;

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400e0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_2

    .line 111
    const v0, 0x7f1004d2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 112
    iget-object v2, p0, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->e:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 115
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 118
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "dd/MM/yyyy"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 121
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 122
    const/4 v4, 0x3

    const/4 v5, 0x5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 123
    const/4 v5, 0x6

    const/16 v6, 0xa

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09038e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09035e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v4}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09035e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_1
    :goto_0
    const v0, 0x7f1004d3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 133
    if-eqz v0, :cond_2

    .line 134
    iget-object v2, p0, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->c:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v2}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->c:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v3}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_2
    return-object v1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    const-string v2, "Error"

    invoke-virtual {v0}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static synthetic a(Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 192
    const-string v0, ""

    .line 193
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 234
    :goto_1
    return-object v0

    .line 193
    :sswitch_0
    const-string v2, "01"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "02"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "03"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "04"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "05"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "06"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "07"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "08"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string v2, "09"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_9
    const-string v2, "10"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    :sswitch_a
    const-string v2, "11"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :sswitch_b
    const-string v2, "12"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xb

    goto :goto_0

    .line 195
    :pswitch_0
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090612

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 198
    :pswitch_1
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0904a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 201
    :pswitch_2
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090748

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 204
    :pswitch_3
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 207
    :pswitch_4
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090746

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 210
    :pswitch_5
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090614

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 213
    :pswitch_6
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090613

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 216
    :pswitch_7
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 219
    :pswitch_8
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0908f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 222
    :pswitch_9
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090812

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 225
    :pswitch_a
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0907e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 228
    :pswitch_b
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09038b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 193
    :sswitch_data_0
    .sparse-switch
        0x601 -> :sswitch_0
        0x602 -> :sswitch_1
        0x603 -> :sswitch_2
        0x604 -> :sswitch_3
        0x605 -> :sswitch_4
        0x606 -> :sswitch_5
        0x607 -> :sswitch_6
        0x608 -> :sswitch_7
        0x609 -> :sswitch_8
        0x61f -> :sswitch_9
        0x620 -> :sswitch_a
        0x621 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private b()Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0xf

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/16 v4, 0xa

    .line 143
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 144
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020287

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 151
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 152
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 153
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 157
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 158
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 159
    invoke-virtual {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 160
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 161
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 164
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 165
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 166
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 169
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 170
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 171
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 172
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 174
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 175
    return-object v0
.end method

.method private c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lfrb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "agendamentos"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 184
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfrb;

    invoke-virtual {v1}, Lfrb;->J()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->e:Ljava/lang/String;

    .line 188
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f0400df

    invoke-virtual {p0, v0}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 63
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 64
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 66
    iput-object p0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->i:Landroid/app/Activity;

    .line 67
    invoke-direct {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 68
    const v1, 0x7f1004c6

    invoke-virtual {p0, v1}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 70
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 71
    const v1, 0x7f090092

    invoke-virtual {p0, v1}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "indexConta"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->g:I

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->c()Ljava/util/List;

    move-result-object v1

    .line 78
    if-eqz v1, :cond_1

    .line 79
    const v0, 0x7f1004d1

    invoke-virtual {p0, v0}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->b:Landroid/widget/ListView;

    .line 80
    new-instance v0, Lfra;

    const v2, 0x7f0400e1

    invoke-direct {v0, p0, v2, v1}, Lfra;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->f:Landroid/widget/ListAdapter;

    .line 82
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->b:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->f:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->b:Landroid/widget/ListView;

    new-instance v1, Lfqs;

    invoke-direct {v1, p0}, Lfqs;-><init>(Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 100
    :cond_1
    return-void
.end method
