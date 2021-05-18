.class public Llfj;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Landroid/support/v7/widget/AppCompatRadioButton;

.field private b:Landroid/support/v7/widget/AppCompatRadioButton;

.field private c:Landroid/support/v7/widget/AppCompatRadioButton;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Llfs;

.field private g:Landroid/widget/FrameLayout;

.field private h:Landroid/widget/FrameLayout;

.field private i:Landroid/widget/FrameLayout;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a()Llfj;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    new-instance v1, Llfj;

    invoke-direct {v1}, Llfj;-><init>()V

    .line 59
    invoke-virtual {v1, v0}, Llfj;->setArguments(Landroid/os/Bundle;)V

    .line 60
    return-object v1
.end method

.method static synthetic a(Llfj;)Llfs;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Llfj;->f:Llfs;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 82
    const v0, 0x7f100763

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatRadioButton;

    iput-object v0, p0, Llfj;->a:Landroid/support/v7/widget/AppCompatRadioButton;

    .line 83
    const v0, 0x7f100766

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatRadioButton;

    iput-object v0, p0, Llfj;->b:Landroid/support/v7/widget/AppCompatRadioButton;

    .line 84
    const v0, 0x7f100769

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatRadioButton;

    iput-object v0, p0, Llfj;->c:Landroid/support/v7/widget/AppCompatRadioButton;

    .line 85
    const v0, 0x7f10076b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llfj;->e:Landroid/widget/Button;

    .line 86
    const v0, 0x7f10076c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llfj;->d:Landroid/widget/Button;

    .line 87
    const v0, 0x7f100762

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Llfj;->g:Landroid/widget/FrameLayout;

    .line 88
    const v0, 0x7f100765

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Llfj;->h:Landroid/widget/FrameLayout;

    .line 89
    const v0, 0x7f100768

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Llfj;->i:Landroid/widget/FrameLayout;

    .line 90
    const v0, 0x7f100764

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llfj;->j:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f100767

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llfj;->k:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f10076a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llfj;->l:Landroid/widget/TextView;

    .line 94
    invoke-direct {p0}, Llfj;->b()V

    .line 96
    iget-object v0, p0, Llfj;->e:Landroid/widget/Button;

    new-instance v1, Llfk;

    invoke-direct {v1, p0}, Llfk;-><init>(Llfj;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Llfj;->d:Landroid/widget/Button;

    new-instance v1, Llfl;

    invoke-direct {v1, p0}, Llfl;-><init>(Llfj;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-void
.end method

.method static synthetic b(Llfj;)Landroid/support/v7/widget/AppCompatRadioButton;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Llfj;->a:Landroid/support/v7/widget/AppCompatRadioButton;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Llfj;->a:Landroid/support/v7/widget/AppCompatRadioButton;

    new-instance v1, Llfm;

    invoke-direct {v1, p0}, Llfm;-><init>(Llfj;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 143
    iget-object v0, p0, Llfj;->b:Landroid/support/v7/widget/AppCompatRadioButton;

    new-instance v1, Llfn;

    invoke-direct {v1, p0}, Llfn;-><init>(Llfj;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 157
    iget-object v0, p0, Llfj;->c:Landroid/support/v7/widget/AppCompatRadioButton;

    new-instance v1, Llfo;

    invoke-direct {v1, p0}, Llfo;-><init>(Llfj;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 171
    iget-object v0, p0, Llfj;->g:Landroid/widget/FrameLayout;

    new-instance v1, Llfp;

    invoke-direct {v1, p0}, Llfp;-><init>(Llfj;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Llfj;->h:Landroid/widget/FrameLayout;

    new-instance v1, Llfq;

    invoke-direct {v1, p0}, Llfq;-><init>(Llfj;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Llfj;->i:Landroid/widget/FrameLayout;

    new-instance v1, Llfr;

    invoke-direct {v1, p0}, Llfr;-><init>(Llfj;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    return-void
.end method

.method static synthetic c(Llfj;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Llfj;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Llfj;)Landroid/support/v7/widget/AppCompatRadioButton;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Llfj;->b:Landroid/support/v7/widget/AppCompatRadioButton;

    return-object v0
.end method

.method static synthetic e(Llfj;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Llfj;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Llfj;)Landroid/support/v7/widget/AppCompatRadioButton;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Llfj;->c:Landroid/support/v7/widget/AppCompatRadioButton;

    return-object v0
.end method

.method static synthetic g(Llfj;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Llfj;->l:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public a(Llfs;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Llfj;->f:Llfs;

    .line 52
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 73
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 75
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 76
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 77
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 66
    const v0, 0x7f040181

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 67
    invoke-direct {p0, v0}, Llfj;->a(Landroid/view/View;)V

    .line 68
    return-object v0
.end method
