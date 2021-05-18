.class public Lcom/santander/app/emprestimo/creditopessoal/presentation/CPTermoCETActivity;
.super Lgrs;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String; = "EXTRA_TERMO"

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "textFooter"

    sput-object v0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPTermoCETActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method private a(Lgky;)Landroid/widget/LinearLayout;
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPTermoCETActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v5, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 63
    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPTermoCETActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v5, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 66
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 68
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 69
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 71
    invoke-virtual {p1}, Lgky;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 73
    const/16 v0, 0xf

    invoke-virtual {v2, v8, v0, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 80
    :goto_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 81
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 83
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    invoke-static {p0, v4}, Lmzu;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 86
    invoke-virtual {p1}, Lgky;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPTermoCETActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const v0, 0x800003

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 89
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    invoke-static {p0, v5}, Lmzu;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 92
    invoke-virtual {p1}, Lgky;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPTermoCETActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const v0, 0x800005

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 95
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    return-object v2

    .line 76
    :cond_0
    const/16 v0, 0xf

    invoke-virtual {v2, v8, v0, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 77
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p1}, Lgky;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 92
    :cond_2
    invoke-virtual {p1}, Lgky;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPTermoCETActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    const-string v1, "EXTRA_TERMO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 36
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 41
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f0400af

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPTermoCETActivity;->setContentView(I)V

    .line 44
    const v0, 0x7f09031d

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPTermoCETActivity;->c(I)V

    .line 46
    const v0, 0x7f100449

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPTermoCETActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 47
    const v1, 0x7f10044a

    invoke-virtual {p0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPTermoCETActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 49
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPTermoCETActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_TERMO"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgky;

    .line 52
    invoke-virtual {v2}, Lgky;->b()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPTermoCETActivity;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    invoke-virtual {v2}, Lgky;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :cond_0
    invoke-direct {p0, v2}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPTermoCETActivity;->a(Lgky;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 58
    :cond_1
    return-void
.end method
