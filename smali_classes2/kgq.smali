.class public Lkgq;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkgm;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;

.field private d:Lkgx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lkgx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lkgm;",
            ">;",
            "Lkgx;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    iput-object p1, p0, Lkgq;->a:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lkgq;->b:Ljava/util/List;

    .line 39
    iput-object p3, p0, Lkgq;->d:Lkgx;

    .line 40
    return-void
.end method

.method static synthetic a(Lkgq;)Ljava/util/List;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lkgq;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lkgq;)Lkgx;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lkgq;->d:Lkgx;

    return-object v0
.end method


# virtual methods
.method public a(Lkgs;)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p1, Lkgs;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v0, p1, Lkgs;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 125
    return-void
.end method

.method public b(Lkgs;)V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p1, Lkgs;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v0, p1, Lkgs;->f:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 130
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lkgq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lkgq;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 55
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 63
    if-nez p2, :cond_0

    .line 64
    iget-object v0, p0, Lkgq;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lkgq;->c:Landroid/view/LayoutInflater;

    .line 65
    iget-object v0, p0, Lkgq;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0400da

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 66
    new-instance v0, Lkgs;

    invoke-direct {v0, p2}, Lkgs;-><init>(Landroid/view/View;)V

    .line 67
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 74
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "(%s) %s"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v0, p0, Lkgq;->b:Ljava/util/List;

    .line 76
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkgm;

    invoke-virtual {v0}, Lkgm;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    iget-object v0, p0, Lkgq;->b:Ljava/util/List;

    .line 77
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkgm;

    invoke-virtual {v0}, Lkgm;->w()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    .line 73
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 80
    iget-object v0, p0, Lkgq;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkgm;

    invoke-virtual {v0}, Lkgm;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p0, v1}, Lkgq;->a(Lkgs;)V

    .line 82
    iget-object v3, v1, Lkgs;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lkgq;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkgm;

    invoke-virtual {v0}, Lkgm;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :goto_1
    iget-object v3, v1, Lkgs;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lkgq;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkgm;

    invoke-virtual {v0}, Lkgm;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, v1, Lkgs;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, v1, Lkgs;->e:Landroid/widget/ImageView;

    const v2, 0x7f020566

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    iget-object v0, v1, Lkgs;->e:Landroid/widget/ImageView;

    new-instance v1, Lkgr;

    invoke-direct {v1, p0, p1}, Lkgr;-><init>(Lkgq;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-object p2

    .line 70
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkgs;

    move-object v1, v0

    goto/16 :goto_0

    .line 84
    :cond_1
    invoke-virtual {p0, v1}, Lkgq;->b(Lkgs;)V

    .line 85
    iget-object v3, v1, Lkgs;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lkgq;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkgm;

    invoke-virtual {v0}, Lkgm;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
