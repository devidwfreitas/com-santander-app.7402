.class public Llxn;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Ljava/lang/String;

.field private e:Llxq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Llxn;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Llxn;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Llxn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Llxn;->d:Ljava/lang/String;

    return-object p1
.end method

.method public static a()Llxn;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    new-instance v1, Llxn;

    invoke-direct {v1}, Llxn;-><init>()V

    .line 42
    invoke-virtual {v1, v0}, Llxn;->setArguments(Landroid/os/Bundle;)V

    .line 43
    return-object v1
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 62
    const v0, 0x7f10072c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Llxn;->a:Landroid/widget/EditText;

    .line 63
    const v0, 0x7f100426

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llxn;->b:Landroid/widget/Button;

    .line 64
    const v0, 0x7f10072e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llxn;->c:Landroid/widget/Button;

    .line 66
    invoke-direct {p0}, Llxn;->b()V

    .line 68
    return-void
.end method

.method static synthetic b(Llxn;)Llxq;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Llxn;->e:Llxq;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Llxn;->b:Landroid/widget/Button;

    new-instance v1, Llxo;

    invoke-direct {v1, p0}, Llxo;-><init>(Llxn;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Llxn;->c:Landroid/widget/Button;

    new-instance v1, Llxp;

    invoke-direct {v1, p0}, Llxp;-><init>(Llxn;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method static synthetic c(Llxn;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Llxn;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Llxq;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Llxn;->e:Llxq;

    .line 35
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 97
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 98
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 99
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 54
    const v0, 0x7f040171

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 55
    invoke-direct {p0, v0}, Llxn;->a(Landroid/view/View;)V

    .line 57
    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 105
    return-void
.end method
