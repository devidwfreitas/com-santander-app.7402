.class public Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/widget/Button;

.field private c:Landroid/app/AlertDialog;

.field private d:Landroid/app/Dialog;

.field private e:Lfrb;

.field private f:Ljava/lang/String;

.field private g:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 52
    const-string v0, "DetalheAgendamentoActivity"

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->c:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->d:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;)Lfrb;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->e:Lfrb;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 120
    const v0, 0x7f1006e8

    invoke-virtual {p0, v0}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->b:Landroid/widget/Button;

    .line 122
    invoke-direct {p0}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->b()V

    .line 124
    new-instance v0, Lfqx;

    invoke-direct {v0, p0}, Lfqx;-><init>(Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lfrb;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->e:Lfrb;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lfqx;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 125
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;Lfrb;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->a(Lfrb;)V

    return-void
.end method

.method private a(Lfrb;)V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 220
    new-instance v0, Lgvh;

    invoke-direct {v0}, Lgvh;-><init>()V

    invoke-virtual {v0, p1}, Lgvh;->a(Lfrb;)Lgvv;

    move-result-object v1

    .line 222
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 225
    const v0, 0x7f1005cc

    invoke-virtual {p0, v0}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 226
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 228
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

    .line 229
    const v1, 0x7f0400bc

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 230
    const v1, 0x7f100464

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->g:Landroid/widget/TextView;

    .line 231
    const v1, 0x7f100465

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->w:Landroid/widget/TextView;

    .line 232
    const v1, 0x7f100466

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->x:Landroid/widget/TextView;

    .line 233
    invoke-virtual {v2}, Lgvi;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v2}, Lgvi;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
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

    .line 237
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

    .line 238
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

    .line 239
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

    .line 240
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

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v2}, Lgvi;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :cond_2
    :goto_1
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 246
    :cond_3
    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    invoke-virtual {v2}, Lgvi;->a()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Valor:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 250
    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->w:Landroid/widget/TextView;

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

    .line 255
    :goto_2
    invoke-virtual {v2}, Lgvi;->a()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Canal:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 256
    invoke-virtual {v2}, Lgvi;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lgvi;->b()Ljava/lang/String;

    move-result-object v1

    const-string v6, "0006"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 257
    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->w:Landroid/widget/TextView;

    const v6, 0x7f090579

    invoke-virtual {p0, v6}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    :cond_4
    invoke-virtual {v2}, Lgvi;->a()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Status:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 261
    invoke-virtual {v2}, Lgvi;->b()Ljava/lang/String;

    move-result-object v1

    const-string v6, "0"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 262
    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->w:Landroid/widget/TextView;

    const v6, 0x7f09008e

    invoke-virtual {p0, v6}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    :cond_5
    :goto_3
    invoke-virtual {v2}, Lgvi;->a()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Tipo de Transfer\u00eancia:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 269
    invoke-virtual {v2}, Lgvi;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "N"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 270
    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->w:Landroid/widget/TextView;

    const v2, 0x7f0907cc

    invoke-virtual {p0, v2}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 252
    :cond_6
    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v2}, Lgvi;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 264
    :cond_7
    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->w:Landroid/widget/TextView;

    const v6, 0x7f0903f8

    invoke-virtual {p0, v6}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 272
    :cond_8
    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->w:Landroid/widget/TextView;

    const v2, 0x7f090899

    invoke-virtual {p0, v2}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 281
    :cond_9
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 129
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 132
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 133
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 135
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 138
    :goto_0
    return v0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic b(Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->c:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;Lfrb;)Lfrb;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->e:Lfrb;

    return-object p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 145
    const-string v1, "EXTRAITEMDETALHEAGENDAMENTO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lfrb;

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->e:Lfrb;

    .line 146
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->d:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f040161

    invoke-virtual {p0, v0}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 70
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 71
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 72
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 73
    const v1, 0x7f090092

    invoke-virtual {p0, v1}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->a()V

    .line 77
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->e:Lfrb;

    invoke-virtual {v0}, Lfrb;->J()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->a(Ljava/lang/String;)Z

    move-result v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->b:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 82
    :cond_0
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->b:Landroid/widget/Button;

    new-instance v1, Lfqu;

    invoke-direct {v1, p0}, Lfqu;-><init>(Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    :cond_1
    return-void
.end method
