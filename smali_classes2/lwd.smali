.class public Llwd;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field a:Landroid/support/v7/app/AppCompatActivity;

.field private b:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/support/v7/widget/SwitchCompat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static a()Llwd;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    new-instance v1, Llwd;

    invoke-direct {v1}, Llwd;-><init>()V

    .line 38
    invoke-virtual {v1, v0}, Llwd;->setArguments(Landroid/os/Bundle;)V

    .line 39
    return-object v1
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 69
    const v0, 0x7f10010f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Llwd;->b:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 70
    const v0, 0x7f100938

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llwd;->c:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f100939

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llwd;->d:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f10093a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llwd;->e:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f100610

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iput-object v0, p0, Llwd;->f:Landroid/support/v7/widget/SwitchCompat;

    .line 74
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Llwd;->c:Landroid/widget/TextView;

    const-string v1, "Santander"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Llwd;->d:Landroid/widget/TextView;

    const-string v1, "0000"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Llwd;->e:Landroid/widget/TextView;

    const-string v1, "00000000-0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 48
    instance-of v0, p1, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 49
    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    iput-object p1, p0, Llwd;->a:Landroid/support/v7/app/AppCompatActivity;

    .line 51
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
    .line 56
    const v0, 0x7f0401e0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 57
    invoke-direct {p0, v0}, Llwd;->a(Landroid/view/View;)V

    .line 58
    invoke-direct {p0}, Llwd;->b()V

    .line 59
    return-object v0
.end method
