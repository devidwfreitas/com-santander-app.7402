.class public Llxv;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lkvq;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "sinister-assistance"

    sput-object v0, Llxv;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Lkvq;)Llxv;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    sget-object v1, Llxv;->a:Ljava/lang/String;

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v1, Llxv;

    invoke-direct {v1}, Llxv;-><init>()V

    .line 48
    invoke-virtual {v1, v0}, Llxv;->setArguments(Landroid/os/Bundle;)V

    .line 49
    return-object v1
.end method

.method private a()V
    .locals 8

    .prologue
    .line 73
    iget-object v0, p0, Llxv;->d:Landroid/widget/TextView;

    iget-object v1, p0, Llxv;->b:Lkvq;

    invoke-virtual {v1}, Lkvq;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Llxv;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Llxv;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "fonts/opensans_semibold.ttf"

    invoke-virtual {p0}, Llxv;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0063

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Llxv;->b:Lkvq;

    invoke-virtual {v4}, Lkvq;->d()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "COZINHA"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "LAVANDERIA"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "Elimina\u00e7\u00e3o de Vazamentos em:"

    aput-object v7, v5, v6

    invoke-static {v1, v2, v3, v4, v5}, Lmhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 96
    const v0, 0x7f100740

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llxv;->c:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f10073f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llxv;->d:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f100741

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llxv;->e:Landroid/widget/Button;

    .line 109
    iget-object v0, p0, Llxv;->e:Landroid/widget/Button;

    new-instance v1, Llxw;

    invoke-direct {v1, p0}, Llxw;-><init>(Llxv;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Llxv;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llxv;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Llxv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Llxv;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Llxv;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkvq;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvq;

    iput-object v0, p0, Llxv;->b:Lkvq;

    .line 60
    :cond_0
    const-string v0, "Seguros_Sinistro_Acionar_PopUpAssistencia24h_Informativo_Acao"

    iget-object v1, p0, Llxv;->b:Lkvq;

    invoke-virtual {v1}, Lkvq;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 88
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 90
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 91
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
    .line 66
    const v0, 0x7f040176

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 67
    invoke-direct {p0, v0}, Llxv;->a(Landroid/view/View;)V

    .line 68
    invoke-direct {p0}, Llxv;->a()V

    .line 69
    return-object v0
.end method
