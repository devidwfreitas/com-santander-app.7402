.class public Llvp;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 221
    invoke-direct {p0, p1}, Llvp;->a(Landroid/view/View;)V

    .line 222
    return-void
.end method

.method static synthetic a(Llvp;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Llvp;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 225
    const v0, 0x7f10057a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llvp;->a:Landroid/view/View;

    .line 226
    const v0, 0x7f100578

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llvp;->b:Landroid/widget/ImageView;

    .line 227
    const v0, 0x7f10057b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llvp;->c:Landroid/view/View;

    .line 228
    const v0, 0x7f1009c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llvp;->d:Landroid/widget/TextView;

    .line 229
    const v0, 0x7f10038a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llvp;->e:Landroid/widget/TextView;

    .line 230
    const v0, 0x7f100e3c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llvp;->f:Landroid/widget/ImageView;

    .line 231
    return-void
.end method

.method static synthetic b(Llvp;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Llvp;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Llvp;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Llvp;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Llvp;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Llvp;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Llvp;)Landroid/view/View;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Llvp;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Llvp;)Landroid/view/View;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Llvp;->c:Landroid/view/View;

    return-object v0
.end method
