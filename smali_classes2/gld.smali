.class public Lgld;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lglb;


# instance fields
.field public a:Landroid/support/v4/view/ViewPager;

.field private b:Lghu;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lghu;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Landroid/content/Context;

.field private f:Lgla;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageView;

.field private i:Lcom/santander/app/widget/Indicator;

.field private j:Lglm;

.field private k:Z

.field private l:Lmip;

.field private m:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private final n:Landroid/view/View$OnClickListener;

.field private o:Lipp;

.field private p:Landroid/support/v4/view/PagerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Lipp;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v1, Lghu;

    invoke-direct {v1}, Lghu;-><init>()V

    iput-object v1, p0, Lgld;->b:Lghu;

    .line 56
    iput-object v0, p0, Lgld;->j:Lglm;

    .line 57
    const/4 v1, 0x0

    iput-boolean v1, p0, Lgld;->k:Z

    .line 66
    iput-object p3, p0, Lgld;->o:Lipp;

    .line 67
    iput-object p2, p0, Lgld;->n:Landroid/view/View$OnClickListener;

    .line 68
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    iput-object v1, p0, Lgld;->l:Lmip;

    .line 69
    if-nez p3, :cond_0

    iget-object v0, p0, Lgld;->l:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->a()Ljava/util/List;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lgld;->c:Ljava/util/List;

    .line 70
    iput-object p1, p0, Lgld;->e:Landroid/content/Context;

    .line 71
    return-void
.end method

.method static synthetic a(Lgld;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lgld;->d:I

    return p1
.end method

.method static synthetic a(Lgld;)Lcom/santander/app/widget/Indicator;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lgld;->i:Lcom/santander/app/widget/Indicator;

    return-object v0
.end method

.method static synthetic a(Lgld;Lglm;)Lglm;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lgld;->j:Lglm;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 564
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 565
    const-string v1, "tipo"

    sget-object v2, Lnat;->USUARIO_CONSULTIVO:Lnat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 566
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 567
    return-void
.end method

.method static synthetic a(Lgld;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lgld;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lgld;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lgld;->k:Z

    return p1
.end method

.method static synthetic b(Lgld;)Lglm;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lgld;->j:Lglm;

    return-object v0
.end method

.method static synthetic c(Lgld;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lgld;->k:Z

    return v0
.end method

.method static synthetic d(Lgld;)Lipp;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lgld;->o:Lipp;

    return-object v0
.end method

.method private e()Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lgle;

    invoke-direct {v0, p0}, Lgle;-><init>(Lgld;)V

    return-object v0
.end method

.method static synthetic e(Lgld;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lgld;->n:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic f(Lgld;)Lghu;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lgld;->b:Lghu;

    return-object v0
.end method

.method static synthetic g(Lgld;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lgld;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lgld;)Lmip;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lgld;->l:Lmip;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 75
    const v0, 0x7f04011f

    return v0
.end method

.method public a(Landroid/view/View;Landroid/content/Context;Ljava/util/List;)Landroid/support/v4/view/PagerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<*>;)",
            "Landroid/support/v4/view/PagerAdapter;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lglf;

    invoke-direct {v0, p0, p2, p3}, Lglf;-><init>(Lgld;Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 581
    iput p1, p0, Lgld;->d:I

    .line 582
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 90
    const v0, 0x7f1005c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgld;->g:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lgld;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lgld;->e:Landroid/content/Context;

    const v2, 0x7f090646

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const v0, 0x7f1005c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lgld;->h:Landroid/widget/ImageView;

    .line 93
    iget-object v0, p0, Lgld;->h:Landroid/widget/ImageView;

    const v1, 0x7f020419

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    const v0, 0x7f1005ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lgld;->a:Landroid/support/v4/view/ViewPager;

    .line 95
    const v0, 0x7f10040a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Indicator;

    iput-object v0, p0, Lgld;->i:Lcom/santander/app/widget/Indicator;

    .line 97
    iget-object v0, p0, Lgld;->e:Landroid/content/Context;

    iget-object v1, p0, Lgld;->c:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1}, Lgld;->a(Landroid/view/View;Landroid/content/Context;Ljava/util/List;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lgld;->p:Landroid/support/v4/view/PagerAdapter;

    .line 99
    iget-object v0, p0, Lgld;->a:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lgld;->p:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 100
    iget-object v0, p0, Lgld;->a:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lgld;->p:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 101
    iget-object v0, p0, Lgld;->a:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Lgld;->e()Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 103
    iget-object v0, p0, Lgld;->i:Lcom/santander/app/widget/Indicator;

    iget-object v1, p0, Lgld;->p:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Indicator;->setSize(I)V

    .line 104
    return-void
.end method

.method public a(Lgla;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lgld;->f:Lgla;

    .line 592
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 576
    check-cast p1, Lghu;

    iput-object p1, p0, Lgld;->b:Lghu;

    .line 577
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 571
    iget-object v0, p0, Lgld;->b:Lghu;

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 80
    iput p1, p0, Lgld;->m:I

    .line 81
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lgld;->a(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 619
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 586
    iget v0, p0, Lgld;->d:I

    return v0
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 595
    iget-object v0, p0, Lgld;->l:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->a()Ljava/util/List;

    move-result-object v0

    .line 597
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 598
    iget-object v0, p0, Lgld;->j:Lglm;

    invoke-static {v0}, Lglm;->a(Lglm;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "Voc\u00ea n\u00e3o possui cart\u00e3o"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    iput-object v2, p0, Lgld;->o:Lipp;

    .line 601
    iput-object v0, p0, Lgld;->c:Ljava/util/List;

    .line 604
    iget-object v0, p0, Lgld;->e:Landroid/content/Context;

    iget-object v1, p0, Lgld;->c:Ljava/util/List;

    invoke-virtual {p0, v2, v0, v1}, Lgld;->a(Landroid/view/View;Landroid/content/Context;Ljava/util/List;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lgld;->p:Landroid/support/v4/view/PagerAdapter;

    .line 606
    iget-object v0, p0, Lgld;->a:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lgld;->p:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 607
    iget-object v0, p0, Lgld;->a:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lgld;->p:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 608
    iget-object v0, p0, Lgld;->a:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Lgld;->e()Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 610
    iget-object v0, p0, Lgld;->i:Lcom/santander/app/widget/Indicator;

    iget-object v1, p0, Lgld;->p:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Indicator;->setSize(I)V

    .line 611
    iget-object v0, p0, Lgld;->p:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 612
    iget-object v0, p0, Lgld;->i:Lcom/santander/app/widget/Indicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Indicator;->setVisibility(I)V

    goto :goto_0
.end method
