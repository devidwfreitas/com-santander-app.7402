.class public Lcom/santander/app/PoupancaResgateActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lnez;


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Lcom/santander/app/widget/Indicator;

.field private C:Lftr;

.field private D:Lfts;

.field private E:Landroid/widget/ProgressBar;

.field private F:Landroid/app/Activity;

.field private G:Lfku;

.field private H:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lfpj;",
            ">;"
        }
    .end annotation
.end field

.field private I:Lftc;

.field private J:I

.field public a:Landroid/app/Dialog;

.field private final b:Ljava/lang/String;

.field private c:Lcom/santander/app/widget/Carrossel;

.field private d:Lcom/santander/app/widget/Indicator;

.field private e:Lcom/santander/app/widget/Carrossel;

.field private f:Lfos;

.field private g:Lfos;

.field private w:Landroid/widget/EditText;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/support/v4/view/ViewPager;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 64
    const-string v0, "PoupancaResgateActivity"

    iput-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->b:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->a:Landroid/app/Dialog;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/PoupancaResgateActivity;->J:I

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/PoupancaResgateActivity;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/santander/app/PoupancaResgateActivity;->J:I

    return v0
.end method

.method public static synthetic a(Lcom/santander/app/PoupancaResgateActivity;I)I
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/santander/app/PoupancaResgateActivity;->J:I

    return p1
.end method

.method public static synthetic a(Lcom/santander/app/PoupancaResgateActivity;Lftc;)Lftc;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/santander/app/PoupancaResgateActivity;->I:Lftc;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/PoupancaResgateActivity;Lftr;)Lftr;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/santander/app/PoupancaResgateActivity;->C:Lftr;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/PoupancaResgateActivity;Lfts;)Lfts;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/santander/app/PoupancaResgateActivity;->D:Lfts;

    return-object p1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 216
    const v0, 0x7f100814

    invoke-virtual {p0, v0}, Lcom/santander/app/PoupancaResgateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    iput-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->c:Lcom/santander/app/widget/Carrossel;

    .line 217
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->H:Ljava/util/Vector;

    .line 219
    const v0, 0x7f10109d

    invoke-virtual {p0, v0}, Lcom/santander/app/PoupancaResgateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Indicator;

    iput-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->d:Lcom/santander/app/widget/Indicator;

    .line 220
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->d:Lcom/santander/app/widget/Indicator;

    iget-object v1, p0, Lcom/santander/app/PoupancaResgateActivity;->I:Lftc;

    invoke-virtual {v1}, Lftc;->c()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Indicator;->setSize(I)V

    .line 222
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->I:Lftc;

    invoke-virtual {v0}, Lftc;->c()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 223
    new-instance v2, Lfpj;

    invoke-direct {v2}, Lfpj;-><init>()V

    .line 224
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->I:Lftc;

    invoke-virtual {v0}, Lftc;->c()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftl;

    invoke-virtual {v2, v0}, Lfpj;->a(Lftl;)V

    .line 225
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->H:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 222
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 228
    :cond_0
    new-instance v0, Lfpy;

    iget-object v1, p0, Lcom/santander/app/PoupancaResgateActivity;->H:Ljava/util/Vector;

    invoke-direct {v0, p0, v1}, Lfpy;-><init>(Landroid/content/Context;Ljava/util/Vector;)V

    .line 229
    iget-object v1, p0, Lcom/santander/app/PoupancaResgateActivity;->c:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v1, v0}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 230
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->c:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0, p0}, Lcom/santander/app/widget/Carrossel;->setListener(Lnez;)V

    .line 232
    invoke-direct {p0}, Lcom/santander/app/PoupancaResgateActivity;->b()V

    .line 233
    return-void
.end method

.method private a(Lfts;)V
    .locals 2

    .prologue
    .line 448
    invoke-virtual {p1}, Lfts;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Lfts;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/PoupancaResgateActivity;->goConfirmar()V

    .line 453
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->F:Landroid/app/Activity;

    invoke-virtual {p1}, Lfts;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/santander/app/PoupancaResgateActivity;)Lcom/santander/app/widget/Carrossel;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->e:Lcom/santander/app/widget/Carrossel;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    new-instance v1, Lfpt;

    invoke-direct {v1}, Lfpt;-><init>()V

    .line 240
    const-string v2, "Valor total"

    invoke-virtual {v1, v2}, Lfpt;->a(Ljava/lang/String;)V

    .line 241
    const-string v2, ""

    invoke-virtual {v1, v2}, Lfpt;->b(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v1, v4}, Lfpt;->a(I)V

    .line 245
    new-instance v2, Lfpt;

    invoke-direct {v2}, Lfpt;-><init>()V

    .line 246
    const-string v3, "Valor parcial"

    invoke-virtual {v2, v3}, Lfpt;->a(Ljava/lang/String;)V

    .line 247
    const-string v3, ""

    invoke-virtual {v2, v3}, Lfpt;->b(Ljava/lang/String;)V

    .line 248
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lfpt;->a(I)V

    .line 250
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v1, Lfpu;

    iget-object v2, p0, Lcom/santander/app/PoupancaResgateActivity;->F:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lfpu;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 255
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->y:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 257
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->F:Landroid/app/Activity;

    const v1, 0x7f100df1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->A:Landroid/widget/ImageView;

    .line 258
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->F:Landroid/app/Activity;

    const v1, 0x7f100df2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->z:Landroid/widget/ImageView;

    .line 261
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->z:Landroid/widget/ImageView;

    const v1, 0x7f020068

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->A:Landroid/widget/ImageView;

    new-instance v1, Lfkq;

    invoke-direct {v1, p0}, Lfkq;-><init>(Lcom/santander/app/PoupancaResgateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->z:Landroid/widget/ImageView;

    new-instance v1, Lfkr;

    invoke-direct {v1, p0}, Lfkr;-><init>(Lcom/santander/app/PoupancaResgateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    const v0, 0x7f1008f6

    invoke-virtual {p0, v0}, Lcom/santander/app/PoupancaResgateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->w:Landroid/widget/EditText;

    .line 288
    new-instance v0, Lguj;

    invoke-direct {v0}, Lguj;-><init>()V

    .line 289
    iget-object v1, p0, Lcom/santander/app/PoupancaResgateActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lguj;->a(Landroid/widget/EditText;)V

    .line 290
    iget-object v1, p0, Lcom/santander/app/PoupancaResgateActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 292
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->w:Landroid/widget/EditText;

    new-instance v1, Lfks;

    invoke-direct {v1, p0}, Lfks;-><init>(Lcom/santander/app/PoupancaResgateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    const v0, 0x7f1008f7

    invoke-virtual {p0, v0}, Lcom/santander/app/PoupancaResgateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->x:Landroid/widget/TextView;

    .line 302
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->I:Lftc;

    invoke-virtual {v0}, Lftc;->a()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->I:Lftc;

    invoke-virtual {v0}, Lftc;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->I:Lftc;

    .line 303
    invoke-virtual {v0}, Lftc;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftb;

    invoke-virtual {v0}, Lftb;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 305
    iget-object v1, p0, Lcom/santander/app/PoupancaResgateActivity;->x:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->I:Lftc;

    invoke-virtual {v0}, Lftc;->c()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftl;

    invoke-virtual {v0}, Lftl;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    :goto_0
    const v0, 0x7f100df3

    invoke-virtual {p0, v0}, Lcom/santander/app/PoupancaResgateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Indicator;

    iput-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->B:Lcom/santander/app/widget/Indicator;

    .line 310
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->B:Lcom/santander/app/widget/Indicator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Indicator;->setSize(I)V

    .line 311
    return-void

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->x:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/santander/app/PoupancaResgateActivity;Lfts;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/santander/app/PoupancaResgateActivity;->a(Lfts;)V

    return-void
.end method

.method public static synthetic c(Lcom/santander/app/PoupancaResgateActivity;)Lfos;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->f:Lfos;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/PoupancaResgateActivity;)Lfos;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->g:Lfos;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/PoupancaResgateActivity;)I
    .locals 2

    .prologue
    .line 62
    iget v0, p0, Lcom/santander/app/PoupancaResgateActivity;->J:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/santander/app/PoupancaResgateActivity;->J:I

    return v0
.end method

.method public static synthetic f(Lcom/santander/app/PoupancaResgateActivity;)Lcom/santander/app/widget/Indicator;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->B:Lcom/santander/app/widget/Indicator;

    return-object v0
.end method

.method public static synthetic g(Lcom/santander/app/PoupancaResgateActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->w:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic h(Lcom/santander/app/PoupancaResgateActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->x:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic i(Lcom/santander/app/PoupancaResgateActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->y:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public static synthetic j(Lcom/santander/app/PoupancaResgateActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->z:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic k(Lcom/santander/app/PoupancaResgateActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->A:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic l(Lcom/santander/app/PoupancaResgateActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->F:Landroid/app/Activity;

    return-object v0
.end method

.method public static synthetic m(Lcom/santander/app/PoupancaResgateActivity;)Lcom/santander/app/widget/Carrossel;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->c:Lcom/santander/app/widget/Carrossel;

    return-object v0
.end method

.method public static synthetic n(Lcom/santander/app/PoupancaResgateActivity;)Lftc;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->I:Lftc;

    return-object v0
.end method

.method public static synthetic o(Lcom/santander/app/PoupancaResgateActivity;)Lftr;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->C:Lftr;

    return-object v0
.end method

.method public static synthetic p(Lcom/santander/app/PoupancaResgateActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->E:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public static synthetic q(Lcom/santander/app/PoupancaResgateActivity;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/santander/app/PoupancaResgateActivity;->a()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 458
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 462
    const-string v0, "Investimentos_Poupanca_Resgatar_Acao"

    const-string v1, "SelecionarConta"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->d:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v0, p1}, Lcom/santander/app/widget/Indicator;->setSelected(I)V

    .line 464
    iget-object v1, p0, Lcom/santander/app/PoupancaResgateActivity;->x:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->I:Lftc;

    invoke-virtual {v0}, Lftc;->c()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftl;

    invoke-virtual {v0}, Lftl;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    return-void
.end method

.method public goConfirmar()V
    .locals 3

    .prologue
    .line 335
    const-string v0, "Investimentos_Poupanca_Resgatar_Confirmacao_Acao"

    const-string v1, "Confirmar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 338
    const-string v1, "requestParam"

    iget-object v2, p0, Lcom/santander/app/PoupancaResgateActivity;->C:Lftr;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 339
    const-string v1, "responseResgatar"

    iget-object v2, p0, Lcom/santander/app/PoupancaResgateActivity;->D:Lfts;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 340
    invoke-virtual {p0, v0}, Lcom/santander/app/PoupancaResgateActivity;->startActivity(Landroid/content/Intent;)V

    .line 341
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 97
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const v0, 0x7f04034b

    invoke-virtual {p0, v0}, Lcom/santander/app/PoupancaResgateActivity;->setContentView(I)V

    .line 101
    invoke-virtual {p0}, Lcom/santander/app/PoupancaResgateActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 102
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 103
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 105
    const v1, 0x7f0908ab

    invoke-virtual {p0, v1}, Lcom/santander/app/PoupancaResgateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 107
    iput-object p0, p0, Lcom/santander/app/PoupancaResgateActivity;->F:Landroid/app/Activity;

    .line 108
    const v0, 0x7f100df0

    invoke-virtual {p0, v0}, Lcom/santander/app/PoupancaResgateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->y:Landroid/support/v4/view/ViewPager;

    .line 110
    invoke-virtual {p0}, Lcom/santander/app/PoupancaResgateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/santander/app/PoupancaResgateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "consultarPosicaoConsolidadaPoupancaList"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftc;

    iput-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->I:Lftc;

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->I:Lftc;

    invoke-virtual {v0}, Lftc;->c()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->I:Lftc;

    invoke-virtual {v0}, Lftc;->c()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 117
    const v0, 0x7f100815

    invoke-virtual {p0, v0}, Lcom/santander/app/PoupancaResgateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->E:Landroid/widget/ProgressBar;

    .line 118
    new-instance v0, Lfkt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfkt;-><init>(Lcom/santander/app/PoupancaResgateActivity;Lfkn;)V

    .line 119
    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfkt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 126
    :goto_1
    const v0, 0x7f101098

    invoke-virtual {p0, v0}, Lcom/santander/app/PoupancaResgateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    iput-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->e:Lcom/santander/app/widget/Carrossel;

    .line 127
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 129
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 131
    new-instance v2, Lfos;

    invoke-direct {v2}, Lfos;-><init>()V

    iput-object v2, p0, Lcom/santander/app/PoupancaResgateActivity;->f:Lfos;

    .line 132
    iget-object v2, p0, Lcom/santander/app/PoupancaResgateActivity;->f:Lfos;

    invoke-virtual {p0}, Lcom/santander/app/PoupancaResgateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfos;->a(Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Lcom/santander/app/PoupancaResgateActivity;->f:Lfos;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfos;->b(Ljava/lang/String;)V

    .line 135
    new-instance v2, Lfos;

    invoke-direct {v2}, Lfos;-><init>()V

    iput-object v2, p0, Lcom/santander/app/PoupancaResgateActivity;->g:Lfos;

    .line 136
    iget-object v2, p0, Lcom/santander/app/PoupancaResgateActivity;->g:Lfos;

    invoke-virtual {p0}, Lcom/santander/app/PoupancaResgateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901ba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfos;->a(Ljava/lang/String;)V

    .line 137
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 138
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 139
    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 140
    iget-object v3, p0, Lcom/santander/app/PoupancaResgateActivity;->g:Lfos;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lfos;->b(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/santander/app/PoupancaResgateActivity;->g:Lfos;

    sget-object v2, Lfot;->PICKER:Lfot;

    invoke-virtual {v1, v2}, Lfos;->a(Lfot;)V

    .line 143
    iget-object v1, p0, Lcom/santander/app/PoupancaResgateActivity;->f:Lfos;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v1, p0, Lcom/santander/app/PoupancaResgateActivity;->g:Lfos;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v1, Lfou;

    invoke-direct {v1, p0, v0, p0}, Lfou;-><init>(Landroid/content/Context;Ljava/util/Vector;Landroid/app/Activity;)V

    .line 147
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->e:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 148
    iput v5, p0, Lcom/santander/app/PoupancaResgateActivity;->J:I

    .line 149
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->e:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->b()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lfkn;

    invoke-direct {v2, p0, v1}, Lfkn;-><init>(Lcom/santander/app/PoupancaResgateActivity;Lfou;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 164
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->y:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lfko;

    invoke-direct {v1, p0}, Lfko;-><init>(Lcom/santander/app/PoupancaResgateActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 179
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->y:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lfkp;

    invoke-direct {v1, p0}, Lfkp;-><init>(Lcom/santander/app/PoupancaResgateActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 213
    return-void

    .line 113
    :cond_0
    new-instance v0, Lftc;

    invoke-direct {v0}, Lftc;-><init>()V

    iput-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->I:Lftc;

    goto/16 :goto_0

    .line 122
    :cond_1
    invoke-direct {p0}, Lcom/santander/app/PoupancaResgateActivity;->a()V

    goto/16 :goto_1
.end method

.method public openConfirmar(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 314
    const-string v0, "Investimentos_Poupanca_Resgatar_Acao"

    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->I:Lftc;

    invoke-virtual {v0}, Lftc;->c()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/PoupancaResgateActivity;->c:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v1}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftl;

    .line 319
    iget-object v1, p0, Lcom/santander/app/PoupancaResgateActivity;->y:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-nez v1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->F:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/santander/app/PoupancaResgateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09039d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 332
    :goto_1
    return-void

    .line 322
    :cond_0
    invoke-virtual {v0}, Lftl;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 328
    :cond_1
    new-instance v0, Lfku;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfku;-><init>(Lcom/santander/app/PoupancaResgateActivity;Lfkn;)V

    iput-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->G:Lfku;

    .line 329
    iget-object v0, p0, Lcom/santander/app/PoupancaResgateActivity;->G:Lfku;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfku;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method
