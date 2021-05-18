.class public Llex;
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

.field private f:Landroid/widget/FrameLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/FrameLayout;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/FrameLayout;

.field private k:Landroid/widget/TextView;

.field private l:Llfg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a()Llex;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    new-instance v1, Llex;

    invoke-direct {v1}, Llex;-><init>()V

    .line 61
    invoke-virtual {v1, v0}, Llex;->setArguments(Landroid/os/Bundle;)V

    .line 62
    return-object v1
.end method

.method static synthetic a(Llex;)Llfg;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Llex;->l:Llfg;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 96
    const v0, 0x7f100763

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatRadioButton;

    iput-object v0, p0, Llex;->a:Landroid/support/v7/widget/AppCompatRadioButton;

    .line 97
    const v0, 0x7f100766

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatRadioButton;

    iput-object v0, p0, Llex;->b:Landroid/support/v7/widget/AppCompatRadioButton;

    .line 98
    const v0, 0x7f100769

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatRadioButton;

    iput-object v0, p0, Llex;->c:Landroid/support/v7/widget/AppCompatRadioButton;

    .line 99
    const v0, 0x7f10076b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llex;->e:Landroid/widget/Button;

    .line 100
    const v0, 0x7f10076c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llex;->d:Landroid/widget/Button;

    .line 101
    const v0, 0x7f100762

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Llex;->f:Landroid/widget/FrameLayout;

    .line 102
    const v0, 0x7f100764

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llex;->g:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f100765

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Llex;->h:Landroid/widget/FrameLayout;

    .line 104
    const v0, 0x7f100767

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llex;->i:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f100768

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Llex;->j:Landroid/widget/FrameLayout;

    .line 106
    const v0, 0x7f10076a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llex;->k:Landroid/widget/TextView;

    .line 108
    invoke-direct {p0}, Llex;->b()V

    .line 110
    iget-object v0, p0, Llex;->e:Landroid/widget/Button;

    new-instance v1, Lley;

    invoke-direct {v1, p0}, Lley;-><init>(Llex;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Llex;->d:Landroid/widget/Button;

    new-instance v1, Llez;

    invoke-direct {v1, p0}, Llez;-><init>(Llex;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    return-void
.end method

.method static synthetic b(Llex;)Landroid/support/v7/widget/AppCompatRadioButton;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Llex;->a:Landroid/support/v7/widget/AppCompatRadioButton;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Llex;->a:Landroid/support/v7/widget/AppCompatRadioButton;

    new-instance v1, Llfa;

    invoke-direct {v1, p0}, Llfa;-><init>(Llex;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 159
    iget-object v0, p0, Llex;->b:Landroid/support/v7/widget/AppCompatRadioButton;

    new-instance v1, Llfb;

    invoke-direct {v1, p0}, Llfb;-><init>(Llex;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 173
    iget-object v0, p0, Llex;->c:Landroid/support/v7/widget/AppCompatRadioButton;

    new-instance v1, Llfc;

    invoke-direct {v1, p0}, Llfc;-><init>(Llex;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 187
    iget-object v0, p0, Llex;->f:Landroid/widget/FrameLayout;

    new-instance v1, Llfd;

    invoke-direct {v1, p0}, Llfd;-><init>(Llex;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Llex;->h:Landroid/widget/FrameLayout;

    new-instance v1, Llfe;

    invoke-direct {v1, p0}, Llfe;-><init>(Llex;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Llex;->j:Landroid/widget/FrameLayout;

    new-instance v1, Llff;

    invoke-direct {v1, p0}, Llff;-><init>(Llex;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    return-void
.end method

.method static synthetic c(Llex;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Llex;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Llex;)Landroid/support/v7/widget/AppCompatRadioButton;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Llex;->b:Landroid/support/v7/widget/AppCompatRadioButton;

    return-object v0
.end method

.method static synthetic e(Llex;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Llex;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Llex;)Landroid/support/v7/widget/AppCompatRadioButton;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Llex;->c:Landroid/support/v7/widget/AppCompatRadioButton;

    return-object v0
.end method

.method static synthetic g(Llex;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Llex;->k:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public a(Llfg;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Llex;->l:Llfg;

    .line 54
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 67
    move-object v0, p1

    check-cast v0, Llfg;

    iput-object v0, p0, Llex;->l:Llfg;

    .line 68
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 211
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 213
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 214
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 215
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
    .line 88
    const v0, 0x7f04017f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 89
    invoke-direct {p0, v0}, Llex;->a(Landroid/view/View;)V

    .line 92
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Llex;->l:Llfg;

    .line 77
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 78
    return-void
.end method
