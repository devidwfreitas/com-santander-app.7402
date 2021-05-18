.class public Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;
.super Lgoj;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Lfrb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lgoj;-><init>()V

    .line 38
    const-string v0, "GerarComprovanteAgendamento"

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;)Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->g:Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;

    return-object v0
.end method

.method private a(Lfrb;)V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 148
    new-instance v0, Lgvh;

    invoke-direct {v0}, Lgvh;-><init>()V

    invoke-virtual {v0, p1}, Lgvh;->a(Lfrb;)Lgvv;

    move-result-object v1

    .line 149
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 152
    const v0, 0x7f1005cc

    invoke-virtual {p0, v0}, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 153
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 155
    invoke-interface {v1}, Lgvv;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lgvi;

    .line 156
    const v1, 0x7f0400bc

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 157
    const v1, 0x7f100464

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->w:Landroid/widget/TextView;

    .line 158
    const v1, 0x7f100465

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->x:Landroid/widget/TextView;

    .line 159
    const v1, 0x7f100466

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->y:Landroid/widget/TextView;

    .line 160
    invoke-virtual {v2}, Lgvi;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v2}, Lgvi;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-virtual {v2}, Lgvi;->a()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Descri\u00e7\u00e3o:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lgvi;->a()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Ag\u00eancia:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lgvi;->a()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Data/Hora da Solicita\u00e7\u00e3o:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    invoke-virtual {v2}, Lgvi;->a()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Favorecido:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lgvi;->a()Ljava/lang/String;

    move-result-object v1

    const-string v6, "N\u00famero do Protocolo:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lgvi;->a()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Finalidade:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 165
    invoke-virtual {v2}, Lgvi;->a()Ljava/lang/String;

    move-result-object v1

    const-string v6, "C\u00f3digo de Barras:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lgvi;->a()Ljava/lang/String;

    move-result-object v1

    const-string v6, "N\u00famero do Contrato CDB:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lgvi;->a()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Conta Fundo de Cr\u00e9dito:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 166
    invoke-virtual {v2}, Lgvi;->a()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Banco:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lgvi;->a()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Conta D\u00e9bito:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lgvi;->a()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Concession\u00e1ria:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lgvi;->a()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Conta Poupan\u00e7a de Cr\u00e9dito:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 167
    invoke-virtual {v2}, Lgvi;->a()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Conta Poupan\u00e7a de D\u00e9bito:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lgvi;->a()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Conta Fundo de D\u00e9bito:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lgvi;->a()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Conta de Cr\u00e9dito:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v2}, Lgvi;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :cond_2
    :goto_1
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 174
    :cond_3
    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    invoke-virtual {v2}, Lgvi;->a()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Valor:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 178
    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->x:Landroid/widget/TextView;

    new-instance v6, Ljava/util/Locale;

    const-string v7, "pt"

    const-string v8, "BR"

    invoke-direct {v6, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v6

    new-instance v7, Ljava/lang/Double;

    invoke-virtual {v2}, Lgvi;->b()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :goto_2
    invoke-virtual {v2}, Lgvi;->a()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Canal:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 184
    invoke-virtual {v2}, Lgvi;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lgvi;->b()Ljava/lang/String;

    move-result-object v1

    const-string v6, "0006"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 185
    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->x:Landroid/widget/TextView;

    const v6, 0x7f090579

    invoke-virtual {p0, v6}, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :cond_4
    invoke-virtual {v2}, Lgvi;->a()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Status:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 189
    invoke-virtual {v2}, Lgvi;->b()Ljava/lang/String;

    move-result-object v1

    const-string v6, "0"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 190
    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->x:Landroid/widget/TextView;

    const v6, 0x7f09008e

    invoke-virtual {p0, v6}, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :cond_5
    :goto_3
    invoke-virtual {v2}, Lgvi;->a()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Tipo de Transfer\u00eancia:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    invoke-virtual {v2}, Lgvi;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "N"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 199
    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->x:Landroid/widget/TextView;

    const v2, 0x7f0907cc

    invoke-virtual {p0, v2}, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 180
    :cond_6
    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v2}, Lgvi;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 193
    :cond_7
    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->x:Landroid/widget/TextView;

    const v6, 0x7f090091

    invoke-virtual {p0, v6}, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 202
    :cond_8
    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->x:Landroid/widget/TextView;

    const v2, 0x7f090899

    invoke-virtual {p0, v2}, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 211
    :cond_9
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;)Lfrb;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->z:Lfrb;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->d()V

    .line 75
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->z:Lfrb;

    invoke-direct {p0, v0}, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->a(Lfrb;)V

    .line 77
    const v0, 0x7f1005cd

    invoke-virtual {p0, v0}, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    const v1, 0x7f1005ce

    invoke-virtual {p0, v1}, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 80
    iget-object v2, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->z:Lfrb;

    invoke-virtual {v2}, Lfrb;->l()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->z:Lfrb;

    invoke-virtual {v2}, Lfrb;->m()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->z:Lfrb;

    invoke-virtual {v2}, Lfrb;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->z:Lfrb;

    invoke-virtual {v0}, Lfrb;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_0
    const v0, 0x7f1001ac

    invoke-virtual {p0, v0}, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->b:Landroid/widget/LinearLayout;

    .line 86
    const v0, 0x7f1001ad

    invoke-virtual {p0, v0}, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->c:Landroid/widget/LinearLayout;

    .line 88
    const v0, 0x7f1000f3

    invoke-virtual {p0, v0}, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->f:Landroid/widget/ImageView;

    .line 90
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->c:Landroid/widget/LinearLayout;

    new-instance v1, Lfqy;

    invoke-direct {v1, p0}, Lfqy;-><init>(Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->b:Landroid/widget/LinearLayout;

    new-instance v1, Lfqz;

    invoke-direct {v1, p0}, Lfqz;-><init>(Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->a()V

    .line 117
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 122
    const-string v1, "EXTRADADOS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lfrb;

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->z:Lfrb;

    .line 123
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 139
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    const v0, 0x7f100198

    invoke-virtual {p0, v0}, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 215
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    invoke-virtual {p0, v0}, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->startActivity(Landroid/content/Intent;)V

    .line 217
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-super {p0, p1}, Lgoj;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f040122

    invoke-virtual {p0, v0}, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 58
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 59
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 60
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 63
    const v1, 0x7f090276

    invoke-virtual {p0, v1}, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 65
    iput-object p0, p0, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->g:Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;

    .line 67
    invoke-direct {p0}, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->c()V

    .line 69
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Lgoj;->onResume()V

    .line 134
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->a()V

    .line 135
    return-void
.end method
