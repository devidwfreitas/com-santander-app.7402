.class public Llvm;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 174
    invoke-direct {p0, p1}, Llvm;->a(Landroid/view/View;)V

    .line 175
    return-void
.end method

.method static synthetic a(Llvm;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Llvm;->d:Landroid/widget/Button;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 178
    const v0, 0x7f100578

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llvm;->a:Landroid/widget/ImageView;

    .line 179
    const v0, 0x7f10030d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llvm;->b:Landroid/widget/TextView;

    .line 180
    const v0, 0x7f10038a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llvm;->c:Landroid/widget/TextView;

    .line 181
    const v0, 0x7f10006e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llvm;->d:Landroid/widget/Button;

    .line 182
    const v0, 0x7f100348

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llvm;->e:Landroid/view/View;

    .line 183
    return-void
.end method

.method static synthetic b(Llvm;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Llvm;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Llvm;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Llvm;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Llvm;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Llvm;->a:Landroid/widget/ImageView;

    return-object v0
.end method
