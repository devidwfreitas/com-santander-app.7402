.class public Llvw;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 214
    invoke-direct {p0, p1}, Llvw;->a(Landroid/view/View;)V

    .line 215
    return-void
.end method

.method static synthetic a(Llvw;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Llvw;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 218
    const v0, 0x7f100578

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llvw;->a:Landroid/widget/ImageView;

    .line 219
    const v0, 0x7f10006e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llvw;->b:Landroid/widget/Button;

    .line 220
    const v0, 0x7f100e39

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llvw;->c:Landroid/widget/TextView;

    .line 221
    const v0, 0x7f10057e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llvw;->d:Landroid/view/View;

    .line 222
    const v0, 0x7f1010e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llvw;->e:Landroid/widget/TextView;

    .line 223
    return-void
.end method

.method static synthetic b(Llvw;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Llvw;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Llvw;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Llvw;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Llvw;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Llvw;->b:Landroid/widget/Button;

    return-object v0
.end method
