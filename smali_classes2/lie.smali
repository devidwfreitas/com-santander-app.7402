.class public Llie;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/LinearLayout;

.field public b:Landroid/view/View;

.field public c:Lcom/santander/app/seguros/ui/widgets/CircleImageView;

.field public d:Landroid/view/View;

.field public e:Landroid/widget/RelativeLayout;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field final synthetic h:Llib;

.field private i:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Llib;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Llie;->h:Llib;

    .line 174
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 175
    invoke-direct {p0, p2}, Llie;->a(Landroid/view/View;)V

    .line 176
    return-void
.end method

.method static synthetic a(Llie;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Llie;->i:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 179
    const v0, 0x7f1004f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Llie;->a:Landroid/widget/LinearLayout;

    .line 180
    const v0, 0x7f100a50

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llie;->b:Landroid/view/View;

    .line 181
    const v0, 0x7f10012d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/CircleImageView;

    iput-object v0, p0, Llie;->c:Lcom/santander/app/seguros/ui/widgets/CircleImageView;

    .line 182
    const v0, 0x7f100a51

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llie;->d:Landroid/view/View;

    .line 183
    const v0, 0x7f100a52

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Llie;->e:Landroid/widget/RelativeLayout;

    .line 184
    const v0, 0x7f10038a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llie;->f:Landroid/widget/TextView;

    .line 185
    const v0, 0x7f1010b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llie;->g:Landroid/widget/TextView;

    .line 186
    const v0, 0x7f1010b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Llie;->i:Landroid/widget/ImageButton;

    .line 187
    return-void
.end method
