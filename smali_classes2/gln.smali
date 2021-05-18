.class public Lgln;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lglb;
.implements Lglc;


# instance fields
.field public a:Landroid/support/v4/view/ViewPager;

.field private b:Lcom/santander/app/contacorrente/domain/Conta;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
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

.field private j:Lglt;

.field private k:Z

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-direct {v0}, Lcom/santander/app/contacorrente/domain/Conta;-><init>()V

    iput-object v0, p0, Lgln;->b:Lcom/santander/app/contacorrente/domain/Conta;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lgln;->j:Lglt;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgln;->k:Z

    .line 58
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lgln;->c:Ljava/util/List;

    .line 59
    iput-object p1, p0, Lgln;->e:Landroid/content/Context;

    .line 60
    return-void
.end method

.method static synthetic a(Lgln;I)I
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lgln;->d:I

    return p1
.end method

.method static synthetic a(Lgln;)Lcom/santander/app/widget/Indicator;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lgln;->i:Lcom/santander/app/widget/Indicator;

    return-object v0
.end method

.method static synthetic a(Lgln;Lglt;)Lglt;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lgln;->j:Lglt;

    return-object p1
.end method

.method static synthetic a(Lgln;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lgln;->k:Z

    return p1
.end method

.method static synthetic b(Lgln;)Lglt;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lgln;->j:Lglt;

    return-object v0
.end method

.method static synthetic c(Lgln;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lgln;->e:Landroid/content/Context;

    return-object v0
.end method

.method private d()Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lglo;

    invoke-direct {v0, p0}, Lglo;-><init>(Lgln;)V

    return-object v0
.end method

.method static synthetic d(Lgln;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lgln;->k:Z

    return v0
.end method

.method static synthetic e(Lgln;)Lcom/santander/app/contacorrente/domain/Conta;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lgln;->b:Lcom/santander/app/contacorrente/domain/Conta;

    return-object v0
.end method

.method static synthetic f(Lgln;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lgln;->d:I

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 69
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
    .line 114
    new-instance v0, Lglp;

    invoke-direct {v0, p0, p2, p3}, Lglp;-><init>(Lgln;Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 326
    iput p1, p0, Lgln;->d:I

    .line 327
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 79
    const v0, 0x7f1005c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgln;->g:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lgln;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lgln;->e:Landroid/content/Context;

    const v2, 0x7f09065f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const v0, 0x7f1005c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lgln;->h:Landroid/widget/ImageView;

    .line 82
    iget-object v0, p0, Lgln;->h:Landroid/widget/ImageView;

    const v1, 0x7f02041c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    const v0, 0x7f10040a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Indicator;

    iput-object v0, p0, Lgln;->i:Lcom/santander/app/widget/Indicator;

    .line 85
    const v0, 0x7f1005ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lgln;->a:Landroid/support/v4/view/ViewPager;

    .line 87
    iget-object v0, p0, Lgln;->e:Landroid/content/Context;

    iget-object v1, p0, Lgln;->c:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1}, Lgln;->a(Landroid/view/View;Landroid/content/Context;Ljava/util/List;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lgln;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 90
    iget-object v1, p0, Lgln;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 91
    iget-object v1, p0, Lgln;->a:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Lgln;->d()Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 93
    iget-object v1, p0, Lgln;->i:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/santander/app/widget/Indicator;->setSize(I)V

    .line 94
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lgln;->i:Lcom/santander/app/widget/Indicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Indicator;->setVisibility(I)V

    .line 97
    :cond_0
    return-void
.end method

.method public a(Lgla;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lgln;->f:Lgla;

    .line 337
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
    .line 321
    check-cast p1, Lcom/santander/app/contacorrente/domain/Conta;

    iput-object p1, p0, Lgln;->b:Lcom/santander/app/contacorrente/domain/Conta;

    .line 322
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
    .line 316
    iget-object v0, p0, Lgln;->b:Lcom/santander/app/contacorrente/domain/Conta;

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 64
    iput p1, p0, Lgln;->l:I

    .line 65
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lgln;->a(Landroid/view/View;)V

    .line 75
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 346
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lgln;->d:I

    return v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 342
    return-void
.end method
