.class public Llyh;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lkus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "document-key"

    sput-object v0, Llyh;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Lkus;)Llyh;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    sget-object v1, Llyh;->a:Ljava/lang/String;

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v1, Llyh;

    invoke-direct {v1}, Llyh;-><init>()V

    .line 36
    invoke-virtual {v1, v0}, Llyh;->setArguments(Landroid/os/Bundle;)V

    .line 37
    return-object v1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Llyh;->b:Landroid/widget/TextView;

    iget-object v1, p0, Llyh;->d:Lkus;

    invoke-virtual {v1}, Lkus;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 66
    const v0, 0x7f100784

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llyh;->b:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f100785

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llyh;->c:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Llyh;->c:Landroid/widget/TextView;

    new-instance v1, Llyi;

    invoke-direct {v1, p0}, Llyi;-><init>(Llyh;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Llyh;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llyh;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Llyh;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Llyh;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Llyh;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkus;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkus;

    iput-object v0, p0, Llyh;->d:Lkus;

    .line 48
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 53
    const v0, 0x7f040189

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    invoke-direct {p0, v0}, Llyh;->a(Landroid/view/View;)V

    .line 56
    invoke-direct {p0}, Llyh;->a()V

    .line 58
    return-object v0
.end method
