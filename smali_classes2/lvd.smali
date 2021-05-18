.class Llvd;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Lluv;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageButton;

.field private h:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

.field private i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lluv;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Llvd;->a:Lluv;

    .line 271
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 272
    invoke-direct {p0, p2}, Llvd;->a(Landroid/view/View;)V

    .line 273
    return-void
.end method

.method static synthetic a(Llvd;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Llvd;->d:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 276
    const v0, 0x7f100065

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Llvd;->b:Landroid/widget/LinearLayout;

    .line 278
    const v0, 0x7f100796

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llvd;->c:Landroid/widget/ImageView;

    .line 280
    const v0, 0x7f100f7a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Llvd;->d:Landroid/widget/FrameLayout;

    .line 281
    const v0, 0x7f10030d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llvd;->e:Landroid/widget/TextView;

    .line 282
    const v0, 0x7f10038a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llvd;->f:Landroid/widget/TextView;

    .line 283
    const v0, 0x7f1010ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Llvd;->g:Landroid/widget/ImageButton;

    .line 284
    const v0, 0x7f1010ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    iput-object v0, p0, Llvd;->h:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    .line 285
    const v0, 0x7f1010f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llvd;->i:Landroid/widget/TextView;

    .line 286
    return-void
.end method

.method static synthetic b(Llvd;)Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Llvd;->h:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    return-object v0
.end method

.method static synthetic c(Llvd;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Llvd;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Llvd;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Llvd;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Llvd;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Llvd;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Llvd;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Llvd;->g:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic g(Llvd;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Llvd;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Llvd;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Llvd;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method
