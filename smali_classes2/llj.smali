.class public Lllj;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Llld;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/support/v7/widget/AppCompatRadioButton;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/support/v7/widget/AppCompatRadioButton;

.field private g:Landroid/support/design/widget/TextInputLayout;

.field private h:Landroid/support/design/widget/TextInputEditText;

.field private i:Landroid/view/View;

.field private j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Llld;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lllj;->a:Llld;

    .line 196
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 197
    invoke-direct {p0, p2}, Lllj;->a(Landroid/view/View;)V

    .line 198
    return-void
.end method

.method static synthetic a(Lllj;)Landroid/support/design/widget/TextInputEditText;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lllj;->h:Landroid/support/design/widget/TextInputEditText;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 201
    const v0, 0x7f100676

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lllj;->b:Landroid/widget/TextView;

    .line 202
    const v0, 0x7f100679

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lllj;->c:Landroid/widget/FrameLayout;

    .line 203
    const v0, 0x7f100678

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatRadioButton;

    iput-object v0, p0, Lllj;->d:Landroid/support/v7/widget/AppCompatRadioButton;

    .line 204
    const v0, 0x7f100677

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lllj;->e:Landroid/widget/FrameLayout;

    .line 205
    const v0, 0x7f10067a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatRadioButton;

    iput-object v0, p0, Lllj;->f:Landroid/support/v7/widget/AppCompatRadioButton;

    .line 206
    const v0, 0x7f10067b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lllj;->g:Landroid/support/design/widget/TextInputLayout;

    .line 207
    const v0, 0x7f10067c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputEditText;

    iput-object v0, p0, Lllj;->h:Landroid/support/design/widget/TextInputEditText;

    .line 208
    const v0, 0x7f10067d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lllj;->i:Landroid/view/View;

    .line 209
    iget-object v0, p0, Lllj;->h:Landroid/support/design/widget/TextInputEditText;

    new-instance v1, Lllk;

    invoke-direct {v1, p0}, Lllk;-><init>(Lllj;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 228
    return-void
.end method

.method static synthetic b(Lllj;)Landroid/support/v7/widget/AppCompatRadioButton;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lllj;->f:Landroid/support/v7/widget/AppCompatRadioButton;

    return-object v0
.end method

.method static synthetic c(Lllj;)Landroid/support/v7/widget/AppCompatRadioButton;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lllj;->d:Landroid/support/v7/widget/AppCompatRadioButton;

    return-object v0
.end method

.method static synthetic d(Lllj;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lllj;->c:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic e(Lllj;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lllj;->e:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic f(Lllj;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lllj;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lllj;)Landroid/support/design/widget/TextInputLayout;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lllj;->g:Landroid/support/design/widget/TextInputLayout;

    return-object v0
.end method

.method static synthetic h(Lllj;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lllj;->j:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lllj;->j:Ljava/lang/Runnable;

    .line 193
    return-void
.end method
