.class public Lijf;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lnez;


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Landroid/widget/TextView;

.field private C:Lmip;

.field public a:Landroid/app/Dialog;

.field public b:Landroid/view/View;

.field public c:Landroid/content/Context;

.field public d:I

.field private final e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfpv;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/santander/app/widget/Indicator;

.field private h:Landroid/support/v4/view/ViewPager;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Lgon;

.field private l:Lcom/santander/app/widget/Indicator;

.field private m:Landroid/support/v4/view/ViewPager;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Lcom/santander/app/widget/Carrossel;

.field private q:Landroid/app/Activity;

.field private r:Lijm;

.field private s:Lfud;

.field private t:Lfos;

.field private u:Lfos;

.field private v:Lcom/santander/app/widget/Carrossel;

.field private w:Z

.field private x:Lghu;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lghu;",
            ">;"
        }
    .end annotation
.end field

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 66
    const-string v0, "FazerPagamentoCartorioFragment"

    iput-object v0, p0, Lijf;->e:Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lijf;->a:Landroid/app/Dialog;

    .line 94
    iput v1, p0, Lijf;->d:I

    .line 95
    iput v1, p0, Lijf;->z:I

    .line 99
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lijf;->C:Lmip;

    return-void
.end method

.method static synthetic a(Lijf;Lfud;)Lfud;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lijf;->s:Lfud;

    return-object p1
.end method

.method static synthetic a(Lijf;Lghu;)Lghu;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lijf;->x:Lghu;

    return-object p1
.end method

.method static synthetic a(Lijf;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lijf;->y:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lijf;)Lmip;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lijf;->C:Lmip;

    return-object v0
.end method

.method static synthetic b(Lijf;)Ljava/util/List;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lijf;->y:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lijf;)Lfud;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lijf;->s:Lfud;

    return-object v0
.end method

.method private c()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 186
    iget-object v0, p0, Lijf;->C:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lijf;->C:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->A()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic d(Lijf;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lijf;->q:Landroid/app/Activity;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lijf;->C:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->t()Lgke;

    move-result-object v0

    new-instance v1, Lijh;

    invoke-direct {v1, p0}, Lijh;-><init>(Lijf;)V

    invoke-interface {v0, v1}, Lgke;->a(Lfoh;)V

    .line 197
    return-void
.end method

.method static synthetic e(Lijf;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lijf;->h:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 202
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 203
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lijf;->C:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 204
    iget-object v0, p0, Lijf;->C:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    .line 205
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lijf;->b:Landroid/view/View;

    const v1, 0x7f1008b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    iput-object v0, p0, Lijf;->v:Lcom/santander/app/widget/Carrossel;

    .line 210
    new-instance v0, Lfoo;

    iget-object v1, p0, Lijf;->c:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lfoo;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 212
    iget-object v1, p0, Lijf;->v:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v1, v0}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 214
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 215
    iget-object v0, p0, Lijf;->b:Landroid/view/View;

    const v1, 0x7f10103f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 216
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 218
    :cond_1
    return-void
.end method

.method static synthetic f(Lijf;)Ljava/util/List;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lijf;->f:Ljava/util/List;

    return-object v0
.end method

.method private f()V
    .locals 5

    .prologue
    .line 221
    iget-object v0, p0, Lijf;->b:Landroid/view/View;

    const v1, 0x7f10103d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    iput-object v0, p0, Lijf;->p:Lcom/santander/app/widget/Carrossel;

    .line 222
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 224
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 226
    new-instance v2, Lfos;

    invoke-direct {v2}, Lfos;-><init>()V

    iput-object v2, p0, Lijf;->t:Lfos;

    .line 227
    iget-object v2, p0, Lijf;->t:Lfos;

    const-string v3, "PAGAR HOJE"

    invoke-virtual {v2, v3}, Lfos;->a(Ljava/lang/String;)V

    .line 228
    iget-object v2, p0, Lijf;->t:Lfos;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfos;->b(Ljava/lang/String;)V

    .line 230
    new-instance v2, Lfos;

    invoke-direct {v2}, Lfos;-><init>()V

    iput-object v2, p0, Lijf;->u:Lfos;

    .line 231
    iget-object v2, p0, Lijf;->u:Lfos;

    const-string v3, "AGENDAR PARA"

    invoke-virtual {v2, v3}, Lfos;->a(Ljava/lang/String;)V

    .line 232
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 233
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 234
    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 235
    iget-object v3, p0, Lijf;->u:Lfos;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lfos;->b(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lijf;->u:Lfos;

    sget-object v2, Lfot;->PICKER:Lfot;

    invoke-virtual {v1, v2}, Lfos;->a(Lfot;)V

    .line 238
    iget-object v1, p0, Lijf;->t:Lfos;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v1, p0, Lijf;->u:Lfos;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 241
    iget-boolean v1, p0, Lijf;->w:Z

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lijf;->u:Lfos;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 243
    const/4 v1, 0x0

    iput-boolean v1, p0, Lijf;->w:Z

    .line 246
    :cond_0
    new-instance v1, Lfou;

    iget-object v2, p0, Lijf;->c:Landroid/content/Context;

    invoke-virtual {p0}, Lijf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lfou;-><init>(Landroid/content/Context;Ljava/util/Vector;Landroid/app/Activity;)V

    .line 248
    iget-object v0, p0, Lijf;->p:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 250
    return-void
.end method

.method static synthetic g(Lijf;)Lcom/santander/app/widget/Carrossel;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lijf;->v:Lcom/santander/app/widget/Carrossel;

    return-object v0
.end method

.method private g()V
    .locals 7

    .prologue
    .line 271
    iget-object v0, p0, Lijf;->b:Landroid/view/View;

    const v1, 0x7f10102c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lijf;->m:Landroid/support/v4/view/ViewPager;

    .line 272
    iget-object v0, p0, Lijf;->m:Landroid/support/v4/view/ViewPager;

    new-instance v1, Liji;

    invoke-direct {v1, p0}, Liji;-><init>(Lijf;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 289
    iget-object v0, p0, Lijf;->b:Landroid/view/View;

    const v1, 0x7f10102d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Indicator;

    iput-object v0, p0, Lijf;->l:Lcom/santander/app/widget/Indicator;

    .line 290
    iget-object v0, p0, Lijf;->b:Landroid/view/View;

    const v1, 0x7f10102a    # 1.9149276E38f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lijf;->o:Landroid/widget/ImageView;

    .line 291
    iget-object v0, p0, Lijf;->b:Landroid/view/View;

    const v1, 0x7f10102b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lijf;->n:Landroid/widget/ImageView;

    .line 293
    iget-object v0, p0, Lijf;->o:Landroid/widget/ImageView;

    new-instance v1, Lijj;

    invoke-direct {v1, p0}, Lijj;-><init>(Lijf;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v0, p0, Lijf;->n:Landroid/widget/ImageView;

    new-instance v1, Lijk;

    invoke-direct {v1, p0}, Lijk;-><init>(Lijf;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    new-instance v0, Lgon;

    invoke-virtual {p0}, Lijf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lijf;->m:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lijf;->l:Lcom/santander/app/widget/Indicator;

    iget-object v4, p0, Lijf;->o:Landroid/widget/ImageView;

    iget-object v5, p0, Lijf;->n:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lgon;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lcom/santander/app/widget/Indicator;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    iput-object v0, p0, Lijf;->k:Lgon;

    .line 318
    iget-object v0, p0, Lijf;->k:Lgon;

    iget v1, p0, Lijf;->z:I

    invoke-virtual {v0, v1}, Lgon;->a(I)V

    .line 319
    iget-object v0, p0, Lijf;->k:Lgon;

    invoke-virtual {v0, p0}, Lgon;->a(Lnez;)V

    .line 321
    iget-object v0, p0, Lijf;->C:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lijf;->y:Ljava/util/List;

    .line 323
    iget-object v0, p0, Lijf;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 324
    iget-object v0, p0, Lijf;->y:Ljava/util/List;

    iget-object v1, p0, Lijf;->k:Lgon;

    invoke-virtual {v1}, Lgon;->a()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    iput-object v0, p0, Lijf;->x:Lghu;

    .line 326
    :cond_0
    return-void
.end method

.method static synthetic h(Lijf;)Lgon;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lijf;->k:Lgon;

    return-object v0
.end method

.method private h()V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Lijf;->e()V

    .line 332
    invoke-direct {p0}, Lijf;->f()V

    .line 333
    invoke-direct {p0}, Lijf;->j()V

    .line 334
    return-void
.end method

.method private i()V
    .locals 5

    .prologue
    .line 337
    iget-object v0, p0, Lijf;->b:Landroid/view/View;

    const v1, 0x7f101039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lijf;->h:Landroid/support/v4/view/ViewPager;

    .line 338
    iget-object v0, p0, Lijf;->h:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lijl;

    invoke-direct {v1, p0}, Lijl;-><init>(Lijf;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lijf;->f:Ljava/util/List;

    .line 359
    :try_start_0
    iget-object v0, p0, Lijf;->s:Lfud;

    invoke-virtual {v0}, Lfud;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^\\d]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_0
    :try_start_1
    iget-object v0, p0, Lijf;->s:Lfud;

    invoke-virtual {v0}, Lfud;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^\\d]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 371
    :goto_1
    :try_start_2
    iget-object v0, p0, Lijf;->s:Lfud;

    invoke-virtual {v0}, Lfud;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^\\d]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 376
    :goto_2
    new-instance v0, Lfpv;

    invoke-direct {v0}, Lfpv;-><init>()V

    .line 377
    const-string v1, "PAGAR VALOR TOTAL"

    invoke-virtual {v0, v1}, Lfpv;->a(Ljava/lang/String;)V

    .line 378
    iget-object v1, p0, Lijf;->s:Lfud;

    invoke-virtual {v1}, Lfud;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfpv;->b(Ljava/lang/String;)V

    .line 379
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfpv;->a(I)V

    .line 381
    iget-object v1, p0, Lijf;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    new-instance v0, Lfpv;

    invoke-direct {v0}, Lfpv;-><init>()V

    .line 384
    const-string v1, "PAGAR VALOR ATUALIZADO"

    invoke-virtual {v0, v1}, Lfpv;->a(Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lijf;->s:Lfud;

    invoke-virtual {v1}, Lfud;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "R$"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfpv;->b(Ljava/lang/String;)V

    .line 386
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfpv;->a(I)V

    .line 387
    iget-object v1, p0, Lijf;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    new-instance v0, Lfpv;

    invoke-direct {v0}, Lfpv;-><init>()V

    .line 390
    const-string v1, "PAGAR M\u00cdNIMO"

    invoke-virtual {v0, v1}, Lfpv;->a(Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lijf;->s:Lfud;

    invoke-virtual {v1}, Lfud;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfpv;->b(Ljava/lang/String;)V

    .line 392
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lfpv;->a(I)V

    .line 394
    iget-object v1, p0, Lijf;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    new-instance v0, Lfpv;

    invoke-direct {v0}, Lfpv;-><init>()V

    .line 397
    const-string v1, "PAGAR OUTRO VALOR"

    invoke-virtual {v0, v1}, Lfpv;->a(Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lijf;->s:Lfud;

    invoke-virtual {v1}, Lfud;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "R$"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfpv;->b(Ljava/lang/String;)V

    .line 399
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lfpv;->a(I)V

    .line 401
    iget-object v1, p0, Lijf;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    new-instance v1, Lfpw;

    iget-object v0, p0, Lijf;->c:Landroid/content/Context;

    iget-object v2, p0, Lijf;->f:Ljava/util/List;

    invoke-direct {v1, v0, v2}, Lfpw;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 404
    iget-object v0, p0, Lijf;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 406
    iget-object v0, p0, Lijf;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 407
    iget-object v0, p0, Lijf;->b:Landroid/view/View;

    const v2, 0x7f10103a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Indicator;

    iput-object v0, p0, Lijf;->g:Lcom/santander/app/widget/Indicator;

    .line 408
    iget-object v0, p0, Lijf;->b:Landroid/view/View;

    const v2, 0x7f101037

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lijf;->j:Landroid/widget/ImageView;

    .line 409
    iget-object v0, p0, Lijf;->b:Landroid/view/View;

    const v2, 0x7f101038

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lijf;->i:Landroid/widget/ImageView;

    .line 411
    iget-object v0, p0, Lijf;->g:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v1}, Lfpw;->getCount()I

    move-result v1

    iget-object v2, p0, Lijf;->i:Landroid/widget/ImageView;

    iget-object v3, p0, Lijf;->j:Landroid/widget/ImageView;

    iget-object v4, p0, Lijf;->h:Landroid/support/v4/view/ViewPager;

    invoke-static {v0, v1, v2, v3, v4}, Lgpm;->a(Lcom/santander/app/widget/Indicator;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/support/v4/view/ViewPager;)V

    .line 412
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    const-string v1, "PagamentoFacturaCartoesActivity"

    const-string v2, "onPageSelected - Parse long"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 366
    :catch_1
    move-exception v0

    .line 367
    const-string v1, "PagamentoFacturaCartoesActivity"

    const-string v2, "onPageSelected - Parse long"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 372
    :catch_2
    move-exception v0

    .line 373
    const-string v1, "PagamentoFacturaCartoesActivity"

    const-string v2, "onPageSelected - Parse long"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2
.end method

.method static synthetic i(Lijf;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lijf;->g()V

    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lijf;->b:Landroid/view/View;

    const v1, 0x7f10102e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 452
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v0, p0, Lijf;->b:Landroid/view/View;

    const v1, 0x7f10102f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 454
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v0, p0, Lijf;->b:Landroid/view/View;

    const v1, 0x7f101032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 456
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v0, p0, Lijf;->b:Landroid/view/View;

    const v1, 0x7f101039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lijf;->h:Landroid/support/v4/view/ViewPager;

    .line 459
    iget-object v0, p0, Lijf;->h:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 461
    new-instance v0, Lijm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lijm;-><init>(Lijf;Lijg;)V

    iput-object v0, p0, Lijf;->r:Lijm;

    .line 462
    iget-object v0, p0, Lijf;->r:Lijm;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lijm;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 463
    return-void
.end method

.method static synthetic j(Lijf;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lijf;->j()V

    return-void
.end method

.method static synthetic k(Lijf;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lijf;->m:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private k()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 467
    iget-object v0, p0, Lijf;->s:Lfud;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lijf;->s:Lfud;

    invoke-virtual {v0}, Lfud;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 468
    iget-object v0, p0, Lijf;->b:Landroid/view/View;

    const v1, 0x7f10102e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 469
    iget-object v1, p0, Lijf;->s:Lfud;

    invoke-virtual {v1}, Lfud;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v0, p0, Lijf;->b:Landroid/view/View;

    const v1, 0x7f10102f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 472
    iget-object v1, p0, Lijf;->s:Lfud;

    invoke-virtual {v1}, Lfud;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v1, p0, Lijf;->s:Lfud;

    invoke-virtual {v1}, Lfud;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lijf;->s:Lfud;

    invoke-virtual {v1}, Lfud;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    invoke-virtual {p0}, Lijf;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 477
    :cond_0
    iget-object v0, p0, Lijf;->b:Landroid/view/View;

    const v1, 0x7f101032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 478
    iget-object v1, p0, Lijf;->s:Lfud;

    invoke-virtual {v1}, Lfud;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v0, p0, Lijf;->b:Landroid/view/View;

    const v1, 0x7f101030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 484
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lijf;->b:Landroid/view/View;

    const v1, 0x7f101031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 487
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 488
    iget-object v1, p0, Lijf;->s:Lfud;

    invoke-virtual {v1}, Lfud;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v0, p0, Lijf;->b:Landroid/view/View;

    const v1, 0x7f101039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lijf;->h:Landroid/support/v4/view/ViewPager;

    .line 492
    iget-object v0, p0, Lijf;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 494
    invoke-direct {p0}, Lijf;->i()V

    .line 495
    invoke-virtual {p0, v3}, Lijf;->onPageSelected(I)V

    .line 497
    iget-object v0, p0, Lijf;->b:Landroid/view/View;

    const v1, 0x7f10103f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 498
    iget-object v1, p0, Lijf;->s:Lfud;

    invoke-virtual {v1}, Lfud;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lijf;->s:Lfud;

    invoke-virtual {v1}, Lfud;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lijf;->s:Lfud;

    invoke-virtual {v1}, Lfud;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "N/A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 499
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 505
    :cond_2
    :goto_0
    return-void

    .line 501
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic l(Lijf;)Lghu;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lijf;->x:Lghu;

    return-object v0
.end method

.method static synthetic m(Lijf;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lijf;->A:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic n(Lijf;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lijf;->B:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic o(Lijf;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lijf;->k()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lijf;->p:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lijf;->t:Lfos;

    invoke-virtual {v0}, Lfos;->b()Ljava/lang/String;

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    .line 258
    :cond_0
    iget-object v0, p0, Lijf;->u:Lfos;

    invoke-virtual {v0}, Lfos;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 566
    return-void
.end method

.method public b()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lijf;->p:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 265
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 267
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 445
    invoke-direct {p0}, Lijf;->j()V

    .line 446
    invoke-direct {p0}, Lijf;->e()V

    .line 447
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    const v0, 0x7f040336

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lijf;->b:Landroid/view/View;

    .line 105
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lijf;->c:Landroid/content/Context;

    .line 107
    iget-object v0, p0, Lijf;->b:Landroid/view/View;

    const v1, 0x7f1009f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lijf;->A:Landroid/widget/LinearLayout;

    .line 108
    iget-object v0, p0, Lijf;->b:Landroid/view/View;

    const v1, 0x7f10078c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lijf;->B:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lijf;->b:Landroid/view/View;

    const v1, 0x7f10103f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 111
    new-instance v1, Lijg;

    invoke-direct {v1, p0}, Lijg;-><init>(Lijf;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0, v2}, Lhau;->a(Z)V

    .line 172
    invoke-direct {p0}, Lijf;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0}, Lijf;->d()V

    .line 179
    :goto_0
    invoke-direct {p0}, Lijf;->e()V

    .line 180
    invoke-direct {p0}, Lijf;->f()V

    .line 182
    iget-object v0, p0, Lijf;->b:Landroid/view/View;

    return-object v0

    .line 175
    :cond_0
    invoke-direct {p0}, Lijf;->g()V

    .line 176
    invoke-direct {p0}, Lijf;->j()V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 418
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 424
    return-void
.end method

.method public onPageSelected(I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 429
    iget-object v0, p0, Lijf;->h:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lijf;->i:Landroid/widget/ImageView;

    iget-object v2, p0, Lijf;->j:Landroid/widget/ImageView;

    iget-object v3, p0, Lijf;->g:Lcom/santander/app/widget/Indicator;

    invoke-virtual {p0}, Lijf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    move v4, p1

    invoke-static/range {v0 .. v5}, Lgpm;->a(Landroid/support/v4/view/ViewPager;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/santander/app/widget/Indicator;ILandroid/app/Activity;)V

    .line 430
    iget-object v0, p0, Lijf;->b:Landroid/view/View;

    const v1, 0x7f101050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 431
    if-eqz v0, :cond_0

    .line 432
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    :cond_0
    iget-object v0, p0, Lijf;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpv;

    invoke-virtual {v0}, Lfpv;->c()I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 436
    iput-boolean v6, p0, Lijf;->w:Z

    .line 439
    :cond_1
    invoke-direct {p0}, Lijf;->f()V

    .line 440
    return-void
.end method
