.class Lgmv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lgmm;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Lgml;


# direct methods
.method public constructor <init>(Lgmm;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 488
    iput-object p1, p0, Lgmv;->a:Lgmm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    const v0, 0x7f10059d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lgmv;->c:Landroid/widget/LinearLayout;

    .line 490
    const v0, 0x7f10059f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lgmv;->d:Landroid/widget/Button;

    .line 491
    const v0, 0x7f100599

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgmv;->g:Landroid/widget/TextView;

    .line 492
    const v0, 0x7f10059b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgmv;->h:Landroid/widget/TextView;

    .line 493
    const v0, 0x7f10059a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lgmv;->e:Landroid/widget/ImageView;

    .line 494
    const v0, 0x7f10059c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lgmv;->f:Landroid/widget/Button;

    .line 495
    const v0, 0x7f100598

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lgmv;->b:Landroid/widget/RelativeLayout;

    .line 496
    iget-object v0, p0, Lgmv;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f1005a0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgmv;->i:Landroid/widget/TextView;

    .line 497
    iget-object v0, p0, Lgmv;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f1005a1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgmv;->j:Landroid/widget/TextView;

    .line 498
    iget-object v0, p0, Lgmv;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f1005a2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgmv;->k:Landroid/widget/TextView;

    .line 499
    iget-object v0, p0, Lgmv;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f1005a3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgmv;->l:Landroid/widget/TextView;

    .line 501
    return-void
.end method

.method static synthetic a(Lgmv;)Lgml;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lgmv;->m:Lgml;

    return-object v0
.end method

.method static synthetic a(Lgmv;Lgml;)Lgml;
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lgmv;->m:Lgml;

    return-object p1
.end method

.method static synthetic b(Lgmv;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lgmv;->f:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic c(Lgmv;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lgmv;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lgmv;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lgmv;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic e(Lgmv;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lgmv;->b:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic f(Lgmv;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lgmv;->d:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic g(Lgmv;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lgmv;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lgmv;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lgmv;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lgmv;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lgmv;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lgmv;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lgmv;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lgmv;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lgmv;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lgmv;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lgmv;->j:Landroid/widget/TextView;

    return-object v0
.end method
