.class public Lmfg;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v4/app/FragmentActivity;

.field private b:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

.field private c:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

.field private d:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

.field private e:Lmfk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a()Lmfg;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    new-instance v1, Lmfg;

    invoke-direct {v1}, Lmfg;-><init>()V

    .line 39
    invoke-virtual {v1, v0}, Lmfg;->setArguments(Landroid/os/Bundle;)V

    .line 40
    return-object v1
.end method

.method static synthetic a(Lmfg;)Lmfk;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lmfg;->e:Lmfk;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 59
    const v0, 0x7f10079c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Lmfg;->b:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 60
    const v0, 0x7f10079d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Lmfg;->c:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 61
    const v0, 0x7f10079e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Lmfg;->d:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 62
    return-void
.end method

.method static synthetic b(Lmfg;)Lcom/santander/app/seguros/ui/widgets/SegurosTextView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lmfg;->b:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lmfg;->b:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    new-instance v1, Lmfh;

    invoke-direct {v1, p0}, Lmfh;-><init>(Lmfg;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lmfg;->d:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    new-instance v1, Lmfi;

    invoke-direct {v1, p0}, Lmfi;-><init>(Lmfg;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lmfg;->c:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    new-instance v1, Lmfj;

    invoke-direct {v1, p0}, Lmfj;-><init>(Lmfg;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method static synthetic c(Lmfg;)Lcom/santander/app/seguros/ui/widgets/SegurosTextView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lmfg;->d:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    return-object v0
.end method

.method static synthetic d(Lmfg;)Lcom/santander/app/seguros/ui/widgets/SegurosTextView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lmfg;->c:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    return-object v0
.end method


# virtual methods
.method public a(Lmfk;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lmfg;->e:Lmfk;

    .line 32
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 102
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 104
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 105
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 106
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 51
    const v0, 0x7f040194

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 52
    invoke-direct {p0, v0}, Lmfg;->a(Landroid/view/View;)V

    .line 53
    invoke-direct {p0}, Lmfg;->b()V

    .line 55
    return-object v0
.end method
