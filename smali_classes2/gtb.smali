.class public Lgtb;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lgti;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/LinearLayout;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgth;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lgti;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lgti;",
            "Ljava/util/ArrayList",
            "<",
            "Lgth;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p1, p0, Lgtb;->a:Landroid/app/Activity;

    .line 41
    iput-object p2, p0, Lgtb;->b:Lgti;

    .line 42
    iput-object p3, p0, Lgtb;->e:Ljava/util/ArrayList;

    .line 43
    return-void
.end method

.method private a(Lgth;)Landroid/widget/LinearLayout;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    .line 86
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lgtb;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 90
    const/16 v1, 0xf

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 92
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 93
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lgtb;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v1, p0, Lgtb;->a:Landroid/app/Activity;

    invoke-static {v1, v4}, Lmzu;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 96
    invoke-virtual {p1}, Lgth;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {p1}, Lgth;->a()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 99
    invoke-virtual {p1}, Lgth;->b()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 101
    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 106
    :cond_0
    invoke-virtual {p1}, Lgth;->d()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    const/4 v1, 0x0

    invoke-virtual {v2, v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 109
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    return-object v0
.end method

.method static synthetic a(Lgtb;)Lgti;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lgtb;->b:Lgti;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lgtb;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lgtb;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgth;

    .line 78
    iget-object v2, p0, Lgtb;->d:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lgtb;->a(Lgth;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgtb;->requestWindowFeature(I)Z

    .line 50
    const v0, 0x7f040144

    invoke-virtual {p0, v0}, Lgtb;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lgtb;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 53
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 55
    invoke-virtual {p0, v2}, Lgtb;->setCancelable(Z)V

    .line 57
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 58
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 59
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 61
    const v0, 0x7f10069c

    invoke-virtual {p0, v0}, Lgtb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lgtb;->c:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lgtb;->c:Landroid/widget/Button;

    new-instance v1, Lgtc;

    invoke-direct {v1, p0}, Lgtc;-><init>(Lgtb;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v0, 0x7f10069b

    invoke-virtual {p0, v0}, Lgtb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lgtb;->d:Landroid/widget/LinearLayout;

    .line 71
    invoke-direct {p0}, Lgtb;->a()V

    .line 72
    return-void
.end method
