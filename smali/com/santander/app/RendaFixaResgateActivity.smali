.class public Lcom/santander/app/RendaFixaResgateActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lnez;


# instance fields
.field private A:Lcom/santander/app/widget/Carrossel;

.field private B:Lcom/santander/app/widget/Carrossel;

.field private C:Lcom/santander/app/widget/Carrossel;

.field private D:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lfos;",
            ">;"
        }
    .end annotation
.end field

.field private E:Lfos;

.field private F:Lfos;

.field private G:Landroid/support/v4/view/ViewPager;

.field private H:Lcom/santander/app/widget/Indicator;

.field private I:Landroid/widget/ImageView;

.field private J:Landroid/widget/ImageView;

.field private K:Landroid/widget/EditText;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/ProgressBar;

.field private final a:Ljava/lang/String;

.field private b:Lcom/santander/app/RendaFixaResgateActivity;

.field private c:Landroid/app/Dialog;

.field private d:I

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lftk;

.field private w:Lfwb;

.field private x:Lftn;

.field private y:Lftf;

.field private z:Lcom/santander/app/widget/Carrossel;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 70
    const-string v0, "RendaFixaResgateActivity"

    iput-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->a:Ljava/lang/String;

    .line 75
    iput v1, p0, Lcom/santander/app/RendaFixaResgateActivity;->d:I

    .line 76
    iput-boolean v1, p0, Lcom/santander/app/RendaFixaResgateActivity;->e:Z

    .line 78
    iput-object v2, p0, Lcom/santander/app/RendaFixaResgateActivity;->f:Ljava/util/List;

    .line 79
    iput-object v2, p0, Lcom/santander/app/RendaFixaResgateActivity;->g:Lftk;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/RendaFixaResgateActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/santander/app/RendaFixaResgateActivity;->c:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/RendaFixaResgateActivity;)Lftf;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->y:Lftf;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/RendaFixaResgateActivity;Lftf;)Lftf;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/santander/app/RendaFixaResgateActivity;->y:Lftf;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/RendaFixaResgateActivity;Lfwb;)Lfwb;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/santander/app/RendaFixaResgateActivity;->w:Lfwb;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 130
    const v0, 0x7f04029d

    invoke-virtual {p0, v0}, Lcom/santander/app/RendaFixaResgateActivity;->setContentView(I)V

    .line 131
    invoke-virtual {p0}, Lcom/santander/app/RendaFixaResgateActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 132
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 133
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 135
    const v2, 0x7f0908ab

    invoke-virtual {p0, v2}, Lcom/santander/app/RendaFixaResgateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    move v0, v1

    .line 137
    :goto_0
    iget-object v2, p0, Lcom/santander/app/RendaFixaResgateActivity;->x:Lftn;

    invoke-virtual {v2}, Lftn;->a()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 138
    new-instance v2, Lfms;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lfms;-><init>(Lcom/santander/app/RendaFixaResgateActivity;Lfml;)V

    .line 139
    invoke-virtual {v2, v0}, Lfms;->a(I)V

    .line 140
    new-array v3, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lfms;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    const v0, 0x7f1008f6

    invoke-virtual {p0, v0}, Lcom/santander/app/RendaFixaResgateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->K:Landroid/widget/EditText;

    .line 144
    const v0, 0x7f1008f7

    invoke-virtual {p0, v0}, Lcom/santander/app/RendaFixaResgateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->L:Landroid/widget/TextView;

    .line 145
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->g:Lftk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->g:Lftk;

    invoke-virtual {v0}, Lftk;->d()Lftf;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->g:Lftk;

    .line 146
    invoke-virtual {v0}, Lftk;->d()Lftf;

    move-result-object v0

    invoke-virtual {v0}, Lftf;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->y:Lftf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->y:Lftf;

    .line 147
    invoke-virtual {v0}, Lftf;->f()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->y:Lftf;

    invoke-virtual {v0}, Lftf;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->y:Lftf;

    .line 148
    invoke-virtual {v0}, Lftf;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfte;

    invoke-virtual {v0}, Lfte;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v2, p0, Lcom/santander/app/RendaFixaResgateActivity;->L:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->y:Lftf;

    .line 150
    invoke-virtual {v0}, Lftf;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfte;

    invoke-virtual {v0}, Lfte;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :goto_1
    new-instance v0, Lgui;

    invoke-direct {v0}, Lgui;-><init>()V

    .line 155
    iget-object v1, p0, Lcom/santander/app/RendaFixaResgateActivity;->K:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lgui;->a(Landroid/widget/EditText;)V

    .line 156
    iget-object v1, p0, Lcom/santander/app/RendaFixaResgateActivity;->K:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 160
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->f:Ljava/util/List;

    .line 162
    invoke-direct {p0}, Lcom/santander/app/RendaFixaResgateActivity;->d()V

    .line 163
    invoke-direct {p0}, Lcom/santander/app/RendaFixaResgateActivity;->e()V

    .line 164
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->L:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public static synthetic a(Lcom/santander/app/RendaFixaResgateActivity;Z)Z
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/santander/app/RendaFixaResgateActivity;->e:Z

    return p1
.end method

.method public static synthetic b(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->L:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 169
    const v0, 0x7f100ded

    invoke-virtual {p0, v0}, Lcom/santander/app/RendaFixaResgateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    iput-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->A:Lcom/santander/app/widget/Carrossel;

    .line 171
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->x:Lftn;

    invoke-virtual {v0}, Lftn;->a()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/RendaFixaResgateActivity;->g:Lftk;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 174
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    move v1, v2

    .line 175
    :goto_0
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->x:Lftn;

    invoke-virtual {v0}, Lftn;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->x:Lftn;

    invoke-virtual {v0}, Lftn;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftk;

    .line 177
    new-instance v5, Lfpg;

    invoke-direct {v5}, Lfpg;-><init>()V

    .line 178
    invoke-virtual {v0}, Lftk;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lfpg;->a(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Lftk;->d()Lftf;

    move-result-object v6

    invoke-virtual {v6}, Lftf;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lfpg;->b(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0}, Lftk;->d()Lftf;

    move-result-object v0

    invoke-virtual {v0}, Lftf;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lfpg;->c(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 175
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 185
    :cond_0
    new-instance v0, Lfpe;

    invoke-direct {v0, p0, v4}, Lfpe;-><init>(Landroid/content/Context;Ljava/util/Vector;)V

    .line 188
    iget-object v1, p0, Lcom/santander/app/RendaFixaResgateActivity;->A:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v1, p0}, Lcom/santander/app/widget/Carrossel;->setListener(Lnez;)V

    .line 189
    iget-object v1, p0, Lcom/santander/app/RendaFixaResgateActivity;->A:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v1, v0}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 191
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->A:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0, v3}, Lcom/santander/app/widget/Carrossel;->setCurrentItem(I)V

    .line 193
    invoke-direct {p0, v3}, Lcom/santander/app/RendaFixaResgateActivity;->d(I)V

    .line 195
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->x:Lftn;

    invoke-virtual {v0}, Lftn;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftk;

    iput-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->g:Lftk;

    .line 196
    iget-object v1, p0, Lcom/santander/app/RendaFixaResgateActivity;->L:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->y:Lftf;

    invoke-virtual {v0}, Lftf;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfte;

    invoke-virtual {v0}, Lfte;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->G:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 244
    const v0, 0x7f100df0

    invoke-virtual {p0, v0}, Lcom/santander/app/RendaFixaResgateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->G:Landroid/support/v4/view/ViewPager;

    .line 246
    const v0, 0x7f100df3

    invoke-virtual {p0, v0}, Lcom/santander/app/RendaFixaResgateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Indicator;

    iput-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->H:Lcom/santander/app/widget/Indicator;

    .line 247
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->H:Lcom/santander/app/widget/Indicator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Indicator;->setSize(I)V

    .line 249
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->G:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lfmm;

    invoke-direct {v1, p0}, Lfmm;-><init>(Lcom/santander/app/RendaFixaResgateActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    new-instance v1, Lfpt;

    invoke-direct {v1}, Lfpt;-><init>()V

    .line 267
    const-string v2, "Valor total"

    invoke-virtual {v1, v2}, Lfpt;->a(Ljava/lang/String;)V

    .line 268
    const-string v2, ""

    invoke-virtual {v1, v2}, Lfpt;->b(Ljava/lang/String;)V

    .line 269
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lfpt;->a(I)V

    .line 271
    new-instance v2, Lfpt;

    invoke-direct {v2}, Lfpt;-><init>()V

    .line 272
    const-string v3, "Valor parcial"

    invoke-virtual {v2, v3}, Lfpt;->a(Ljava/lang/String;)V

    .line 273
    const-string v3, ""

    invoke-virtual {v2, v3}, Lfpt;->b(Ljava/lang/String;)V

    .line 274
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lfpt;->a(I)V

    .line 276
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v1, Lfpu;

    invoke-direct {v1, p0, v0}, Lfpu;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 280
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->G:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 282
    const v0, 0x7f100df1

    invoke-virtual {p0, v0}, Lcom/santander/app/RendaFixaResgateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->I:Landroid/widget/ImageView;

    .line 283
    const v0, 0x7f100df2

    invoke-virtual {p0, v0}, Lcom/santander/app/RendaFixaResgateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->J:Landroid/widget/ImageView;

    .line 285
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->I:Landroid/widget/ImageView;

    new-instance v1, Lfmn;

    invoke-direct {v1, p0}, Lfmn;-><init>(Lcom/santander/app/RendaFixaResgateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->J:Landroid/widget/ImageView;

    new-instance v1, Lfmo;

    invoke-direct {v1, p0}, Lfmo;-><init>(Lcom/santander/app/RendaFixaResgateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->G:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lfmp;

    invoke-direct {v1, p0}, Lfmp;-><init>(Lcom/santander/app/RendaFixaResgateActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 339
    return-void
.end method

.method public static synthetic d(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->K:Landroid/widget/EditText;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 345
    const v0, 0x7f100d8d

    invoke-virtual {p0, v0}, Lcom/santander/app/RendaFixaResgateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    iput-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->C:Lcom/santander/app/widget/Carrossel;

    .line 346
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->D:Ljava/util/Vector;

    .line 348
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 350
    new-instance v1, Lfos;

    invoke-direct {v1}, Lfos;-><init>()V

    iput-object v1, p0, Lcom/santander/app/RendaFixaResgateActivity;->E:Lfos;

    .line 352
    iget-object v1, p0, Lcom/santander/app/RendaFixaResgateActivity;->E:Lfos;

    invoke-virtual {p0}, Lcom/santander/app/RendaFixaResgateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfos;->a(Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lcom/santander/app/RendaFixaResgateActivity;->E:Lfos;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfos;->b(Ljava/lang/String;)V

    .line 355
    new-instance v1, Lfos;

    invoke-direct {v1}, Lfos;-><init>()V

    iput-object v1, p0, Lcom/santander/app/RendaFixaResgateActivity;->F:Lfos;

    .line 356
    iget-object v1, p0, Lcom/santander/app/RendaFixaResgateActivity;->F:Lfos;

    invoke-virtual {p0}, Lcom/santander/app/RendaFixaResgateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfos;->a(Ljava/lang/String;)V

    .line 357
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 358
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 359
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 360
    iget-object v2, p0, Lcom/santander/app/RendaFixaResgateActivity;->F:Lfos;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lfos;->b(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->F:Lfos;

    sget-object v1, Lfot;->PICKER:Lfot;

    invoke-virtual {v0, v1}, Lfos;->a(Lfot;)V

    .line 363
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->D:Ljava/util/Vector;

    iget-object v1, p0, Lcom/santander/app/RendaFixaResgateActivity;->E:Lfos;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->D:Ljava/util/Vector;

    iget-object v1, p0, Lcom/santander/app/RendaFixaResgateActivity;->F:Lfos;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 366
    new-instance v0, Lfou;

    iget-object v1, p0, Lcom/santander/app/RendaFixaResgateActivity;->D:Ljava/util/Vector;

    invoke-direct {v0, p0, v1, p0}, Lfou;-><init>(Landroid/content/Context;Ljava/util/Vector;Landroid/app/Activity;)V

    .line 369
    iget-object v1, p0, Lcom/santander/app/RendaFixaResgateActivity;->C:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v1, v0}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 371
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->C:Lcom/santander/app/widget/Carrossel;

    new-instance v1, Lfmq;

    invoke-direct {v1, p0}, Lfmq;-><init>(Lcom/santander/app/RendaFixaResgateActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setListener(Lnez;)V

    .line 382
    return-void
.end method

.method private d(I)V
    .locals 6

    .prologue
    .line 201
    const v0, 0x7f100dee

    invoke-virtual {p0, v0}, Lcom/santander/app/RendaFixaResgateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    iput-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->z:Lcom/santander/app/widget/Carrossel;

    .line 203
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->x:Lftn;

    invoke-virtual {v0}, Lftn;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftk;

    iput-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->g:Lftk;

    .line 205
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->x:Lftn;

    invoke-virtual {v0}, Lftn;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftk;

    invoke-virtual {v0}, Lftk;->d()Lftf;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->y:Lftf;

    .line 207
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 209
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->y:Lftf;

    invoke-virtual {v0}, Lftf;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->y:Lftf;

    invoke-virtual {v0}, Lftf;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfte;

    .line 212
    new-instance v3, Lfoy;

    invoke-direct {v3}, Lfoy;-><init>()V

    .line 214
    invoke-virtual {v0}, Lfte;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lfoy;->a(Ljava/lang/String;)V

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Valor l\u00edquido: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lfte;->f()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lfoy;->b(Ljava/lang/String;)V

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Taxa - CDI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lfte;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnaj;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lfoy;->c(Ljava/lang/String;)V

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data de vencimento: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 218
    invoke-virtual {v0}, Lfte;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-virtual {v3, v0}, Lfoy;->d(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 223
    :cond_0
    new-instance v0, Lfoz;

    invoke-direct {v0, p0, v2}, Lfoz;-><init>(Landroid/content/Context;Ljava/util/Vector;)V

    .line 225
    iget-object v1, p0, Lcom/santander/app/RendaFixaResgateActivity;->z:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v1, v0}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 227
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->z:Lcom/santander/app/widget/Carrossel;

    new-instance v1, Lfml;

    invoke-direct {v1, p0}, Lfml;-><init>(Lcom/santander/app/RendaFixaResgateActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setListener(Lnez;)V

    .line 241
    return-void
.end method

.method public static synthetic e(Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/widget/Indicator;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->H:Lcom/santander/app/widget/Indicator;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 388
    const v0, 0x7f100d8f

    invoke-virtual {p0, v0}, Lcom/santander/app/RendaFixaResgateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    iput-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->B:Lcom/santander/app/widget/Carrossel;

    .line 389
    new-instance v0, Lfoo;

    iget-object v1, p0, Lcom/santander/app/RendaFixaResgateActivity;->f:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lfoo;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 391
    iget-object v1, p0, Lcom/santander/app/RendaFixaResgateActivity;->B:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v1, v0}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 393
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->B:Lcom/santander/app/widget/Carrossel;

    new-instance v1, Lfmr;

    invoke-direct {v1, p0}, Lfmr;-><init>(Lcom/santander/app/RendaFixaResgateActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setListener(Lnez;)V

    .line 404
    return-void
.end method

.method public static synthetic f(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->J:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic g(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->I:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic h(Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/RendaFixaResgateActivity;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->b:Lcom/santander/app/RendaFixaResgateActivity;

    return-object v0
.end method

.method public static synthetic i(Lcom/santander/app/RendaFixaResgateActivity;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->d:I

    return v0
.end method

.method public static synthetic j(Lcom/santander/app/RendaFixaResgateActivity;)I
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/santander/app/RendaFixaResgateActivity;->d:I

    return v0
.end method

.method public static synthetic k(Lcom/santander/app/RendaFixaResgateActivity;)Lftn;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->x:Lftn;

    return-object v0
.end method

.method public static synthetic l(Lcom/santander/app/RendaFixaResgateActivity;)Lftk;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->g:Lftk;

    return-object v0
.end method

.method public static synthetic m(Lcom/santander/app/RendaFixaResgateActivity;)I
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->d:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/santander/app/RendaFixaResgateActivity;->d:I

    return v0
.end method

.method public static synthetic n(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->c:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic o(Lcom/santander/app/RendaFixaResgateActivity;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/santander/app/RendaFixaResgateActivity;->b()V

    return-void
.end method

.method public static synthetic p(Lcom/santander/app/RendaFixaResgateActivity;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/santander/app/RendaFixaResgateActivity;->c()V

    return-void
.end method

.method public static synthetic q(Lcom/santander/app/RendaFixaResgateActivity;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->e:Z

    return v0
.end method

.method public static synthetic r(Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/widget/Carrossel;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->C:Lcom/santander/app/widget/Carrossel;

    return-object v0
.end method

.method public static synthetic s(Lcom/santander/app/RendaFixaResgateActivity;)Lfos;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->F:Lfos;

    return-object v0
.end method

.method public static synthetic t(Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/widget/Carrossel;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->A:Lcom/santander/app/widget/Carrossel;

    return-object v0
.end method

.method public static synthetic u(Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/widget/Carrossel;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->z:Lcom/santander/app/widget/Carrossel;

    return-object v0
.end method

.method public static synthetic v(Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/widget/Carrossel;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->B:Lcom/santander/app/widget/Carrossel;

    return-object v0
.end method

.method public static synthetic w(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->M:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public static synthetic x(Lcom/santander/app/RendaFixaResgateActivity;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/santander/app/RendaFixaResgateActivity;->a()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 445
    return-void
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 449
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0}, Lhau;->j()Lfwb;

    move-result-object v0

    invoke-virtual {v0}, Lfwb;->h()Lftn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0}, Lhau;->j()Lfwb;

    move-result-object v0

    invoke-virtual {v0}, Lfwb;->h()Lftn;

    move-result-object v0

    invoke-virtual {v0}, Lftn;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftk;

    iput-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->g:Lftk;

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->g:Lftk;

    if-eqz v0, :cond_1

    .line 453
    const-string v0, "Investimentos_RendaFixa_Aplicar_Acao"

    iget-object v1, p0, Lcom/santander/app/RendaFixaResgateActivity;->g:Lftk;

    invoke-virtual {v1}, Lftk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :cond_1
    invoke-direct {p0, p1}, Lcom/santander/app/RendaFixaResgateActivity;->d(I)V

    .line 458
    iget-object v1, p0, Lcom/santander/app/RendaFixaResgateActivity;->L:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->y:Lftf;

    invoke-virtual {v0}, Lftf;->f()Ljava/util/Vector;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfte;

    invoke-virtual {v0}, Lfte;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/santander/app/RendaFixaResgateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 112
    iput-object p0, p0, Lcom/santander/app/RendaFixaResgateActivity;->b:Lcom/santander/app/RendaFixaResgateActivity;

    .line 114
    const-string v0, "listaProdutos"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lftn;

    iput-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->x:Lftn;

    .line 116
    const-string v0, "itemListarProductosResgateRendaFixaBean"

    .line 117
    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lftk;

    iput-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->g:Lftk;

    .line 119
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->x:Lftn;

    invoke-virtual {v0}, Lftn;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 120
    const v0, 0x7f100815

    invoke-virtual {p0, v0}, Lcom/santander/app/RendaFixaResgateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->M:Landroid/widget/ProgressBar;

    .line 122
    new-instance v0, Lfmt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfmt;-><init>(Lcom/santander/app/RendaFixaResgateActivity;Lfml;)V

    .line 123
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfmt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/RendaFixaResgateActivity;->a()V

    goto :goto_0
.end method

.method public openConfirmar(Landroid/view/View;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const v3, 0x7f09039c

    .line 414
    const-string v0, "Investimentos_RendaFixa_Resgate_Acao"

    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->G:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 418
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->L:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R$ "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 419
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/RendaFixaResgateActivity;->b:Lcom/santander/app/RendaFixaResgateActivity;

    const v2, 0x7f09039c

    .line 420
    invoke-virtual {p0, v2}, Lcom/santander/app/RendaFixaResgateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 419
    invoke-virtual {v0, v1, v2}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 439
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/santander/app/RendaFixaResgateActivity;->K:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 425
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/RendaFixaResgateActivity;->b:Lcom/santander/app/RendaFixaResgateActivity;

    const v2, 0x7f09039c

    .line 426
    invoke-virtual {p0, v2}, Lcom/santander/app/RendaFixaResgateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 425
    invoke-virtual {v0, v1, v2}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 430
    :catch_0
    move-exception v0

    .line 431
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/RendaFixaResgateActivity;->b:Lcom/santander/app/RendaFixaResgateActivity;

    .line 432
    invoke-virtual {p0, v3}, Lcom/santander/app/RendaFixaResgateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 431
    invoke-virtual {v0, v1, v2}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :cond_1
    new-instance v0, Lfmu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfmu;-><init>(Lcom/santander/app/RendaFixaResgateActivity;Lfml;)V

    .line 438
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfmu;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
