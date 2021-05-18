.class public Llis;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageButton;

.field private c:Landroid/widget/ImageButton;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Lliw;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method private a(IILandroid/widget/ImageButton;Landroid/widget/ImageButton;)Landroid/view/View$OnClickListener;
    .locals 6
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 113
    new-instance v0, Lliv;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lliv;-><init>(Llis;IILandroid/widget/ImageButton;Landroid/widget/ImageButton;)V

    return-object v0
.end method

.method public static a()Llis;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Llis;

    invoke-direct {v0}, Llis;-><init>()V

    return-object v0
.end method

.method static synthetic a(Llis;)Lliw;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Llis;->i:Lliw;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 73
    const v0, 0x7f1007bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llis;->a:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f1007bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Llis;->b:Landroid/widget/ImageButton;

    .line 75
    const v0, 0x7f1007c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llis;->d:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f1007c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llis;->e:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f1007be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Llis;->c:Landroid/widget/ImageButton;

    .line 78
    const v0, 0x7f1007c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Llis;->f:Landroid/widget/LinearLayout;

    .line 79
    const v0, 0x7f1007c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llis;->g:Landroid/widget/Button;

    .line 80
    const v0, 0x7f10072e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llis;->h:Landroid/widget/Button;

    .line 81
    return-void
.end method

.method private a(Landroid/widget/ImageButton;)V
    .locals 3

    .prologue
    .line 130
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setActivated(Z)V

    .line 131
    const v0, 0x7f0200ae

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 132
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Llis;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0e00b9

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 133
    return-void
.end method

.method static synthetic a(Llis;Landroid/widget/ImageButton;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Llis;->a(Landroid/widget/ImageButton;)V

    return-void
.end method

.method static synthetic b(Llis;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Llis;->b:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 84
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->j()Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object v1, p0, Llis;->a:Landroid/widget/TextView;

    const v2, 0x7f090522

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Llis;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_0
    iget-object v0, p0, Llis;->b:Landroid/widget/ImageButton;

    const v1, 0x7f090b6d

    const v2, 0x7f090be8

    iget-object v3, p0, Llis;->b:Landroid/widget/ImageButton;

    iget-object v4, p0, Llis;->c:Landroid/widget/ImageButton;

    invoke-direct {p0, v1, v2, v3, v4}, Llis;->a(IILandroid/widget/ImageButton;Landroid/widget/ImageButton;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Llis;->c:Landroid/widget/ImageButton;

    const v1, 0x7f090076

    const v2, 0x7f090be9

    iget-object v3, p0, Llis;->c:Landroid/widget/ImageButton;

    iget-object v4, p0, Llis;->b:Landroid/widget/ImageButton;

    invoke-direct {p0, v1, v2, v3, v4}, Llis;->a(IILandroid/widget/ImageButton;Landroid/widget/ImageButton;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Llis;->g:Landroid/widget/Button;

    new-instance v1, Llit;

    invoke-direct {v1, p0}, Llit;-><init>(Llis;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Llis;->h:Landroid/widget/Button;

    new-instance v1, Lliu;

    invoke-direct {v1, p0}, Lliu;-><init>(Llis;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void
.end method

.method private b(Landroid/widget/ImageButton;)V
    .locals 3

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setActivated(Z)V

    .line 137
    const v0, 0x7f0200af

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 138
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Llis;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0e006a

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 139
    return-void
.end method

.method static synthetic b(Llis;Landroid/widget/ImageButton;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Llis;->b(Landroid/widget/ImageButton;)V

    return-void
.end method

.method static synthetic c(Llis;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Llis;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Llis;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Llis;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Llis;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Llis;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public a(Lliw;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Llis;->i:Lliw;

    .line 143
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 57
    :cond_0
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 58
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 59
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 64
    const v0, 0x7f04019f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    invoke-direct {p0, v0}, Llis;->a(Landroid/view/View;)V

    .line 67
    invoke-direct {p0}, Llis;->b()V

    .line 69
    return-object v0
.end method
