.class public Lmaj;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "response-key"


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/support/v7/widget/AppCompatRadioButton;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/support/v7/widget/AppCompatRadioButton;

.field private k:Landroid/widget/Button;

.field private l:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

.field private m:Lkvb;

.field private n:Ljava/util/Date;

.field private o:Lkvb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lmaj;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lmaj;->n:Ljava/util/Date;

    return-object p1
.end method

.method public static a(Lkvb;)Lmaj;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    const-string v1, "response-key"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v1, Lmaj;

    invoke-direct {v1}, Lmaj;-><init>()V

    .line 76
    invoke-virtual {v1, v0}, Lmaj;->setArguments(Landroid/os/Bundle;)V

    .line 77
    return-object v1
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 103
    iget-object v0, p0, Lmaj;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmaj;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0909fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lmaj;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lmaj;->m:Lkvb;

    invoke-virtual {v1}, Lkvb;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lmaj;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmaj;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090be2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    sget-object v0, Lmhv;->INSTANCE:Lmhv;

    sget-object v1, Lkuq;->DATE_PERIOD:Lkuq;

    invoke-virtual {v0, v1}, Lmhv;->containsRequest(Lkuq;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    sget-object v0, Lmhv;->INSTANCE:Lmhv;

    sget-object v1, Lkuq;->DATE_PERIOD:Lkuq;

    invoke-virtual {v0, v1}, Lmhv;->getRequest(Lkuq;)Lkva;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {v0}, Lkva;->b()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v0}, Lkva;->b()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lmaj;->n:Ljava/util/Date;

    .line 113
    :cond_0
    invoke-virtual {v0}, Lkva;->m()Lkvf;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lkva;->m()Lkvf;

    move-result-object v1

    sget-object v2, Lkvf;->PM:Lkvf;

    invoke-virtual {v1, v2}, Lkvf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    iget-object v0, p0, Lmaj;->j:Landroid/support/v7/widget/AppCompatRadioButton;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/AppCompatRadioButton;->setChecked(Z)V

    .line 124
    :cond_1
    :goto_0
    iget-object v0, p0, Lmaj;->n:Ljava/util/Date;

    if-nez v0, :cond_2

    .line 125
    invoke-direct {p0}, Lmaj;->i()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lmaj;->n:Ljava/util/Date;

    .line 128
    :cond_2
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-static {}, Lmhj;->d()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    .line 129
    iget-object v1, p0, Lmaj;->n:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 130
    iget-object v1, p0, Lmaj;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    const-string v2, "dd/MM/yyyy"

    invoke-static {v0, v2}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lmaj;->c:Landroid/widget/FrameLayout;

    new-instance v1, Lmak;

    invoke-direct {v1, p0}, Lmak;-><init>(Lmaj;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-void

    .line 115
    :cond_3
    invoke-virtual {v0}, Lkva;->m()Lkvf;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lkva;->m()Lkvf;

    move-result-object v0

    sget-object v1, Lkvf;->AM:Lkvf;

    invoke-virtual {v0, v1}, Lkvf;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 116
    iget-object v0, p0, Lmaj;->h:Landroid/support/v7/widget/AppCompatRadioButton;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/AppCompatRadioButton;->setChecked(Z)V

    goto :goto_0

    .line 118
    :cond_4
    iget-object v0, p0, Lmaj;->j:Landroid/support/v7/widget/AppCompatRadioButton;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/AppCompatRadioButton;->setChecked(Z)V

    .line 119
    iget-object v0, p0, Lmaj;->h:Landroid/support/v7/widget/AppCompatRadioButton;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/AppCompatRadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 257
    const v0, 0x7f10038a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmaj;->b:Landroid/widget/TextView;

    .line 258
    const v0, 0x7f100433

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lmaj;->c:Landroid/widget/FrameLayout;

    .line 259
    const v0, 0x7f10030d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmaj;->d:Landroid/widget/TextView;

    .line 260
    const v0, 0x7f100434

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmaj;->e:Landroid/widget/TextView;

    .line 261
    const v0, 0x7f100435

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmaj;->f:Landroid/widget/TextView;

    .line 262
    const v0, 0x7f100437

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lmaj;->g:Landroid/widget/RelativeLayout;

    .line 263
    const v0, 0x7f100439

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatRadioButton;

    iput-object v0, p0, Lmaj;->h:Landroid/support/v7/widget/AppCompatRadioButton;

    .line 264
    const v0, 0x7f10043a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lmaj;->i:Landroid/widget/RelativeLayout;

    .line 265
    const v0, 0x7f10043c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatRadioButton;

    iput-object v0, p0, Lmaj;->j:Landroid/support/v7/widget/AppCompatRadioButton;

    .line 266
    const v0, 0x7f1002d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmaj;->k:Landroid/widget/Button;

    .line 267
    invoke-direct {p0}, Lmaj;->h()V

    .line 268
    return-void
.end method

.method static synthetic a(Lmaj;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lmaj;->b()V

    return-void
.end method

.method static synthetic b(Lmaj;)Ljava/util/Date;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lmaj;->i()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 7

    .prologue
    .line 141
    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-static {}, Lmhj;->d()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    .line 143
    iget-object v0, p0, Lmaj;->n:Ljava/util/Date;

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 144
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lmaj;->l:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    new-instance v2, Lmal;

    invoke-direct {v2, p0, v5}, Lmal;-><init>(Lmaj;Ljava/util/Calendar;)V

    const/4 v3, 0x1

    .line 168
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 170
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-direct {p0}, Lmaj;->i()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 172
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 173
    return-void
.end method

.method static synthetic c(Lmaj;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lmaj;->l:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 177
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lmaj;->n:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 183
    iget-object v0, p0, Lmaj;->n:Ljava/util/Date;

    const-string v1, "ddMMyyyy"

    invoke-static {v0, v1}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 185
    const-string v1, "Seguros_Sinistro_Acionar_Vistoria_Data"

    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lmaj;->h:Landroid/support/v7/widget/AppCompatRadioButton;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatRadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const-string v0, "Seguros_Sinistro_Acionar_Vistoria_Periodo"

    const-string v1, "Manha"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :goto_0
    return-void

    .line 194
    :cond_0
    const-string v0, "Seguros_Sinistro_Acionar_Vistoria_Periodo"

    const-string v1, "Tarde"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lmaj;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lmaj;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method private d()V
    .locals 6

    .prologue
    .line 202
    invoke-direct {p0}, Lmaj;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    invoke-direct {p0}, Lmaj;->c()V

    .line 205
    const-string v0, "Seguros_Sinistro_Acionar_Vistoria_Periodo_Acao"

    const-string v1, "Avancar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v0, Lkva;

    invoke-direct {v0}, Lkva;-><init>()V

    .line 209
    iget-object v1, p0, Lmaj;->n:Ljava/util/Date;

    const-string v2, "yyyyMMdd"

    invoke-static {v1, v2}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 210
    sget-object v2, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {v2}, Lmhv;->getCoverageId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 211
    sget-object v2, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {v2}, Lmhv;->getCoverageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkva;->b(Ljava/lang/Long;)V

    .line 213
    :cond_0
    sget-object v2, Lkuz;->NEXT:Lkuz;

    invoke-virtual {v0, v2}, Lkva;->a(Lkuz;)V

    .line 214
    iget-object v2, p0, Lmaj;->m:Lkvb;

    invoke-virtual {v2}, Lkvb;->q()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkva;->a(Ljava/lang/Integer;)V

    .line 215
    sget-object v2, Lkuq;->DATE_PERIOD:Lkuq;

    invoke-virtual {v0, v2}, Lkva;->a(Lkuq;)V

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lmaj;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkva;->a(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lmaj;->n:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lkva;->a(Ljava/util/Date;)V

    .line 219
    invoke-direct {p0}, Lmaj;->g()Lkvf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkva;->a(Lkvf;)V

    .line 220
    iget-object v1, p0, Lmaj;->l:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lkva;)V

    .line 223
    :cond_1
    return-void
.end method

.method static synthetic e(Lmaj;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lmaj;->d()V

    return-void
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lmaj;->j:Landroid/support/v7/widget/AppCompatRadioButton;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatRadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmaj;->h:Landroid/support/v7/widget/AppCompatRadioButton;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatRadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    :cond_0
    const/4 v0, 0x1

    .line 229
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lmaj;)Landroid/support/v7/widget/AppCompatRadioButton;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lmaj;->j:Landroid/support/v7/widget/AppCompatRadioButton;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lmaj;->j:Landroid/support/v7/widget/AppCompatRadioButton;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatRadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const-string v0, "Tarde"

    .line 242
    :goto_0
    return-object v0

    .line 238
    :cond_0
    iget-object v0, p0, Lmaj;->h:Landroid/support/v7/widget/AppCompatRadioButton;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatRadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    const-string v0, "Manh\u00e3"

    goto :goto_0

    .line 242
    :cond_1
    const-string v0, "nao_informado"

    goto :goto_0
.end method

.method static synthetic g(Lmaj;)Landroid/support/v7/widget/AppCompatRadioButton;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lmaj;->h:Landroid/support/v7/widget/AppCompatRadioButton;

    return-object v0
.end method

.method private g()Lkvf;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lmaj;->j:Landroid/support/v7/widget/AppCompatRadioButton;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatRadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    sget-object v0, Lkvf;->PM:Lkvf;

    .line 253
    :goto_0
    return-object v0

    .line 249
    :cond_0
    iget-object v0, p0, Lmaj;->h:Landroid/support/v7/widget/AppCompatRadioButton;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatRadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    sget-object v0, Lkvf;->AM:Lkvf;

    goto :goto_0

    .line 253
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lmaj;->k:Landroid/widget/Button;

    new-instance v1, Lmao;

    invoke-direct {v1, p0}, Lmao;-><init>(Lmaj;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v0, p0, Lmaj;->g:Landroid/widget/RelativeLayout;

    new-instance v1, Lmap;

    invoke-direct {v1, p0}, Lmap;-><init>(Lmaj;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v0, p0, Lmaj;->i:Landroid/widget/RelativeLayout;

    new-instance v1, Lmaq;

    invoke-direct {v1, p0}, Lmaq;-><init>(Lmaj;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    return-void
.end method

.method private i()Ljava/util/Date;
    .locals 6

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 298
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 299
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 300
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 301
    const/16 v1, 0xa

    invoke-virtual {v2, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 302
    const/16 v1, 0xc

    invoke-virtual {v2, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 303
    const/16 v1, 0xd

    invoke-virtual {v2, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 304
    const/16 v1, 0xe

    invoke-virtual {v2, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 305
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 306
    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 307
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 308
    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 311
    :cond_0
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 312
    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 305
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_2
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 67
    instance-of v0, p1, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    if-eqz v0, :cond_0

    .line 68
    check-cast p1, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    iput-object p1, p0, Lmaj;->l:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    .line 70
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    new-instance v0, Lkvb;

    invoke-direct {v0}, Lkvb;-><init>()V

    iput-object v0, p0, Lmaj;->o:Lkvb;

    .line 87
    invoke-virtual {p0}, Lmaj;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmaj;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "response-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Lmaj;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "response-key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkvb;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvb;

    iput-object v0, p0, Lmaj;->m:Lkvb;

    .line 90
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 95
    const v0, 0x7f040202

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 96
    invoke-direct {p0, v0}, Lmaj;->a(Landroid/view/View;)V

    .line 97
    iget-object v1, p0, Lmaj;->l:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {p0}, Lmaj;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09095f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    invoke-direct {p0}, Lmaj;->a()V

    .line 99
    return-object v0
.end method
