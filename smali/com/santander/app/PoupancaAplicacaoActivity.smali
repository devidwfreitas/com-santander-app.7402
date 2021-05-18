.class public Lcom/santander/app/PoupancaAplicacaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lnez;


# instance fields
.field private A:Lcom/santander/app/PoupancaAplicacaoActivity;

.field private B:Landroid/widget/ProgressBar;

.field private C:Ljava/lang/String;

.field private D:Z

.field private E:Ljava/lang/String;

.field private F:Lfkk;

.field private G:Lfki;

.field private H:Lfkj;

.field private I:Lgyd;

.field private J:I

.field private final a:Ljava/lang/String;

.field private b:Landroid/widget/EditText;

.field private c:Lcom/santander/app/widget/Carrossel;

.field private d:Lfos;

.field private e:Lfos;

.field private f:Lfos;

.field private g:Lcom/santander/app/widget/Carrossel;

.field private w:Lcom/santander/app/widget/Carrossel;

.field private x:Lcom/santander/app/widget/Indicator;

.field private y:Lftc;

.field private z:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 58
    const-string v0, "PoupancaAplicacaoActivity"

    iput-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->a:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->J:I

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/PoupancaAplicacaoActivity;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->J:I

    return v0
.end method

.method public static synthetic a(Lcom/santander/app/PoupancaAplicacaoActivity;I)I
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->J:I

    return p1
.end method

.method public static synthetic a(Lcom/santander/app/PoupancaAplicacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->z:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/PoupancaAplicacaoActivity;Lcom/santander/app/widget/Carrossel;)Lcom/santander/app/widget/Carrossel;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->g:Lcom/santander/app/widget/Carrossel;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/PoupancaAplicacaoActivity;Lftc;)Lftc;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->y:Lftc;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/PoupancaAplicacaoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->C:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 5

    .prologue
    .line 150
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 152
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 154
    new-instance v2, Lfos;

    invoke-direct {v2}, Lfos;-><init>()V

    iput-object v2, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->d:Lfos;

    .line 156
    iget-object v2, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->d:Lfos;

    const-string v3, "APLICAR HOJE"

    invoke-virtual {v2, v3}, Lfos;->a(Ljava/lang/String;)V

    .line 157
    iget-object v2, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->d:Lfos;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfos;->b(Ljava/lang/String;)V

    .line 159
    new-instance v2, Lfos;

    invoke-direct {v2}, Lfos;-><init>()V

    iput-object v2, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->e:Lfos;

    .line 160
    iget-object v2, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->e:Lfos;

    const-string v3, "AGENDAR"

    invoke-virtual {v2, v3}, Lfos;->a(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 162
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 163
    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 164
    iget-object v3, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->e:Lfos;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lfos;->b(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->e:Lfos;

    sget-object v2, Lfot;->PICKER:Lfot;

    invoke-virtual {v1, v2}, Lfos;->a(Lfot;)V

    .line 167
    new-instance v1, Lfos;

    invoke-direct {v1}, Lfos;-><init>()V

    iput-object v1, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->f:Lfos;

    .line 169
    iget-object v1, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->f:Lfos;

    const-string v2, "Dep\u00f3sito Programado em Poupan\u00e7a"

    invoke-virtual {v1, v2}, Lfos;->a(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->f:Lfos;

    sget-object v2, Lfot;->DPP:Lfot;

    invoke-virtual {v1, v2}, Lfos;->a(Lfot;)V

    .line 173
    iget-object v1, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->d:Lfos;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v1, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->e:Lfos;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v1, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->f:Lfos;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v1, Lfou;

    invoke-direct {v1, p0, v0, p0}, Lfou;-><init>(Landroid/content/Context;Ljava/util/Vector;Landroid/app/Activity;)V

    .line 178
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->c:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->J:I

    .line 180
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->c:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->b()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lfkg;

    invoke-direct {v2, p0, v1}, Lfkg;-><init>(Lcom/santander/app/PoupancaAplicacaoActivity;Lfou;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 202
    return-void
.end method

.method private a(Landroid/widget/EditText;)V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lguj;

    invoke-direct {v0}, Lguj;-><init>()V

    .line 139
    invoke-virtual {v0, p1}, Lguj;->a(Landroid/widget/EditText;)V

    .line 140
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 141
    new-instance v0, Lfkf;

    invoke-direct {v0, p0, p1}, Lfkf;-><init>(Lcom/santander/app/PoupancaAplicacaoActivity;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 269
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    .line 270
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 271
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    .line 272
    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 273
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 277
    :cond_1
    const v0, 0x7f101097

    invoke-virtual {p0, v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    iput-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->w:Lcom/santander/app/widget/Carrossel;

    .line 278
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->w:Lcom/santander/app/widget/Carrossel;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/santander/app/widget/Carrossel;->setVisibility(I)V

    .line 279
    new-instance v0, Lfoo;

    invoke-direct {v0, p0, v1}, Lfoo;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 281
    iget-object v1, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->w:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v1, v0}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 283
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/PoupancaAplicacaoActivity;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->D:Z

    return p1
.end method

.method public static synthetic b(Lcom/santander/app/PoupancaAplicacaoActivity;)Lcom/santander/app/widget/Carrossel;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->c:Lcom/santander/app/widget/Carrossel;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/PoupancaAplicacaoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->E:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 205
    const v0, 0x7f100814

    invoke-virtual {p0, v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    iput-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->g:Lcom/santander/app/widget/Carrossel;

    .line 206
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->g:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0, v2}, Lcom/santander/app/widget/Carrossel;->setVisibility(I)V

    .line 207
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 208
    const v0, 0x7f100817

    invoke-virtual {p0, v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Indicator;

    iput-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->x:Lcom/santander/app/widget/Indicator;

    .line 210
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->y:Lftc;

    invoke-virtual {v0}, Lftc;->c()Ljava/util/Vector;

    move-result-object v4

    move v1, v2

    .line 212
    :goto_0
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 213
    new-instance v5, Lfpj;

    invoke-direct {v5}, Lfpj;-><init>()V

    .line 214
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->y:Lftc;

    invoke-virtual {v0}, Lftc;->c()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftl;

    invoke-virtual {v5, v0}, Lfpj;->a(Lftl;)V

    .line 215
    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 219
    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftl;

    invoke-virtual {v0}, Lftl;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftl;

    invoke-virtual {v0}, Lftl;->m()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :goto_1
    new-instance v0, Lfpj;

    invoke-direct {v0}, Lfpj;-><init>()V

    .line 225
    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->x:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Indicator;->setSize(I)V

    .line 228
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->x:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v0, v2}, Lcom/santander/app/widget/Indicator;->setSelected(I)V

    .line 230
    new-instance v0, Lfpy;

    invoke-direct {v0, p0, v3}, Lfpy;-><init>(Landroid/content/Context;Ljava/util/Vector;)V

    .line 231
    iget-object v1, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->g:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v1, v0}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 232
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->g:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0, p0}, Lcom/santander/app/widget/Carrossel;->setListener(Lnez;)V

    .line 234
    invoke-direct {p0}, Lcom/santander/app/PoupancaAplicacaoActivity;->a()V

    .line 236
    invoke-direct {p0}, Lcom/santander/app/PoupancaAplicacaoActivity;->d()V

    .line 238
    return-void

    .line 221
    :cond_1
    invoke-direct {p0}, Lcom/santander/app/PoupancaAplicacaoActivity;->c()V

    goto :goto_1
.end method

.method public static synthetic c(Lcom/santander/app/PoupancaAplicacaoActivity;)Lfos;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->d:Lfos;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 241
    const v0, 0x7f101097

    invoke-virtual {p0, v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    iput-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->w:Lcom/santander/app/widget/Carrossel;

    .line 242
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->w:Lcom/santander/app/widget/Carrossel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v1

    .line 246
    const v0, 0x7f100817

    invoke-virtual {p0, v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Indicator;

    iput-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->x:Lcom/santander/app/widget/Indicator;

    .line 248
    new-instance v0, Lfoo;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lfoo;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 250
    iget-object v1, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->w:Lcom/santander/app/widget/Carrossel;

    new-instance v2, Lfkh;

    invoke-direct {v2, p0}, Lfkh;-><init>(Lcom/santander/app/PoupancaAplicacaoActivity;)V

    invoke-virtual {v1, v2}, Lcom/santander/app/widget/Carrossel;->setListener(Lnez;)V

    .line 263
    iget-object v1, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->w:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v1, v0}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 266
    return-void
.end method

.method public static synthetic d(Lcom/santander/app/PoupancaAplicacaoActivity;)Lfos;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->e:Lfos;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 601
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->I:Lgyd;

    invoke-virtual {v0}, Lgyd;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->I:Lgyd;

    invoke-virtual {v0}, Lgyd;->p()Lgye;

    move-result-object v0

    .line 603
    iget-object v1, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Lgye;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 604
    iget-object v1, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->g:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0}, Lgye;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/santander/app/widget/Carrossel;->setCurrentItem(I)V

    .line 605
    iget-object v1, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->w:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0}, Lgye;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/santander/app/widget/Carrossel;->setCurrentItem(I)V

    .line 606
    iget-object v1, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->c:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0}, Lgye;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/santander/app/widget/Carrossel;->setCurrentItem(I)V

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->I:Lgyd;

    invoke-virtual {v0}, Lgyd;->a()V

    .line 609
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->I:Lgyd;

    invoke-virtual {v0}, Lgyd;->o()V

    .line 610
    return-void
.end method

.method public static synthetic e(Lcom/santander/app/PoupancaAplicacaoActivity;)I
    .locals 2

    .prologue
    .line 56
    iget v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->J:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->J:I

    return v0
.end method

.method private e()V
    .locals 8

    .prologue
    .line 613
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->w:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v1

    .line 614
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->g:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v2

    .line 615
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->c:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v3

    .line 616
    iget-object v5, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->C:Ljava/lang/String;

    .line 617
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 619
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->I:Lgyd;

    invoke-virtual {v0}, Lgyd;->b()V

    .line 620
    iget-object v7, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->I:Lgyd;

    new-instance v0, Lgye;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lgye;-><init>(IIILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v7, v0}, Lgyd;->a(Lgye;)V

    .line 623
    return-void
.end method

.method public static synthetic f(Lcom/santander/app/PoupancaAplicacaoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->C:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic g(Lcom/santander/app/PoupancaAplicacaoActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic h(Lcom/santander/app/PoupancaAplicacaoActivity;)Lcom/santander/app/PoupancaAplicacaoActivity;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->A:Lcom/santander/app/PoupancaAplicacaoActivity;

    return-object v0
.end method

.method public static synthetic i(Lcom/santander/app/PoupancaAplicacaoActivity;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->D:Z

    return v0
.end method

.method public static synthetic j(Lcom/santander/app/PoupancaAplicacaoActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->z:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic k(Lcom/santander/app/PoupancaAplicacaoActivity;)Lcom/santander/app/widget/Carrossel;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->w:Lcom/santander/app/widget/Carrossel;

    return-object v0
.end method

.method public static synthetic l(Lcom/santander/app/PoupancaAplicacaoActivity;)Lcom/santander/app/widget/Carrossel;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->g:Lcom/santander/app/widget/Carrossel;

    return-object v0
.end method

.method public static synthetic m(Lcom/santander/app/PoupancaAplicacaoActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->B:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public static synthetic n(Lcom/santander/app/PoupancaAplicacaoActivity;)Lftc;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->y:Lftc;

    return-object v0
.end method

.method public static synthetic o(Lcom/santander/app/PoupancaAplicacaoActivity;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/santander/app/PoupancaAplicacaoActivity;->b()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 522
    return-void
.end method

.method public b(I)V
    .locals 4

    .prologue
    .line 527
    const-string v0, "Investimentos_Poupanca_Aplicar_Acao"

    const-string v1, "SelecionarContaDestino"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->x:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v0, p1}, Lcom/santander/app/widget/Indicator;->setSelected(I)V

    .line 530
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->x:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v0}, Lcom/santander/app/widget/Indicator;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_1

    .line 531
    const/4 v0, 0x0

    .line 532
    iget-object v1, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->y:Lftc;

    invoke-virtual {v1}, Lftc;->c()Ljava/util/Vector;

    move-result-object v1

    .line 533
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    iget-object v3, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->g:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v3}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 534
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->g:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftl;

    .line 536
    :cond_0
    invoke-virtual {v0}, Lftl;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lftl;->m()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :goto_0
    return-void

    .line 538
    :cond_1
    invoke-direct {p0}, Lcom/santander/app/PoupancaAplicacaoActivity;->c()V

    goto :goto_0
.end method

.method public goConfirmar(Landroid/view/View;)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 287
    .line 288
    const-string v0, ""

    .line 290
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->c:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v0

    if-nez v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->d:Lfos;

    invoke-virtual {v0}, Lfos;->b()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    move-object v4, v0

    .line 300
    :goto_0
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->y:Lftc;

    invoke-virtual {v0}, Lftc;->c()Ljava/util/Vector;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v6

    iget-object v7, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->g:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v7}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v7

    if-le v6, v7, :cond_6

    .line 302
    iget-object v6, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->g:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v6}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftl;

    .line 305
    :goto_1
    iget-object v6, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 306
    const-string v6, "0.00"

    .line 308
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 309
    invoke-static {v7}, Lnaj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move v7, v2

    .line 315
    :goto_2
    if-nez v7, :cond_1

    .line 316
    if-eqz v0, :cond_4

    .line 318
    iget-object v7, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->H:Lfkj;

    if-eqz v7, :cond_0

    .line 319
    iget-object v7, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->H:Lfkj;

    invoke-virtual {v7, v3}, Lfkj;->cancel(Z)Z

    .line 320
    :cond_0
    new-instance v3, Lfkj;

    invoke-direct {v3, p0, v5}, Lfkj;-><init>(Lcom/santander/app/PoupancaAplicacaoActivity;Lfkf;)V

    iput-object v3, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->H:Lfkj;

    .line 321
    iget-object v3, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->H:Lfkj;

    invoke-virtual {v3, v4, v1, v0, v6}, Lfkj;->a(Ljava/lang/String;ZLftl;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->H:Lfkj;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfkj;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 332
    :cond_1
    :goto_3
    return-void

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->e:Lfos;

    invoke-virtual {v0}, Lfos;->b()Ljava/lang/String;

    move-result-object v0

    move v1, v3

    move-object v4, v0

    .line 297
    goto :goto_0

    .line 311
    :cond_3
    iget-object v7, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->A:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-virtual {p0}, Lcom/santander/app/PoupancaAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0903b3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lmxn;->e(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move v7, v3

    .line 312
    goto :goto_2

    .line 325
    :cond_4
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->G:Lfki;

    if-eqz v0, :cond_5

    .line 326
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->G:Lfki;

    invoke-virtual {v0, v3}, Lfki;->cancel(Z)Z

    .line 327
    :cond_5
    new-instance v0, Lfki;

    invoke-direct {v0, p0, v5}, Lfki;-><init>(Lcom/santander/app/PoupancaAplicacaoActivity;Lfkf;)V

    iput-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->G:Lfki;

    .line 328
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->G:Lfki;

    invoke-virtual {v0, v4, v1, v6}, Lfki;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->G:Lfki;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfki;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3

    :cond_6
    move-object v0, v5

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 95
    iput-object p0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->A:Lcom/santander/app/PoupancaAplicacaoActivity;

    .line 98
    invoke-virtual {p0}, Lcom/santander/app/PoupancaAplicacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/santander/app/PoupancaAplicacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "consultarPosicaoConsolidadaPoupancaList"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftc;

    iput-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->y:Lftc;

    .line 105
    :goto_0
    const v0, 0x7f040349

    invoke-virtual {p0, v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->setContentView(I)V

    .line 106
    invoke-static {}, Lgyd;->n()Lgyd;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->I:Lgyd;

    .line 108
    invoke-virtual {p0}, Lcom/santander/app/PoupancaAplicacaoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 109
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 110
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 112
    const v1, 0x7f0900cc

    invoke-virtual {p0, v1}, Lcom/santander/app/PoupancaAplicacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 113
    const v0, 0x7f101098

    invoke-virtual {p0, v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    iput-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->c:Lcom/santander/app/widget/Carrossel;

    .line 115
    const v0, 0x7f100461

    invoke-virtual {p0, v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->b:Landroid/widget/EditText;

    .line 118
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->y:Lftc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->y:Lftc;

    invoke-virtual {v0}, Lftc;->c()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->y:Lftc;

    invoke-virtual {v0}, Lftc;->c()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 119
    const v0, 0x7f100815

    invoke-virtual {p0, v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->B:Landroid/widget/ProgressBar;

    .line 120
    new-instance v0, Lfkk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfkk;-><init>(Lcom/santander/app/PoupancaAplicacaoActivity;Lfkf;)V

    iput-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->F:Lfkk;

    .line 121
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->F:Lfkk;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfkk;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 123
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->b:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->a(Landroid/widget/EditText;)V

    .line 125
    invoke-direct {p0}, Lcom/santander/app/PoupancaAplicacaoActivity;->a()V

    .line 135
    :goto_1
    return-void

    .line 101
    :cond_0
    new-instance v0, Lftc;

    invoke-direct {v0}, Lftc;-><init>()V

    iput-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->y:Lftc;

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->b:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->a(Landroid/widget/EditText;)V

    .line 129
    invoke-direct {p0}, Lcom/santander/app/PoupancaAplicacaoActivity;->b()V

    goto :goto_1
.end method

.method public openConfirmar(Lfsy;Lftl;)V
    .locals 3

    .prologue
    .line 335
    const-string v0, "Investimentos_Poupanca_Aplicar_Acao"

    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-direct {p0}, Lcom/santander/app/PoupancaAplicacaoActivity;->e()V

    .line 338
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 339
    const-string v1, "itemPosicaoConsolidada"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 340
    const-string v1, "aplicaPoupanca"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 341
    const-string v1, "agendada"

    iget-boolean v2, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->D:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 342
    const-string v1, "fecha"

    iget-object v2, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const-string v1, "dataContabil"

    invoke-virtual {p1}, Lfsy;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string v1, "agencia"

    invoke-virtual {p2}, Lftl;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string v1, "conta"

    invoke-virtual {p2}, Lftl;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string v1, "valorM"

    iget-object v2, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->E:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    invoke-virtual {p0, v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 348
    return-void
.end method

.method public openConfirmar(Lfsy;Lfuu;)V
    .locals 3

    .prologue
    .line 351
    const-string v0, "Investimentos_Poupanca_Aplicar_Confirmacao_Acao"

    const-string v1, "Confirmar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-direct {p0}, Lcom/santander/app/PoupancaAplicacaoActivity;->e()V

    .line 354
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 355
    const-string v1, "aplicaPoupanca"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 356
    const-string v1, "agendada"

    iget-boolean v2, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->D:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 357
    const-string v1, "fecha"

    iget-object v2, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const-string v1, "dataContabil"

    invoke-virtual {p1}, Lfsy;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    const-string v1, "agencia"

    invoke-virtual {p2}, Lfuu;->getAgencia()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const-string v1, "conta"

    invoke-virtual {p2}, Lfuu;->getCuenta()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const-string v1, "valorM"

    iget-object v2, p0, Lcom/santander/app/PoupancaAplicacaoActivity;->E:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    invoke-virtual {p0, v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 363
    return-void
.end method
