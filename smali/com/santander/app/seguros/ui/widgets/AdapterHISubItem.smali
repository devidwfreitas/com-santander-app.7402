.class public Lcom/santander/app/seguros/ui/widgets/AdapterHISubItem;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/AdapterHISubItem;->a()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/AdapterHISubItem;->a()V

    .line 38
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/AdapterHISubItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040367

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/AdapterHISubItem;->b()V

    .line 44
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 47
    const v0, 0x7f100578

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/AdapterHISubItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AdapterHISubItem;->a:Landroid/widget/ImageView;

    .line 48
    const v0, 0x7f1010ec

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/AdapterHISubItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AdapterHISubItem;->b:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f100157

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/AdapterHISubItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AdapterHISubItem;->c:Landroid/view/View;

    .line 50
    return-void
.end method


# virtual methods
.method public setLineVisible(I)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AdapterHISubItem;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    return-void
.end method

.method public setText(Landroid/text/Spannable;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AdapterHISubItem;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method
