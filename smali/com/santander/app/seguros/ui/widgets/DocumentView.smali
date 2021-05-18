.class public Lcom/santander/app/seguros/ui/widgets/DocumentView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageButton;

.field private d:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/DocumentView;->c()V

    .line 36
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/DocumentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0402d1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/DocumentView;->d()V

    .line 41
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/DocumentView;->b()V

    .line 42
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 65
    const v0, 0x7f100ef2

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentView;->a:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f100ef3

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentView;->b:Landroid/widget/ImageView;

    .line 67
    const v0, 0x7f100ef4

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentView;->c:Landroid/widget/ImageButton;

    .line 68
    const v0, 0x7f1004e7

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentView;->d:Landroid/widget/ImageButton;

    .line 69
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 57
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/DocumentView;->a()V

    .line 61
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentView;->a:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method public setPhoto(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 51
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentView;->a:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_0
    return-void
.end method

.method public setTextCenter(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/DocumentView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method
