.class public Llts;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Lltm;

.field private b:Landroid/widget/FrameLayout;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private f:Landroid/widget/ImageButton;

.field private g:Landroid/widget/ImageButton;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lltm;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Llts;->a:Lltm;

    .line 160
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 161
    invoke-direct {p0, p2}, Llts;->a(Landroid/view/View;)V

    .line 162
    return-void
.end method

.method static synthetic a(Llts;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Llts;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 6

    .prologue
    const v5, 0x7f1007c8

    const v4, 0x7f1007c7

    const v3, 0x7f1007c6

    const v2, 0x7f100433

    const v1, 0x7f10010f

    .line 165
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Llts;->b:Landroid/widget/FrameLayout;

    .line 166
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llts;->c:Landroid/widget/TextView;

    .line 167
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llts;->d:Landroid/widget/TextView;

    .line 168
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Llts;->e:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 169
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Llts;->f:Landroid/widget/ImageButton;

    .line 170
    const v0, 0x7f1007c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Llts;->g:Landroid/widget/ImageButton;

    .line 171
    const v0, 0x7f1007ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llts;->h:Landroid/view/View;

    .line 172
    const v0, 0x7f1007cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llts;->i:Landroid/widget/TextView;

    .line 173
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Llts;->b:Landroid/widget/FrameLayout;

    .line 174
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llts;->c:Landroid/widget/TextView;

    .line 175
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llts;->d:Landroid/widget/TextView;

    .line 176
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Llts;->e:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 177
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Llts;->f:Landroid/widget/ImageButton;

    .line 178
    const v0, 0x7f1007c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Llts;->g:Landroid/widget/ImageButton;

    .line 179
    const v0, 0x7f1007ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llts;->h:Landroid/view/View;

    .line 180
    const v0, 0x7f1007cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llts;->i:Landroid/widget/TextView;

    .line 181
    return-void
.end method

.method static synthetic b(Llts;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Llts;->b:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic c(Llts;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Llts;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Llts;)Lbr/com/zup/multistatelayout/MultiStateLayout;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Llts;->e:Lbr/com/zup/multistatelayout/MultiStateLayout;

    return-object v0
.end method

.method static synthetic e(Llts;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Llts;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Llts;)Landroid/view/View;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Llts;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Llts;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Llts;->f:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic h(Llts;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Llts;->g:Landroid/widget/ImageButton;

    return-object v0
.end method
