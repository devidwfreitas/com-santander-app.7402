.class public Lhit;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lgky;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lhit;->a:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lhit;->c:Ljava/util/List;

    .line 32
    return-void
.end method


# virtual methods
.method public a(I)Lgky;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lhit;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgky;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lhit;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lhit;->a(I)Lgky;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 51
    .line 53
    if-nez p2, :cond_0

    .line 55
    iget-object v0, p0, Lhit;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lhit;->b:Landroid/view/LayoutInflater;

    .line 56
    iget-object v0, p0, Lhit;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0402af

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 57
    new-instance v1, Lhiv;

    invoke-direct {v1, v2}, Lhiv;-><init>(Lhiu;)V

    .line 59
    const v0, 0x7f100e12

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lhiv;->a(Lhiv;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 60
    const v0, 0x7f100e13

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lhiv;->b(Lhiv;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 62
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    :goto_0
    iget-object v0, p0, Lhit;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgky;

    .line 68
    invoke-static {v1}, Lhiv;->a(Lhiv;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lgky;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-static {v1}, Lhiv;->b(Lhiv;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lgky;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-object p2

    .line 64
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhiv;

    move-object v1, v0

    goto :goto_0
.end method
