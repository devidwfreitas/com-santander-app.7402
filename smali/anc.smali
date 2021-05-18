.class public Lanc;
.super Lamv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamv",
        "<",
        "Land;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/widget/TextView;

.field protected final b:Landroid/widget/TextView;

.field protected final c:Landroid/widget/TextView;

.field protected final d:Landroid/widget/TextView;

.field protected final e:Landroid/widget/LinearLayout;

.field protected final f:Landroid/widget/LinearLayout;

.field protected final g:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 27
    sget v0, Lalu;->santander_adapter_drop_down_conta:I

    invoke-direct {p0, p1, v0}, Lamv;-><init>(Landroid/view/ViewGroup;I)V

    .line 28
    iget-object v0, p0, Lanc;->itemView:Landroid/view/View;

    sget v1, Lals;->agcc_text_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lanc;->a:Landroid/widget/TextView;

    .line 29
    iget-object v0, p0, Lanc;->itemView:Landroid/view/View;

    sget v1, Lals;->balance_label:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lanc;->b:Landroid/widget/TextView;

    .line 30
    iget-object v0, p0, Lanc;->itemView:Landroid/view/View;

    sget v1, Lals;->balance_text_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lanc;->c:Landroid/widget/TextView;

    .line 31
    iget-object v0, p0, Lanc;->itemView:Landroid/view/View;

    sget v1, Lals;->balance_total_text_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lanc;->d:Landroid/widget/TextView;

    .line 32
    iget-object v0, p0, Lanc;->itemView:Landroid/view/View;

    sget v1, Lals;->balance_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lanc;->e:Landroid/widget/LinearLayout;

    .line 33
    iget-object v0, p0, Lanc;->itemView:Landroid/view/View;

    sget v1, Lals;->balance_total_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lanc;->f:Landroid/widget/LinearLayout;

    .line 34
    iget-object v0, p0, Lanc;->itemView:Landroid/view/View;

    sget v1, Lals;->hidden_text_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lanc;->g:Landroid/widget/TextView;

    .line 35
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 79
    iget-object v0, p0, Lanc;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lanc;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lanc;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 82
    return-void
.end method

.method private b(Land;)V
    .locals 3

    .prologue
    .line 53
    invoke-interface {p1}, Land;->c()Ljava/lang/String;

    move-result-object v1

    .line 54
    iget-object v0, p0, Lanc;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x106000c

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 55
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    iget-object v0, p0, Lanc;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lalp;->santander_error:I

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 58
    :cond_0
    iget-object v2, p0, Lanc;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    iget-object v2, p0, Lanc;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v1, p0, Lanc;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    return-void
.end method

.method private c(Land;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 64
    invoke-interface {p1}, Land;->d()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lanc;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 76
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lanc;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x106000c

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 69
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    iget-object v0, p0, Lanc;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lalp;->santander_error:I

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 72
    :cond_1
    iget-object v2, p0, Lanc;->d:Landroid/widget/TextView;

    const-string v3, "R$ %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, p0, Lanc;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    iget-object v0, p0, Lanc;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private d(Land;)V
    .locals 4

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 85
    iget-object v2, p0, Lanc;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v2, p0, Lanc;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    iget-object v2, p0, Lanc;->f:Landroid/widget/LinearLayout;

    invoke-interface {p1}, Land;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 88
    return-void

    :cond_0
    move v0, v1

    .line 87
    goto :goto_0
.end method


# virtual methods
.method public a(Land;)V
    .locals 5

    .prologue
    .line 39
    iget-object v0, p0, Lanc;->a:Landroid/widget/TextView;

    const-string v1, "%s / %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Land;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {p1}, Land;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lanc;->c:Landroid/widget/TextView;

    invoke-interface {p1}, Land;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-direct {p0, p1}, Lanc;->b(Land;)V

    .line 43
    invoke-direct {p0, p1}, Lanc;->c(Land;)V

    .line 45
    invoke-interface {p1}, Land;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0}, Lanc;->a()V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-direct {p0, p1}, Lanc;->d(Land;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Land;

    invoke-virtual {p0, p1}, Lanc;->a(Land;)V

    return-void
.end method
