.class public Llyf;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a()Llyf;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    new-instance v1, Llyf;

    invoke-direct {v1}, Llyf;-><init>()V

    .line 37
    invoke-virtual {v1, v0}, Llyf;->setArguments(Landroid/os/Bundle;)V

    .line 38
    return-object v1
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 72
    const v0, 0x7f100784

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llyf;->a:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f100789

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llyf;->b:Landroid/widget/Button;

    .line 74
    iget-object v0, p0, Llyf;->b:Landroid/widget/Button;

    new-instance v1, Llyg;

    invoke-direct {v1, p0}, Llyg;-><init>(Llyf;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Llyf;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Llyf;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090370

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const-string v0, "Seguros_Sinistro_Acionar_Documentacao_Acao"

    const-string v1, "PopUp"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 67
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 53
    const v0, 0x7f04018a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    invoke-direct {p0, v0}, Llyf;->a(Landroid/view/View;)V

    .line 55
    invoke-direct {p0}, Llyf;->b()V

    .line 56
    return-object v0
.end method
