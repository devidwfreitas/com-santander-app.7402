.class public Llay;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "MESSAGE_BODY_KEY"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Llbb;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Llay;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Llay;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    const-string v1, "MESSAGE_BODY_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v1, Llay;

    invoke-direct {v1}, Llay;-><init>()V

    .line 46
    invoke-virtual {v1, v0}, Llay;->setArguments(Landroid/os/Bundle;)V

    .line 47
    return-object v1
.end method

.method static synthetic a(Llay;)Llbb;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Llay;->c:Llbb;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Llay;->f:Landroid/widget/TextView;

    iget-object v1, p0, Llay;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Llay;->d:Landroid/widget/Button;

    new-instance v1, Llaz;

    invoke-direct {v1, p0}, Llaz;-><init>(Llay;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Llay;->e:Landroid/widget/Button;

    new-instance v1, Llba;

    invoke-direct {v1, p0}, Llba;-><init>(Llay;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 72
    const v0, 0x7f100737

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llay;->f:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f100738

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llay;->d:Landroid/widget/Button;

    .line 74
    const v0, 0x7f100739

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llay;->e:Landroid/widget/Button;

    .line 75
    return-void
.end method


# virtual methods
.method public a(Llbb;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Llay;->c:Llbb;

    .line 115
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v0, 0x1

    const v1, 0x7f0b012b

    invoke-virtual {p0, v0, v1}, Llay;->setStyle(II)V

    .line 55
    invoke-virtual {p0}, Llay;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Llay;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MESSAGE_BODY_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llay;->b:Ljava/lang/String;

    .line 58
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 103
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 106
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    :cond_0
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 109
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 110
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 63
    const v0, 0x7f040173

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 65
    invoke-direct {p0, v0}, Llay;->a(Landroid/view/View;)V

    .line 66
    invoke-direct {p0}, Llay;->a()V

    .line 68
    return-object v0
.end method
