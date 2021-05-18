.class public Lnfe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/view/View;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v2, p0, Lnfe;->a:Landroid/app/Activity;

    .line 23
    iput-object v2, p0, Lnfe;->b:Landroid/view/View;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnfe;->c:Z

    .line 27
    iput-object p1, p0, Lnfe;->a:Landroid/app/Activity;

    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 29
    const v1, 0x7f0403b4

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnfe;->b:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lnfe;->b:Landroid/view/View;

    const v1, 0x7f1005ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 31
    iget-object v1, p0, Lnfe;->b:Landroid/view/View;

    const v2, 0x7f1011fc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 32
    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 33
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v1, p0, Lnfe;->a:Landroid/app/Activity;

    .line 23
    iput-object v1, p0, Lnfe;->b:Landroid/view/View;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnfe;->c:Z

    .line 37
    iput-object p1, p0, Lnfe;->a:Landroid/app/Activity;

    .line 38
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 39
    invoke-virtual {v0, p4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnfe;->b:Landroid/view/View;

    .line 40
    iget-object v0, p0, Lnfe;->b:Landroid/view/View;

    const v1, 0x7f1005ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 41
    iget-object v1, p0, Lnfe;->b:Landroid/view/View;

    const v2, 0x7f1011fc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 42
    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 43
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 47
    iget-boolean v0, p0, Lnfe;->c:Z

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 49
    iget-object v1, p0, Lnfe;->a:Landroid/app/Activity;

    iget-object v2, p0, Lnfe;->b:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnfe;->c:Z

    .line 52
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lnfe;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lnfe;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnfe;->c:Z

    .line 57
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lnfe;->c:Z

    return v0
.end method
