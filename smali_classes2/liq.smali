.class public Lliq;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Llik;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

.field private e:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/Button;

.field private h:Landroid/support/v7/widget/CardView;

.field private i:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;


# direct methods
.method public constructor <init>(Llik;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lliq;->a:Llik;

    .line 189
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 190
    invoke-direct {p0, p2}, Lliq;->a(Landroid/view/View;)V

    .line 191
    return-void
.end method

.method static synthetic a(Lliq;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lliq;->g:Landroid/widget/Button;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 194
    const v0, 0x7f10030c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lliq;->b:Landroid/widget/ImageView;

    .line 195
    const v0, 0x7f100e3c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lliq;->c:Landroid/widget/ImageView;

    .line 196
    const v0, 0x7f10030d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Lliq;->d:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 197
    const v0, 0x7f100737

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Lliq;->e:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 198
    const v0, 0x7f1010ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lliq;->f:Landroid/widget/LinearLayout;

    .line 199
    const v0, 0x7f1010eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lliq;->g:Landroid/widget/Button;

    .line 200
    const v0, 0x7f1010e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lliq;->h:Landroid/support/v7/widget/CardView;

    .line 201
    const v0, 0x7f1010e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    iput-object v0, p0, Lliq;->i:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    .line 202
    return-void
.end method

.method static synthetic b(Lliq;)Landroid/support/v7/widget/CardView;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lliq;->h:Landroid/support/v7/widget/CardView;

    return-object v0
.end method

.method static synthetic c(Lliq;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lliq;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lliq;)Lcom/santander/app/seguros/ui/widgets/SegurosTextView;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lliq;->d:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    return-object v0
.end method

.method static synthetic e(Lliq;)Lcom/santander/app/seguros/ui/widgets/SegurosTextView;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lliq;->e:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    return-object v0
.end method

.method static synthetic f(Lliq;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lliq;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic g(Lliq;)Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lliq;->i:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    return-object v0
.end method

.method static synthetic h(Lliq;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lliq;->c:Landroid/widget/ImageView;

    return-object v0
.end method
