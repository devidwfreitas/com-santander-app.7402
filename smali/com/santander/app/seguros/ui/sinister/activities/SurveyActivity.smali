.class public Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;
.super Lgrs;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "sinister-key"


# instance fields
.field private A:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private B:Lkvp;

.field private C:Ljava/util/Date;

.field private D:Ljava/util/Date;

.field private E:Z

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/RelativeLayout;

.field private w:Landroid/support/v7/widget/AppCompatRadioButton;

.field private x:Landroid/widget/RelativeLayout;

.field private y:Landroid/support/v7/widget/AppCompatRadioButton;

.field private z:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->E:Z

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->C:Ljava/util/Date;

    return-object p1
.end method

.method private a(Ljava/util/Date;)Ljava/util/Date;
    .locals 6

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 97
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 98
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 99
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 100
    const/16 v1, 0xa

    invoke-virtual {v2, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 101
    const/16 v1, 0xc

    invoke-virtual {v2, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 102
    const/16 v1, 0xd

    invoke-virtual {v2, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 103
    const/16 v1, 0xe

    invoke-virtual {v2, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 104
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 105
    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 107
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 108
    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 111
    :cond_0
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 112
    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 104
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    const v4, 0x7f09095f

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 121
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 122
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020664

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 125
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 126
    const v2, 0x7f04039b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 127
    const v2, 0x7f100071

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 128
    invoke-virtual {p0, v4}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->d()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;Z)Z
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->E:Z

    return p1
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;)Ljava/util/Date;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->D:Ljava/util/Date;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 133
    const v0, 0x7f10038a

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->b:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f100433

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->c:Landroid/widget/FrameLayout;

    .line 135
    const v0, 0x7f10030d

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->d:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f100434

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->e:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f100435

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->f:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f100437

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->g:Landroid/widget/RelativeLayout;

    .line 139
    const v0, 0x7f100439

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatRadioButton;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->w:Landroid/support/v7/widget/AppCompatRadioButton;

    .line 140
    const v0, 0x7f10043a

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->x:Landroid/widget/RelativeLayout;

    .line 141
    const v0, 0x7f10043c

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatRadioButton;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->y:Landroid/support/v7/widget/AppCompatRadioButton;

    .line 142
    const v0, 0x7f10043d

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->z:Landroid/widget/Button;

    .line 143
    const v0, 0x7f10010f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->A:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 144
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->e()V

    .line 145
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;)Ljava/util/Date;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->C:Ljava/util/Date;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->D:Ljava/util/Date;

    const-string v2, "dd/MM/yyyy"

    invoke-static {v1, v2}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->D:Ljava/util/Date;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->C:Ljava/util/Date;

    .line 150
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->c:Landroid/widget/FrameLayout;

    new-instance v1, Llst;

    invoke-direct {v1, p0}, Llst;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    return-void
.end method

.method public static synthetic d(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method private d()V
    .locals 7

    .prologue
    .line 159
    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-static {}, Lmhj;->d()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    .line 160
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->C:Ljava/util/Date;

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 162
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->i:Landroid/app/Activity;

    new-instance v2, Llsu;

    invoke-direct {v2, p0, v5}, Llsu;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;Ljava/util/Calendar;)V

    const/4 v3, 0x1

    .line 185
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 187
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->D:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 188
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 190
    return-void
.end method

.method public static synthetic e(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;)Landroid/support/v7/widget/AppCompatRadioButton;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->w:Landroid/support/v7/widget/AppCompatRadioButton;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->z:Landroid/widget/Button;

    new-instance v1, Llsx;

    invoke-direct {v1, p0}, Llsx;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->g:Landroid/widget/RelativeLayout;

    new-instance v1, Llsy;

    invoke-direct {v1, p0}, Llsy;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->x:Landroid/widget/RelativeLayout;

    new-instance v1, Llsz;

    invoke-direct {v1, p0}, Llsz;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    return-void
.end method

.method public static synthetic f(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;)Landroid/support/v7/widget/AppCompatRadioButton;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->y:Landroid/support/v7/widget/AppCompatRadioButton;

    return-object v0
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 227
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->A:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 228
    iput-boolean v5, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->E:Z

    .line 230
    new-instance v1, Lkvz;

    invoke-direct {v1}, Lkvz;-><init>()V

    .line 231
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->B:Lkvp;

    invoke-virtual {v0}, Lkvp;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkvz;->b(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->B:Lkvp;

    invoke-virtual {v0}, Lkvp;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkvz;->c(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->B:Lkvp;

    invoke-virtual {v2}, Lkvp;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkvz;->d(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->B:Lkvp;

    invoke-virtual {v0}, Lkvp;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkvz;->e(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->C:Ljava/util/Date;

    const-string v2, "dd/MM/yyyy"

    invoke-static {v0, v2}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkvz;->f(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->y:Landroid/support/v7/widget/AppCompatRadioButton;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatRadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    const-string v0, "Tarde"

    invoke-virtual {v1, v0}, Lkvz;->a(Ljava/lang/String;)V

    .line 243
    :cond_0
    :goto_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 245
    :try_start_0
    const-string v0, "X-Application-Key"

    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v2

    invoke-virtual {v2}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v2

    const-string v4, "appKey"

    invoke-virtual {v2, v4}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string v0, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_1
    const/4 v0, 0x0

    .line 252
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, v1}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 258
    :goto_2
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v1, Lkwr;->SURVEY_LOSSES:Lkwr;

    invoke-virtual {v1}, Lkwr;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lim;->PUT:Lim;

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 259
    new-instance v1, Lgnv;

    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->h()Lgkw;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 261
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 264
    :try_start_2
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 271
    :cond_1
    :goto_3
    return-void

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->w:Landroid/support/v7/widget/AppCompatRadioButton;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatRadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const-string v0, "Manh\u00e3"

    invoke-virtual {v1, v0}, Lkvz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 253
    :catch_1
    move-exception v1

    .line 254
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v0

    goto :goto_2

    .line 265
    :catch_2
    move-exception v0

    .line 266
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private g()V
    .locals 2

    .prologue
    .line 275
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->C:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 281
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->C:Ljava/util/Date;

    const-string v1, "ddMMyyyy"

    invoke-static {v0, v1}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 283
    const-string v1, "Seguros_Sinistro_MeusSinistros_Carrossel_RemarcarVistoria_Data"

    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->w:Landroid/support/v7/widget/AppCompatRadioButton;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatRadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    const-string v0, "Seguros_Sinistro_MeusSinistros_Carrossel_RemarcarVistoria_Periodo"

    const-string v1, "Manha"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :goto_0
    const-string v0, "Seguros_Sinistro_MeusSinistros_Carrossel_RemarcarVistoria_Acao"

    const-string v1, "Avancar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    return-void

    .line 292
    :cond_0
    const-string v0, "Seguros_Sinistro_MeusSinistros_Carrossel_RemarcarVistoria_Periodo"

    const-string v1, "Tarde"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static synthetic g(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->f()V

    return-void
.end method

.method private h()Lgkw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgkw",
            "<",
            "Lis;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    new-instance v0, Llta;

    invoke-direct {v0, p0}, Llta;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;)V

    return-object v0
.end method

.method public static synthetic h(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->g()V

    return-void
.end method

.method public static synthetic i(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->A:Lbr/com/zup/multistatelayout/MultiStateLayout;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->E:Z

    if-nez v0, :cond_0

    .line 305
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 307
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 81
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v0, 0x7f0400ac

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->setContentView(I)V

    .line 83
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->a()V

    .line 84
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->b()V

    .line 86
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sinister-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "sinister-key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkvp;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvp;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->B:Lkvp;

    .line 89
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->a(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->D:Ljava/util/Date;

    .line 90
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->c()V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->A:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->ERROR:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 317
    invoke-super {p0}, Lgrs;->onPause()V

    .line 318
    invoke-static {}, Lkws;->a()Lkws;

    move-result-object v0

    invoke-virtual {v0}, Lkws;->b()Lnfg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnfg;->c(Ljava/lang/Object;)V

    .line 319
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 311
    invoke-super {p0}, Lgrs;->onResume()V

    .line 312
    invoke-static {}, Lkws;->a()Lkws;

    move-result-object v0

    invoke-virtual {v0}, Lkws;->b()Lnfg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnfg;->b(Ljava/lang/Object;)V

    .line 313
    return-void
.end method
