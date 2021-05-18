.class public Lcom/santander/app/CadastramentoFacturaActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lnez;


# instance fields
.field private A:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lghu;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lghu;

.field private D:I

.field public a:Landroid/app/Dialog;

.field public b:Landroid/app/Dialog;

.field private final c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfpn;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/santander/app/widget/Indicator;

.field private f:Landroid/support/v4/view/ViewPager;

.field private g:Landroid/widget/ImageView;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/support/v4/view/ViewPager;

.field private y:Landroid/app/Activity;

.field private z:Lfgx;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 58
    const-string v0, "CadastramentoFacturaActivity"

    iput-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->c:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/santander/app/CadastramentoFacturaActivity;->a:Landroid/app/Dialog;

    iput-object v1, p0, Lcom/santander/app/CadastramentoFacturaActivity;->b:Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/CadastramentoFacturaActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->x:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/CadastramentoFacturaActivity;Lghu;)Lghu;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/santander/app/CadastramentoFacturaActivity;->C:Lghu;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 94
    const v0, 0x7f100139

    invoke-virtual {p0, v0}, Lcom/santander/app/CadastramentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    iput-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->A:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    .line 95
    const v0, 0x7f100537

    invoke-virtual {p0, v0}, Lcom/santander/app/CadastramentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 96
    new-instance v1, Lfgq;

    invoke-direct {v1, p0}, Lfgq;-><init>(Lcom/santander/app/CadastramentoFacturaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-direct {p0}, Lcom/santander/app/CadastramentoFacturaActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/santander/app/CadastramentoFacturaActivity;->c()V

    .line 118
    :goto_0
    iput-object p0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->y:Landroid/app/Activity;

    .line 119
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhau;->a(Z)V

    .line 120
    return-void

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/CadastramentoFacturaActivity;->d()V

    goto :goto_0
.end method

.method private a(Lghu;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x0

    .line 170
    if-nez p1, :cond_4

    .line 171
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    .line 173
    :goto_0
    invoke-virtual {v0}, Lghu;->m()Lfuf;

    move-result-object v3

    .line 174
    if-nez v3, :cond_0

    .line 271
    :goto_1
    return-void

    .line 177
    :cond_0
    const v0, 0x7f100532

    invoke-virtual {p0, v0}, Lcom/santander/app/CadastramentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->x:Landroid/support/v4/view/ViewPager;

    .line 178
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->x:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lfgt;

    invoke-direct {v1, p0}, Lfgt;-><init>(Lcom/santander/app/CadastramentoFacturaActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->d:Ljava/util/List;

    move v1, v2

    .line 195
    :goto_2
    invoke-virtual {v3}, Lfuf;->g()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 197
    new-instance v4, Lfpn;

    invoke-direct {v4}, Lfpn;-><init>()V

    .line 198
    invoke-virtual {v3}, Lfuf;->g()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfun;

    invoke-virtual {v0}, Lfun;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lfpn;->a(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v4, v1}, Lfpn;->a(I)V

    .line 200
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->d:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 203
    :cond_1
    new-instance v1, Lfpo;

    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->d:Ljava/util/List;

    invoke-direct {v1, p0, v0}, Lfpo;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 204
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->x:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 207
    const v0, 0x7f100535

    invoke-virtual {p0, v0}, Lcom/santander/app/CadastramentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Indicator;

    iput-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->e:Lcom/santander/app/widget/Indicator;

    .line 208
    const v0, 0x7f100533

    invoke-virtual {p0, v0}, Lcom/santander/app/CadastramentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->w:Landroid/widget/ImageView;

    .line 209
    const v0, 0x7f100534

    invoke-virtual {p0, v0}, Lcom/santander/app/CadastramentoFacturaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->g:Landroid/widget/ImageView;

    .line 211
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/CadastramentoFacturaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020063

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/CadastramentoFacturaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020067

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    invoke-virtual {v1}, Lfpo;->getCount()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_2

    .line 215
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/CadastramentoFacturaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020066

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->w:Landroid/widget/ImageView;

    new-instance v3, Lfgu;

    invoke-direct {v3, p0}, Lfgu;-><init>(Lcom/santander/app/CadastramentoFacturaActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->g:Landroid/widget/ImageView;

    new-instance v3, Lfgv;

    invoke-direct {v3, p0}, Lfgv;-><init>(Lcom/santander/app/CadastramentoFacturaActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->x:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lfgw;

    invoke-direct {v3, p0}, Lfgw;-><init>(Lcom/santander/app/CadastramentoFacturaActivity;)V

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 260
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->x:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_3

    .line 262
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 269
    :goto_3
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->e:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v1}, Lfpo;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/santander/app/CadastramentoFacturaActivity;->g:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/santander/app/CadastramentoFacturaActivity;->w:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/santander/app/CadastramentoFacturaActivity;->x:Landroid/support/v4/view/ViewPager;

    invoke-static {v0, v1, v2, v3, v4}, Lgpm;->a(Lcom/santander/app/widget/Indicator;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/support/v4/view/ViewPager;)V

    goto/16 :goto_1

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_4
    move-object v0, p1

    goto/16 :goto_0
.end method

.method public static synthetic b(Lcom/santander/app/CadastramentoFacturaActivity;)Lghu;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->C:Lghu;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/CadastramentoFacturaActivity;Lghu;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/santander/app/CadastramentoFacturaActivity;->a(Lghu;)V

    return-void
.end method

.method private b()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->a()Ljava/util/List;

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

.method public static synthetic c(Lcom/santander/app/CadastramentoFacturaActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->B:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 127
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->b:Landroid/app/Dialog;

    .line 128
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->t()Lgke;

    move-result-object v0

    new-instance v1, Lfgr;

    invoke-direct {v1, p0}, Lfgr;-><init>(Lcom/santander/app/CadastramentoFacturaActivity;)V

    invoke-interface {v0, v1}, Lgke;->a(Lfoh;)V

    .line 138
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->C:Lghu;

    .line 142
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->f()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->B:Ljava/util/List;

    .line 143
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->B:Ljava/util/List;

    invoke-static {v0}, Lgmy;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 144
    new-instance v1, Lamy;

    invoke-direct {v1, v0}, Lamy;-><init>(Ljava/util/List;)V

    .line 145
    iget-object v2, p0, Lcom/santander/app/CadastramentoFacturaActivity;->A:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-virtual {v2, v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setAdapter(Lamr;)V

    .line 147
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/santander/app/CadastramentoFacturaActivity;->D:I

    if-lt v1, v2, :cond_0

    .line 148
    const/4 v1, 0x0

    iput v1, p0, Lcom/santander/app/CadastramentoFacturaActivity;->D:I

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/santander/app/CadastramentoFacturaActivity;->A:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    iget v2, p0, Lcom/santander/app/CadastramentoFacturaActivity;->D:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setCurrentItem(Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->A:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    new-instance v1, Lfgs;

    invoke-direct {v1, p0}, Lfgs;-><init>(Lcom/santander/app/CadastramentoFacturaActivity;)V

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setOnItemSelectedListener(Lamt;)V

    .line 165
    return-void
.end method

.method public static synthetic d(Lcom/santander/app/CadastramentoFacturaActivity;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/santander/app/CadastramentoFacturaActivity;->d()V

    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->x:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/CadastramentoFacturaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    :goto_0
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->x:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/santander/app/CadastramentoFacturaActivity;->x:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 280
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/CadastramentoFacturaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    :goto_1
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->e:Lcom/santander/app/widget/Indicator;

    iget-object v1, p0, Lcom/santander/app/CadastramentoFacturaActivity;->x:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Indicator;->setSelected(I)V

    .line 285
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/CadastramentoFacturaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/CadastramentoFacturaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public static synthetic e(Lcom/santander/app/CadastramentoFacturaActivity;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/santander/app/CadastramentoFacturaActivity;->f()V

    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 288
    new-instance v0, Lfgx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfgx;-><init>(Lcom/santander/app/CadastramentoFacturaActivity;Lfgq;)V

    iput-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->z:Lfgx;

    .line 289
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->z:Lfgx;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfgx;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 291
    return-void
.end method

.method public static synthetic f(Lcom/santander/app/CadastramentoFacturaActivity;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/santander/app/CadastramentoFacturaActivity;->e()V

    return-void
.end method

.method public static synthetic g(Lcom/santander/app/CadastramentoFacturaActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->y:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 387
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 392
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v0, 0x7f0400f4

    invoke-virtual {p0, v0}, Lcom/santander/app/CadastramentoFacturaActivity;->setContentView(I)V

    .line 84
    const v0, 0x7f09043a

    invoke-virtual {p0, v0}, Lcom/santander/app/CadastramentoFacturaActivity;->c(I)V

    .line 85
    invoke-virtual {p0}, Lcom/santander/app/CadastramentoFacturaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/santander/app/CadastramentoFacturaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cartao"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/santander/app/CadastramentoFacturaActivity;->D:I

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/CadastramentoFacturaActivity;->a()V

    .line 90
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 296
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/santander/app/CadastramentoFacturaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/santander/app/CadastramentoFacturaActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 298
    const v1, 0x7f120010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 300
    :cond_0
    invoke-super {p0, p1}, Lgrs;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 306
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 317
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 312
    :pswitch_0
    new-instance v0, Lgoi;

    invoke-direct {v0, p0}, Lgoi;-><init>(Landroid/app/Activity;)V

    .line 313
    invoke-virtual {v0}, Lgoi;->a()V

    goto :goto_0

    .line 306
    :pswitch_data_0
    .packed-switch 0x7f10120f
        :pswitch_0
    .end packed-switch
.end method
