.class public Lcom/santander/app/seguros/ui/widgets/EquipmentItem;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/ImageView;

.field private c:Z

.field private d:Lmbr;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->f()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-direct {p0, p2}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->a(Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->f()V

    .line 61
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lflv;->EquipmentItem:[I

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->a:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/widgets/EquipmentItem;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->c:Z

    return v0
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/widgets/EquipmentItem;)Lmbr;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->d:Lmbr;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/widgets/EquipmentItem;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401c0

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 70
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->g()V

    .line 71
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 101
    const v0, 0x7f10089b

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->a:Landroid/widget/Button;

    .line 102
    const v0, 0x7f10089c

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->b:Landroid/widget/ImageView;

    .line 105
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->a:Landroid/widget/Button;

    new-instance v1, Lmbq;

    invoke-direct {v1, p0}, Lmbq;-><init>(Lcom/santander/app/seguros/ui/widgets/EquipmentItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->c:Z

    return v0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->b:Landroid/widget/ImageView;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 80
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 81
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 82
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->c:Z

    .line 84
    return-void

    .line 79
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public d()V
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->b:Landroid/widget/ImageView;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 89
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 90
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 91
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->c:Z

    .line 93
    return-void

    .line 88
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public e()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    return-void
.end method

.method public setListener(Lmbr;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->d:Lmbr;

    .line 47
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->e:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setTextEquipment(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->a:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method
