.class public Lknj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkmi;
.implements Lkni;


# instance fields
.field private a:Lknd;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lklu;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lkmh;

.field private d:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Lknd;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lknj;->a:Lknd;

    .line 40
    new-instance v0, Lkmj;

    invoke-direct {v0, p0}, Lkmj;-><init>(Lkmi;)V

    iput-object v0, p0, Lknj;->c:Lkmh;

    .line 41
    return-void
.end method

.method static synthetic a(Lknj;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lknj;->d:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic a(Lknj;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lknj;->d:Ljava/util/Calendar;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/widget/Button;)Landroid/app/DatePickerDialog;
    .locals 7

    .prologue
    .line 57
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v0, "dd/MM/yyyy"

    new-instance v1, Ljava/util/Locale;

    const-string v2, "pt"

    const-string v4, "BR"

    invoke-direct {v1, v2, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 58
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 60
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lknj;->a:Lknd;

    invoke-interface {v1}, Lknd;->h()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lknk;

    invoke-direct {v2, p0, p1, v3}, Lknk;-><init>(Lknj;Landroid/widget/Button;Ljava/text/SimpleDateFormat;)V

    const/4 v3, 0x1

    .line 68
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 70
    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lknj;->a:Lknd;

    invoke-interface {v1}, Lknd;->h()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    const-string v1, "extraInformacoes"

    iget-object v2, p0, Lknj;->a:Lknd;

    invoke-interface {v2}, Lknd;->q()Lklu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 47
    iget-object v1, p0, Lknj;->a:Lknd;

    invoke-interface {v1}, Lknd;->h()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 48
    return-void
.end method

.method public a(Landroid/widget/Button;III)V
    .locals 9

    .prologue
    const/4 v8, 0x5

    .line 89
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "pt"

    const-string v4, "BR"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 90
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 91
    invoke-virtual {v1, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 92
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 95
    iget-object v4, p0, Lknj;->d:Ljava/util/Calendar;

    if-eqz v4, :cond_0

    .line 96
    iget-object v4, p0, Lknj;->d:Ljava/util/Calendar;

    const/16 v5, 0x1e

    invoke-virtual {v4, v8, v5}, Ljava/util/Calendar;->add(II)V

    .line 97
    iget-object v4, p0, Lknj;->d:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 99
    iget-object v6, p0, Lknj;->d:Ljava/util/Calendar;

    const/16 v7, -0x1e

    invoke-virtual {v6, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 100
    iget-object v6, p0, Lknj;->d:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 102
    cmp-long v6, v6, v2

    if-gtz v6, :cond_1

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 104
    invoke-virtual {v1, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 105
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lknj;->a:Lknd;

    invoke-interface {v0}, Lknd;->h()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lknj;->a:Lknd;

    invoke-interface {v1}, Lknd;->h()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09074d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 110
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lklu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lknj;->a:Lknd;

    invoke-interface {v1}, Lknd;->h()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f04037e

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 197
    const v1, 0x7f04037d

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 198
    iget-object v1, p0, Lknj;->a:Lknd;

    invoke-interface {v1}, Lknd;->k()Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 199
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 200
    return-void
.end method

.method public a(Lklt;)V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lknj;->a:Lknd;

    invoke-interface {v0}, Lknd;->p()V

    .line 153
    new-instance v0, Lklu;

    invoke-direct {v0}, Lklu;-><init>()V

    .line 154
    const-string v1, "Selecione"

    invoke-virtual {v0, v1}, Lklu;->d(Ljava/lang/String;)V

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lknj;->b:Ljava/util/List;

    .line 156
    iget-object v1, p0, Lknj;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lklt;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 158
    new-instance v2, Lklu;

    invoke-direct {v2}, Lklu;-><init>()V

    .line 159
    invoke-virtual {p1}, Lklt;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklw;

    invoke-virtual {v0}, Lklw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lklu;->d(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1}, Lklt;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklw;

    invoke-virtual {v0}, Lklw;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lklu;->a(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lknj;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lknj;->b:Ljava/util/List;

    invoke-virtual {p0, v0}, Lknj;->a(Ljava/util/List;)V

    .line 165
    return-void
.end method

.method public b(Landroid/widget/Button;)Landroid/app/DatePickerDialog;
    .locals 7

    .prologue
    .line 75
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 77
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lknj;->a:Lknd;

    invoke-interface {v1}, Lknd;->h()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lknl;

    invoke-direct {v2, p0, p1}, Lknl;-><init>(Lknj;Landroid/widget/Button;)V

    const/4 v3, 0x1

    .line 83
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 85
    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lknj;->a:Lknd;

    invoke-interface {v0}, Lknd;->h()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f001b

    const v2, 0x7f04037e

    invoke-static {v0, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 206
    const v1, 0x7f04037d

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 207
    iget-object v1, p0, Lknj;->a:Lknd;

    invoke-interface {v1}, Lknd;->j()Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 208
    return-void
.end method

.method public b(Lklt;)V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lknj;->a:Lknd;

    invoke-interface {v0}, Lknd;->p()V

    .line 170
    invoke-virtual {p1}, Lklt;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p1}, Lklt;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lknj;->a:Lknd;

    invoke-virtual {p1}, Lklt;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lknd;->a(Ljava/lang/String;)V

    .line 185
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lknj;->a:Lknd;

    invoke-interface {v0}, Lknd;->n()V

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lknj;->a:Lknd;

    invoke-interface {v0}, Lknd;->n()V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lknj;->a:Lknd;

    invoke-interface {v0}, Lknd;->o()V

    .line 190
    iget-object v0, p0, Lknj;->c:Lkmh;

    invoke-interface {v0}, Lkmh;->a()V

    .line 191
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lknj;->a:Lknd;

    invoke-interface {v0}, Lknd;->h()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lmxn;->c(Landroid/app/Activity;)Landroid/app/Dialog;

    .line 53
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 5

    .prologue
    .line 117
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "pt"

    const-string v4, "BR"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 118
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 119
    const/4 v2, 0x6

    const/4 v3, -0x7

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 121
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 5

    .prologue
    .line 126
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "pt"

    const-string v4, "BR"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 127
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 128
    const/4 v2, 0x6

    const/16 v3, -0xf

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 130
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 5

    .prologue
    .line 135
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "pt"

    const-string v4, "BR"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 136
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 137
    const/4 v2, 0x6

    const/16 v3, -0x1e

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 139
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 5

    .prologue
    .line 144
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "pt"

    const-string v4, "BR"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 145
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
