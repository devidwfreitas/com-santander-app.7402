.class public Lcom/santander/app/components/view/cardLayout/CardLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgta;",
            ">;"
        }
    .end annotation
.end field

.field private B:Landroid/widget/LinearLayout;

.field private C:Landroid/widget/LinearLayout;

.field private D:Lcom/santander/app/components/view/SantanderTextView;

.field private E:Landroid/widget/LinearLayout$LayoutParams;

.field private F:Lgsz;

.field private G:Landroid/animation/AnimatorListenerAdapter;

.field private H:Landroid/animation/AnimatorListenerAdapter;

.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private j:Landroid/content/Context;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:F

.field private w:F

.field private x:F

.field private y:F

.field private z:Lgta;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->a:I

    .line 40
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->b:I

    .line 41
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->c:I

    .line 42
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->d:I

    .line 43
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->e:I

    .line 44
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->f:I

    .line 45
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->g:I

    .line 46
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    .line 47
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->i:I

    .line 52
    iput v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->o:I

    iput v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->q:I

    iput v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->r:I

    iput v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    iput v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->t:I

    iput v2, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->u:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->A:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->E:Landroid/widget/LinearLayout$LayoutParams;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->F:Lgsz;

    .line 62
    new-instance v0, Lgsx;

    invoke-direct {v0, p0}, Lgsx;-><init>(Lcom/santander/app/components/view/cardLayout/CardLayout;)V

    iput-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->G:Landroid/animation/AnimatorListenerAdapter;

    .line 79
    new-instance v0, Lgsy;

    invoke-direct {v0, p0}, Lgsy;-><init>(Lcom/santander/app/components/view/cardLayout/CardLayout;)V

    iput-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->H:Landroid/animation/AnimatorListenerAdapter;

    .line 98
    invoke-direct {p0, p1}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->a:I

    .line 40
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->b:I

    .line 41
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->c:I

    .line 42
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->d:I

    .line 43
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->e:I

    .line 44
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->f:I

    .line 45
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->g:I

    .line 46
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    .line 47
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->i:I

    .line 52
    iput v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->o:I

    iput v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->q:I

    iput v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->r:I

    iput v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    iput v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->t:I

    iput v2, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->u:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->A:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->E:Landroid/widget/LinearLayout$LayoutParams;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->F:Lgsz;

    .line 62
    new-instance v0, Lgsx;

    invoke-direct {v0, p0}, Lgsx;-><init>(Lcom/santander/app/components/view/cardLayout/CardLayout;)V

    iput-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->G:Landroid/animation/AnimatorListenerAdapter;

    .line 79
    new-instance v0, Lgsy;

    invoke-direct {v0, p0}, Lgsy;-><init>(Lcom/santander/app/components/view/cardLayout/CardLayout;)V

    iput-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->H:Landroid/animation/AnimatorListenerAdapter;

    .line 103
    invoke-direct {p0, p1}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(Landroid/content/Context;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->a:I

    .line 40
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->b:I

    .line 41
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->c:I

    .line 42
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->d:I

    .line 43
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->e:I

    .line 44
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->f:I

    .line 45
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->g:I

    .line 46
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    .line 47
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->i:I

    .line 52
    iput v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->o:I

    iput v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->q:I

    iput v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->r:I

    iput v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    iput v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->t:I

    iput v2, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->u:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->A:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->E:Landroid/widget/LinearLayout$LayoutParams;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->F:Lgsz;

    .line 62
    new-instance v0, Lgsx;

    invoke-direct {v0, p0}, Lgsx;-><init>(Lcom/santander/app/components/view/cardLayout/CardLayout;)V

    iput-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->G:Landroid/animation/AnimatorListenerAdapter;

    .line 79
    new-instance v0, Lgsy;

    invoke-direct {v0, p0}, Lgsy;-><init>(Lcom/santander/app/components/view/cardLayout/CardLayout;)V

    iput-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->H:Landroid/animation/AnimatorListenerAdapter;

    .line 108
    invoke-direct {p0, p1}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->a:I

    .line 40
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->b:I

    .line 41
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->c:I

    .line 42
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->d:I

    .line 43
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->e:I

    .line 44
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->f:I

    .line 45
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->g:I

    .line 46
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    .line 47
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->i:I

    .line 52
    iput v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->o:I

    iput v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->q:I

    iput v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->r:I

    iput v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    iput v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->t:I

    iput v2, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->u:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->A:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->E:Landroid/widget/LinearLayout$LayoutParams;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->F:Lgsz;

    .line 62
    new-instance v0, Lgsx;

    invoke-direct {v0, p0}, Lgsx;-><init>(Lcom/santander/app/components/view/cardLayout/CardLayout;)V

    iput-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->G:Landroid/animation/AnimatorListenerAdapter;

    .line 79
    new-instance v0, Lgsy;

    invoke-direct {v0, p0}, Lgsy;-><init>(Lcom/santander/app/components/view/cardLayout/CardLayout;)V

    iput-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->H:Landroid/animation/AnimatorListenerAdapter;

    .line 114
    invoke-direct {p0, p1}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(Landroid/content/Context;)V

    .line 115
    return-void
.end method

.method private a(I)I
    .locals 3

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 384
    int-to-float v1, p1

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v0, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 385
    return v0
.end method

.method public static synthetic a(Lcom/santander/app/components/view/cardLayout/CardLayout;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->C:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private a(Lgta;IZ)Landroid/widget/LinearLayout;
    .locals 12

    .prologue
    const/16 v11, 0x10

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, -0x2

    .line 391
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->j:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 394
    new-instance v2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->j:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 395
    invoke-virtual {p1}, Lgta;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p1}, Lgta;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 400
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->c:I

    invoke-direct {v0, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 401
    iget v3, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    iget v4, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    iget v5, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    iget v6, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 402
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    new-instance v3, Lcom/santander/app/components/view/SantanderTextView;

    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->j:Landroid/content/Context;

    invoke-direct {v3, v0}, Lcom/santander/app/components/view/SantanderTextView;-><init>(Landroid/content/Context;)V

    .line 407
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 408
    iget v4, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->i:I

    iget v5, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->i:I

    iget v6, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->g:I

    iget v7, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->i:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/santander/app/components/view/SantanderTextView;->setPadding(IIII)V

    .line 409
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/santander/app/components/view/SantanderTextView;->setMaxLines(I)V

    .line 410
    invoke-virtual {v3, v0}, Lcom/santander/app/components/view/SantanderTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    invoke-virtual {v3, v11}, Lcom/santander/app/components/view/SantanderTextView;->setGravity(I)V

    .line 412
    invoke-virtual {p1}, Lgta;->m()Landroid/text/Spanned;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lgta;->m()Landroid/text/Spanned;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->j:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 416
    const v4, 0x7f0200b7

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 417
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 418
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 419
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->b:I

    invoke-direct {v4, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 420
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v5, p2

    const/high16 v6, 0x42480000    # 50.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 424
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 425
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 427
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 429
    if-eqz p3, :cond_2

    .line 430
    iget v5, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    iget v6, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    iget v7, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->i:I

    add-int/2addr v6, v7

    mul-int/2addr v6, p2

    iget v7, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    invoke-virtual {v4, v5, v6, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 435
    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 438
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 440
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 442
    iget v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->t:I

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setId(I)V

    .line 443
    iget v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->t:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->t:I

    .line 444
    return-object v1

    .line 398
    :cond_0
    invoke-virtual {p1}, Lgta;->g()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 412
    :cond_1
    invoke-virtual {p1}, Lgta;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 432
    :cond_2
    iget v5, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    iget v6, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->b:I

    neg-int v6, v6

    iget v7, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    invoke-virtual {v4, v5, v6, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2
.end method

.method private a(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/16 v2, 0x8

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 449
    invoke-virtual {p0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 450
    invoke-virtual {p0, v3}, Lcom/santander/app/components/view/cardLayout/CardLayout;->setVisibility(I)V

    .line 453
    :cond_0
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 454
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 455
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 456
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 457
    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->p:I

    .line 459
    iput-object p1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->j:Landroid/content/Context;

    .line 460
    invoke-virtual {p0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->removeAllViews()V

    .line 461
    iget v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->t:I

    .line 463
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->setGravity(I)V

    .line 464
    invoke-virtual {p0, v3}, Lcom/santander/app/components/view/cardLayout/CardLayout;->setOrientation(I)V

    .line 465
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->E:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    iget v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    if-gtz v0, :cond_1

    .line 468
    invoke-virtual {p0, v2}, Lcom/santander/app/components/view/cardLayout/CardLayout;->setVisibility(I)V

    .line 506
    :goto_0
    return-void

    .line 471
    :cond_1
    iget v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->r:I

    .line 474
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 475
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 476
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 479
    iget v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->u:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->u:I

    iget v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    if-le v0, v1, :cond_3

    :cond_2
    iget v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    move v1, v0

    .line 484
    :goto_1
    iget v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    if-le v0, v1, :cond_6

    .line 485
    iget v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    sub-int/2addr v0, v1

    move v2, v3

    move v4, v0

    .line 489
    :goto_2
    iget v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    if-ge v4, v0, :cond_5

    .line 491
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgta;

    .line 493
    add-int/lit8 v5, v1, -0x1

    sub-int v8, v5, v2

    if-nez v2, :cond_4

    move v5, v6

    :goto_3
    invoke-direct {p0, v0, v8, v5}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(Lgta;IZ)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 494
    add-int/lit8 v0, v2, 0x1

    .line 489
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    goto :goto_2

    .line 479
    :cond_3
    iget v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->u:I

    move v1, v0

    goto :goto_1

    :cond_4
    move v5, v3

    .line 493
    goto :goto_3

    .line 497
    :cond_5
    invoke-virtual {p0, v7}, Lcom/santander/app/components/view/cardLayout/CardLayout;->addView(Landroid/view/View;)V

    .line 498
    invoke-direct {p0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->c()V

    .line 499
    iput-object v7, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->B:Landroid/widget/LinearLayout;

    .line 501
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->x:F

    .line 502
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->D:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SantanderTextView;->getX()F

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->y:F

    goto :goto_0

    :cond_6
    move v2, v3

    move v4, v3

    goto :goto_2
.end method

.method public static synthetic b(Lcom/santander/app/components/view/cardLayout/CardLayout;)Lgsz;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->F:Lgsz;

    return-object v0
.end method

.method private b()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 193
    const-string v0, "CardLayout"

    const-string v1, "nextCardData"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    if-lez v0, :cond_b

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->C:Landroid/widget/LinearLayout;

    .line 200
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->B:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->t:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 202
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 205
    iget v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->r:I

    iget v3, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->u:I

    sub-int/2addr v0, v3

    .line 206
    if-gez v0, :cond_3

    iget v3, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->u:I

    iget v5, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    if-le v3, v5, :cond_3

    .line 207
    iget v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->r:I

    .line 214
    :cond_0
    :goto_0
    if-eqz v1, :cond_5

    .line 216
    iget-object v3, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 218
    iget-object v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->A:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgta;

    .line 220
    invoke-direct {p0, v0, v2, v4}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(Lgta;IZ)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 221
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 222
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 223
    iget v3, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    add-int/lit8 v2, v2, -0x1

    iget v5, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    mul-int/2addr v2, v5

    iget v5, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    invoke-virtual {v0, v3, v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 225
    iget-object v2, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 227
    iget v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->r:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->r:I

    .line 229
    iget v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->r:I

    if-gez v0, :cond_1

    .line 230
    iget v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->r:I

    .line 233
    :cond_1
    iget v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->u:I

    iget v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    if-lt v0, v1, :cond_4

    iget v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    :goto_1
    move v2, v0

    :goto_2
    move v3, v4

    .line 258
    :goto_3
    if-ge v3, v2, :cond_9

    .line 260
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 262
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 264
    if-nez v3, :cond_8

    .line 265
    iget v5, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    add-int/lit8 v6, v2, -0x1

    iget v7, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    iget v8, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->i:I

    add-int/2addr v7, v8

    mul-int/2addr v6, v7

    iget v7, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    invoke-virtual {v1, v5, v6, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 269
    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 273
    add-int/lit8 v5, v2, -0x1

    sub-int/2addr v5, v3

    int-to-float v5, v5

    const/high16 v6, 0x42480000    # 50.0f

    div-float/2addr v5, v6

    sub-float v5, v9, v5

    .line 275
    if-nez v3, :cond_2

    .line 276
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 279
    :cond_2
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 258
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 209
    :cond_3
    if-gez v0, :cond_0

    .line 210
    iget v3, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    add-int/2addr v0, v3

    goto/16 :goto_0

    .line 233
    :cond_4
    iget v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->u:I

    goto :goto_1

    .line 237
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 239
    iget v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    if-lt v0, v1, :cond_6

    .line 240
    iget v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    add-int/lit8 v0, v0, -0x1

    .line 243
    :cond_6
    iget v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->u:I

    if-ge v2, v1, :cond_7

    iget v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->u:I

    iget v2, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    if-gt v1, v2, :cond_7

    .line 245
    iget-object v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->A:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgta;

    .line 247
    iget v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1, v4}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(Lgta;IZ)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 248
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 249
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 250
    iget v2, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    iget v3, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    add-int/lit8 v3, v3, -0x1

    iget v5, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    mul-int/2addr v3, v5

    iget v5, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    invoke-virtual {v0, v2, v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 251
    iget-object v2, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 252
    iget v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->u:I

    move v2, v0

    .line 253
    goto/16 :goto_2

    .line 254
    :cond_7
    iget v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    move v2, v0

    goto/16 :goto_2

    .line 267
    :cond_8
    iget v5, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    iget v6, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->b:I

    neg-int v6, v6

    iget v7, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    invoke-virtual {v1, v5, v6, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_4

    .line 283
    :cond_9
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->A:Ljava/util/ArrayList;

    iget v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->r:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgta;

    iput-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->z:Lgta;

    .line 285
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->F:Lgsz;

    if-eqz v0, :cond_a

    .line 286
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->F:Lgsz;

    iget-object v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->z:Lgta;

    invoke-interface {v0, v1}, Lgsz;->d(Lgta;)V

    .line 289
    :cond_a
    invoke-direct {p0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->c()V

    .line 293
    :cond_b
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/components/view/cardLayout/CardLayout;)Lgta;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->z:Lgta;

    return-object v0
.end method

.method private c()V
    .locals 13

    .prologue
    const/16 v12, 0x11

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 297
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->D:Lcom/santander/app/components/view/SantanderTextView;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p0, v11}, Lcom/santander/app/components/view/cardLayout/CardLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 299
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/santander/app/components/view/cardLayout/CardLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 300
    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->removeView(Landroid/view/View;)V

    .line 301
    invoke-virtual {p0, v1}, Lcom/santander/app/components/view/cardLayout/CardLayout;->removeView(Landroid/view/View;)V

    .line 302
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->D:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->removeView(Landroid/view/View;)V

    .line 305
    :cond_0
    iget v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    if-lez v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->A:Ljava/util/ArrayList;

    iget v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->r:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgta;

    .line 309
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->j:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 310
    invoke-virtual {v0}, Lgta;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 311
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->c:I

    iget v4, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->c:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 312
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->j:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 316
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 317
    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 319
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->j:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 323
    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 324
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->c:I

    invoke-direct {v4, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 325
    iget v5, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->c:I

    neg-int v5, v5

    iget v6, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->p:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    iget v7, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    invoke-virtual {v4, v5, v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 326
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 328
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 330
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->j:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 331
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->c:I

    iget v5, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->c:I

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 332
    iget v4, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    iget v5, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    invoke-virtual {v2, v8, v4, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 333
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    invoke-virtual {v0}, Lgta;->k()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 336
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->j:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 337
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 338
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 340
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->j:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 343
    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 344
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->c:I

    invoke-direct {v4, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 345
    iget v5, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->p:I

    iget v6, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->e:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    iget v7, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->h:I

    invoke-virtual {v4, v5, v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 346
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 348
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 351
    iget v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 352
    iget v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->f:I

    neg-int v0, v0

    iget v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->i:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    .line 357
    :goto_0
    new-instance v1, Lcom/santander/app/components/view/SantanderTextView;

    iget-object v4, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->j:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/santander/app/components/view/SantanderTextView;-><init>(Landroid/content/Context;)V

    .line 358
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->f:I

    iget v6, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->f:I

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 359
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/santander/app/components/view/SantanderTextView;->setAlpha(F)V

    .line 360
    const v5, 0x7f020080

    invoke-virtual {v1, v5}, Lcom/santander/app/components/view/SantanderTextView;->setBackgroundResource(I)V

    .line 361
    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v1, v5}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 362
    iget v5, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    invoke-virtual {v1, v12}, Lcom/santander/app/components/view/SantanderTextView;->setGravity(I)V

    .line 364
    iget v5, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->a:I

    neg-int v5, v5

    invoke-virtual {v4, v5, v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 365
    invoke-virtual {v1, v4}, Lcom/santander/app/components/view/SantanderTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    invoke-virtual {v1, v10}, Lcom/santander/app/components/view/SantanderTextView;->setTextColor(I)V

    .line 368
    invoke-virtual {v1}, Lcom/santander/app/components/view/SantanderTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 370
    invoke-virtual {p0, v3}, Lcom/santander/app/components/view/cardLayout/CardLayout;->addView(Landroid/view/View;)V

    .line 371
    invoke-virtual {p0, v2}, Lcom/santander/app/components/view/cardLayout/CardLayout;->addView(Landroid/view/View;)V

    .line 372
    invoke-virtual {p0, v1}, Lcom/santander/app/components/view/cardLayout/CardLayout;->addView(Landroid/view/View;)V

    .line 374
    iput-object v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->D:Lcom/santander/app/components/view/SantanderTextView;

    .line 375
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getX()F

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->v:F

    .line 376
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getX()F

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->w:F

    .line 380
    :cond_1
    return-void

    .line 354
    :cond_2
    iget v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->f:I

    neg-int v0, v0

    iget v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->i:I

    iget v4, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    mul-int/2addr v1, v4

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public static synthetic d(Lcom/santander/app/components/view/cardLayout/CardLayout;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->removeAllViews()V

    .line 119
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 120
    return-void
.end method

.method public a(Lgta;)Z
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 143
    if-eqz v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    .line 146
    invoke-virtual {p0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(Landroid/content/Context;)V

    .line 147
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->A:Ljava/util/ArrayList;

    iget v2, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgta;

    iput-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->z:Lgta;

    .line 151
    :cond_0
    return v1
.end method

.method public a(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lgta;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v1

    .line 125
    if-eqz v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    .line 128
    invoke-virtual {p0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(Landroid/content/Context;)V

    .line 129
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->A:Ljava/util/ArrayList;

    iget v2, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgta;

    iput-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->z:Lgta;

    .line 131
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->F:Lgsz;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->F:Lgsz;

    iget-object v2, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->z:Lgta;

    invoke-interface {v0, v2}, Lgsz;->d(Lgta;)V

    .line 136
    :cond_0
    return v1
.end method

.method public b(Lgta;)Z
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 163
    if-eqz v0, :cond_1

    .line 165
    iget-object v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->A:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    .line 166
    iget v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->r:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->r:I

    .line 167
    iget v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->r:I

    if-gez v1, :cond_0

    .line 168
    iget v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->r:I

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->c()V

    .line 172
    iget-object v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->B:Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    .line 173
    invoke-virtual {p0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(Landroid/content/Context;)V

    .line 184
    :cond_1
    :goto_0
    return v0

    .line 174
    :cond_2
    iget v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->s:I

    if-lez v1, :cond_3

    .line 175
    iget-object v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->B:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 176
    invoke-direct {p0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->b()V

    goto :goto_0

    .line 178
    :cond_3
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/santander/app/components/view/cardLayout/CardLayout;->setVisibility(I)V

    .line 179
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->B:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method public b(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lgta;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 157
    invoke-virtual {p0, p1}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 511
    const-string v0, "CardLayout"

    const-string v1, "onTouchEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const-string v0, "CardLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent - MIN_DISTANCE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v2, v0

    .line 514
    iget v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->p:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->o:I

    .line 516
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->B:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->C:Landroid/widget/LinearLayout;

    .line 517
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->t:I

    .line 519
    invoke-virtual {p0, v6}, Lcom/santander/app/components/view/cardLayout/CardLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 520
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/santander/app/components/view/cardLayout/CardLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 522
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_0

    .line 576
    :goto_0
    return v6

    .line 525
    :pswitch_0
    iget-object v3, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int v3, v2, v3

    iput v3, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->k:I

    .line 526
    iget-object v3, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->D:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v3}, Lcom/santander/app/components/view/SantanderTextView;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int v3, v2, v3

    iput v3, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->l:I

    .line 527
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getX()F

    move-result v0

    float-to-int v0, v0

    sub-int v0, v2, v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->m:I

    .line 528
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getX()F

    move-result v0

    float-to-int v0, v0

    sub-int v0, v2, v0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->n:I

    goto :goto_0

    .line 533
    :pswitch_1
    iget v3, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->k:I

    sub-int v3, v2, v3

    iput v3, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->q:I

    .line 534
    iget v3, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->l:I

    sub-int v3, v2, v3

    .line 535
    iget v4, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->m:I

    sub-int v4, v2, v4

    iget v5, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->c:I

    sub-int/2addr v4, v5

    .line 536
    iget v5, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->n:I

    sub-int/2addr v2, v5

    .line 538
    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setX(F)V

    .line 539
    int-to-float v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setX(F)V

    .line 540
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->C:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->q:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setX(F)V

    .line 541
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->D:Lcom/santander/app/components/view/SantanderTextView;

    int-to-float v1, v3

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setX(F)V

    goto :goto_0

    .line 546
    :pswitch_2
    iget v2, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->q:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->q:I

    iget v3, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->o:I

    if-le v2, v3, :cond_1

    .line 549
    iget-object v2, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v3, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->p:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->G:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 550
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->p:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 551
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->p:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 552
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->D:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SantanderTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->p:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 573
    :cond_0
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->q:I

    goto/16 :goto_0

    .line 554
    :cond_1
    iget v2, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->q:I

    neg-int v2, v2

    iget v3, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->o:I

    if-le v2, v3, :cond_2

    .line 557
    iget-object v2, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v3, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->p:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->H:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 558
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->p:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 559
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->p:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 560
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->D:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SantanderTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->p:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 563
    :cond_2
    iget-object v2, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v3, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->x:F

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 564
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->v:F

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 565
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->w:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 566
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->D:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SantanderTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->y:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 568
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 569
    const-wide/16 v2, 0x96

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->F:Lgsz;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->F:Lgsz;

    iget-object v1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->z:Lgta;

    invoke-interface {v0, v1}, Lgsz;->c(Lgta;)V

    goto/16 :goto_1

    .line 522
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setContractor(Lgsz;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->F:Lgsz;

    .line 94
    return-void
.end method

.method public setNumberOfDisplayedCards(I)V
    .locals 0

    .prologue
    .line 188
    iput p1, p0, Lcom/santander/app/components/view/cardLayout/CardLayout;->u:I

    .line 189
    return-void
.end method
