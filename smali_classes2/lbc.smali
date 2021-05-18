.class public Llbc;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private a:Llbh;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Llbg;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 39
    new-instance v0, Llbg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Llbg;-><init>(Llbc;Llbd;)V

    iput-object v0, p0, Llbc;->g:Llbg;

    return-void
.end method

.method public static a()Llbc;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Llbc;

    invoke-direct {v0}, Llbc;-><init>()V

    return-object v0
.end method

.method static synthetic a(Llbc;)Llbh;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Llbc;->a:Llbh;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 73
    const v0, 0x7f100798

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Llbc;->b:Landroid/widget/EditText;

    .line 74
    const v0, 0x7f100799

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Llbc;->c:Landroid/widget/EditText;

    .line 75
    const v0, 0x7f10079a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Llbc;->d:Landroid/widget/EditText;

    .line 76
    const v0, 0x7f10072e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llbc;->e:Landroid/widget/Button;

    .line 77
    const v0, 0x7f10079b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llbc;->f:Landroid/widget/Button;

    .line 78
    return-void
.end method

.method private a(Landroid/widget/EditText;)V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Llbf;

    invoke-direct {v0, p0, p1}, Llbf;-><init>(Llbc;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    return-void
.end method

.method static synthetic b(Llbc;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Llbc;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Llbc;->f:Landroid/widget/Button;

    invoke-static {v0}, Lmhj;->d(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Llbc;->e:Landroid/widget/Button;

    new-instance v1, Llbd;

    invoke-direct {v1, p0}, Llbd;-><init>(Llbc;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Llbc;->b:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Llbc;->a(Landroid/widget/EditText;)V

    .line 90
    iget-object v0, p0, Llbc;->d:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Llbc;->a(Landroid/widget/EditText;)V

    .line 91
    iget-object v0, p0, Llbc;->c:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Llbc;->a(Landroid/widget/EditText;)V

    .line 93
    iget-object v0, p0, Llbc;->f:Landroid/widget/Button;

    new-instance v1, Llbe;

    invoke-direct {v1, p0}, Llbe;-><init>(Llbc;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-void
.end method

.method static synthetic c(Llbc;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Llbc;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Llbc;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Llbc;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Llbc;)Llbg;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Llbc;->g:Llbg;

    return-object v0
.end method

.method static synthetic f(Llbc;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Llbc;->f:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public a(Llbh;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Llbc;->a:Llbh;

    .line 138
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/4 v0, 0x1

    const v1, 0x7f0b012b

    invoke-virtual {p0, v0, v1}, Llbc;->setStyle(II)V

    .line 49
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
    const v0, 0x7f040193

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    invoke-direct {p0, v0}, Llbc;->a(Landroid/view/View;)V

    .line 67
    invoke-direct {p0}, Llbc;->b()V

    .line 69
    return-object v0
.end method
