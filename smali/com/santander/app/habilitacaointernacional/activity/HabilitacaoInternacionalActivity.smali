.class public Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lnez;


# instance fields
.field private A:Lcom/santander/app/components/view/SegmentImageView;

.field private B:Landroid/app/Dialog;

.field private final a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lghu;

.field private e:Limk;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private w:Lcom/santander/app/widget/Indicator;

.field private x:Landroid/support/v4/view/ViewPager;

.field private y:Lcom/santander/app/components/view/SegmentImageView;

.field private z:Lcom/santander/app/components/view/SegmentImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 33
    const-string v0, "HabilitacaoInternacionalActivity"

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->a:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->B:Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->b:I

    return v0
.end method

.method public static synthetic a(Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->B:Landroid/app/Dialog;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 76
    const v0, 0x7f100a29

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SegmentImageView;

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->y:Lcom/santander/app/components/view/SegmentImageView;

    .line 77
    const v0, 0x7f100a2a

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SegmentImageView;

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->z:Lcom/santander/app/components/view/SegmentImageView;

    .line 78
    const v0, 0x7f100a28

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SegmentImageView;

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->A:Lcom/santander/app/components/view/SegmentImageView;

    .line 79
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->A:Lcom/santander/app/components/view/SegmentImageView;

    new-instance v1, Lind;

    invoke-direct {v1, p0}, Lind;-><init>(Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SegmentImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->y:Lcom/santander/app/components/view/SegmentImageView;

    new-instance v1, Line;

    invoke-direct {v1, p0}, Line;-><init>(Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SegmentImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->z:Lcom/santander/app/components/view/SegmentImageView;

    new-instance v1, Linf;

    invoke-direct {v1, p0}, Linf;-><init>(Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SegmentImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->c:Ljava/lang/String;

    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->y:Lcom/santander/app/components/view/SegmentImageView;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SegmentImageView;->a()V

    .line 148
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->z:Lcom/santander/app/components/view/SegmentImageView;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SegmentImageView;->a()V

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->d()V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-direct {p0}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->c()V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method private b()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->v:Lmip;

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

.method public static synthetic c(Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;)Lcom/santander/app/components/view/SegmentImageView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->y:Lcom/santander/app/components/view/SegmentImageView;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->e()V

    .line 166
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->e:Limk;

    invoke-virtual {v0}, Limk;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->b(I)V

    .line 167
    return-void
.end method

.method public static synthetic d(Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;)Lcom/santander/app/components/view/SegmentImageView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->z:Lcom/santander/app/components/view/SegmentImageView;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 170
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->B:Landroid/app/Dialog;

    .line 172
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->t()Lgke;

    move-result-object v0

    new-instance v1, Ling;

    invoke-direct {v1, p0}, Ling;-><init>(Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;)V

    invoke-interface {v0, v1}, Lgke;->a(Lfoh;)V

    .line 182
    return-void
.end method

.method private e()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 186
    const v0, 0x7f100a26

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->x:Landroid/support/v4/view/ViewPager;

    .line 188
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->x:Landroid/support/v4/view/ViewPager;

    new-instance v1, Linh;

    invoke-direct {v1, p0}, Linh;-><init>(Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 202
    const v0, 0x7f100a27

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Indicator;

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->w:Lcom/santander/app/widget/Indicator;

    .line 203
    const v0, 0x7f1004c8

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->g:Landroid/widget/ImageView;

    .line 204
    const v0, 0x7f1004c9

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->f:Landroid/widget/ImageView;

    .line 205
    new-instance v0, Limk;

    iget-object v2, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->x:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->w:Lcom/santander/app/widget/Indicator;

    iget-object v4, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->g:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->f:Landroid/widget/ImageView;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Limk;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lcom/santander/app/widget/Indicator;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->e:Limk;

    .line 213
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->g:Landroid/widget/ImageView;

    new-instance v1, Lini;

    invoke-direct {v1, p0}, Lini;-><init>(Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->f:Landroid/widget/ImageView;

    new-instance v1, Linj;

    invoke-direct {v1, p0}, Linj;-><init>(Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->e:Limk;

    iget v1, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->b:I

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Limk;->a(ILjava/lang/Boolean;)V

    .line 231
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->e:Limk;

    invoke-virtual {v0, p0}, Limk;->a(Lnez;)V

    .line 232
    return-void
.end method

.method public static synthetic e(Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->c()V

    return-void
.end method

.method public static synthetic f(Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->B:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic g(Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->x:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 244
    iput p1, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->b:I

    .line 245
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->e:Limk;

    invoke-virtual {v0, p1}, Limk;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->d:Lghu;

    .line 246
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->d:Lghu;

    invoke-virtual {v0}, Lghu;->x()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->c:Ljava/lang/String;

    .line 247
    const-string v0, "S"

    iget-object v1, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->y:Lcom/santander/app/components/view/SegmentImageView;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SegmentImageView;->a()V

    .line 249
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->z:Lcom/santander/app/components/view/SegmentImageView;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SegmentImageView;->a()V

    .line 255
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->y:Lcom/santander/app/components/view/SegmentImageView;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SegmentImageView;->b()V

    .line 252
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->z:Lcom/santander/app/components/view/SegmentImageView;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SegmentImageView;->b()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f040212

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02028e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 57
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 58
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_0

    .line 62
    const-string v2, "indiceCartaoSelecionado"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->b:I

    .line 63
    const-string v2, "possuiViagemCadastrada"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->c:Ljava/lang/String;

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->a()V

    .line 68
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 71
    return-void
.end method
