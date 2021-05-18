.class public Llyl;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Lgrs;

.field private c:Llyo;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "value-key"

    sput-object v0, Llyl;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llyl;->g:D

    return-void
.end method

.method public static a(D)Llyl;
    .locals 4

    .prologue
    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    sget-object v1, Llyl;->a:Ljava/lang/String;

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v1, Llyl;

    invoke-direct {v1}, Llyl;-><init>()V

    .line 42
    invoke-virtual {v1, v0}, Llyl;->setArguments(Landroid/os/Bundle;)V

    .line 43
    return-object v1
.end method

.method static synthetic a(Llyl;)Llyo;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Llyl;->c:Llyo;

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    .line 71
    iget-object v0, p0, Llyl;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Llyl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Llyl;->g:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v4}, Lmhj;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 75
    const v0, 0x7f1004f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llyl;->d:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f100739

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llyl;->e:Landroid/widget/Button;

    .line 77
    const v0, 0x7f100738

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llyl;->f:Landroid/widget/Button;

    .line 79
    iget-object v0, p0, Llyl;->e:Landroid/widget/Button;

    new-instance v1, Llym;

    invoke-direct {v1, p0}, Llym;-><init>(Llyl;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Llyl;->f:Landroid/widget/Button;

    new-instance v1, Llyn;

    invoke-direct {v1, p0}, Llyn;-><init>(Llyl;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method


# virtual methods
.method public a(Llyo;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Llyl;->c:Llyo;

    .line 100
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 58
    check-cast p1, Lgrs;

    iput-object p1, p0, Llyl;->b:Lgrs;

    .line 59
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Llyl;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llyl;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Llyl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Llyl;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Llyl;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Llyl;->g:D

    .line 53
    :cond_0
    return-void
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
    .line 64
    const v0, 0x7f0401eb

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 65
    invoke-direct {p0, v0}, Llyl;->a(Landroid/view/View;)V

    .line 66
    invoke-direct {p0}, Llyl;->a()V

    .line 67
    return-object v0
.end method
