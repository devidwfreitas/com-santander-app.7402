.class public Lcom/santander/app/emprestimo/creditopessoal/presentation/CPTermosCondicoesActivity;
.super Lgrs;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String; = "EXTRA_TERMO"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method private a(Lgky;)Landroid/widget/LinearLayout;
    .locals 8

    .prologue
    const/16 v7, 0xf

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    .line 57
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 59
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 61
    invoke-virtual {p1}, Lgky;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 63
    invoke-virtual {v1, v6, v7, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 70
    :goto_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 72
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    invoke-static {p0, v4}, Lmzu;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_1

    .line 77
    invoke-virtual {p1}, Lgky;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    return-object v1

    .line 66
    :cond_0
    invoke-virtual {v1, v6, v7, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 67
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p1}, Lgky;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
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

    const-class v1, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPTermosCondicoesActivity;

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
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f0400b2

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPTermosCondicoesActivity;->setContentView(I)V

    .line 43
    const v0, 0x7f09032b

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPTermosCondicoesActivity;->c(I)V

    .line 45
    const v0, 0x7f100450

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPTermosCondicoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 47
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPTermosCondicoesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_TERMO"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgky;

    .line 50
    invoke-direct {p0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPTermosCondicoesActivity;->a(Lgky;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method
