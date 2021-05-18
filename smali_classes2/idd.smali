.class public Lidd;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Libu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Libu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lidd;->a:Landroid/view/LayoutInflater;

    .line 31
    iput-object p2, p0, Lidd;->b:Ljava/util/List;

    .line 32
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lidd;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Libu;

    invoke-virtual {v0}, Libu;->d()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p2

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    .prologue
    .line 93
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 105
    if-nez p4, :cond_0

    .line 106
    new-instance v1, Lide;

    invoke-direct {v1, p0}, Lide;-><init>(Lidd;)V

    .line 107
    iget-object v0, p0, Lidd;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f040118

    invoke-virtual {v0, v2, p5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 109
    const v0, 0x7f1005b3

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lide;->a:Landroid/widget/ImageView;

    .line 110
    const v0, 0x7f1005b5

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, v1, Lide;->b:Lcom/santander/app/components/view/SantanderTextView;

    .line 111
    const v0, 0x7f1005b6

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, v1, Lide;->c:Lcom/santander/app/components/view/SantanderTextView;

    .line 112
    const v0, 0x7f1005b7

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v1, Lide;->d:Landroid/widget/FrameLayout;

    .line 114
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 119
    :goto_0
    iget-object v0, p0, Lidd;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Libu;

    invoke-virtual {v0}, Libu;->c()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-lt p2, v0, :cond_1

    .line 120
    iget-object v0, v1, Lide;->b:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 121
    iget-object v2, v1, Lide;->c:Lcom/santander/app/components/view/SantanderTextView;

    iget-object v0, p0, Lidd;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Libu;

    invoke-virtual {v0}, Libu;->d()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {v2, v0}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, v1, Lide;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    :goto_1
    if-eqz p3, :cond_2

    .line 133
    iget-object v0, v1, Lide;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 138
    :goto_2
    return-object p4

    .line 116
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lide;

    move-object v1, v0

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, v1, Lide;->b:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 126
    iget-object v2, v1, Lide;->b:Lcom/santander/app/components/view/SantanderTextView;

    iget-object v0, p0, Lidd;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Libu;

    invoke-virtual {v0}, Libu;->c()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {v2, v0}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v2, v1, Lide;->c:Lcom/santander/app/components/view/SantanderTextView;

    iget-object v0, p0, Lidd;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Libu;

    invoke-virtual {v0}, Libu;->d()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {v2, v0}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, v1, Lide;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 135
    :cond_2
    iget-object v0, v1, Lide;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public getChildrenCount(I)I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lidd;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Libu;

    invoke-virtual {v0}, Libu;->d()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lidd;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lidd;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    .prologue
    .line 46
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 53
    if-nez p3, :cond_0

    .line 54
    new-instance v1, Lidf;

    invoke-direct {v1, p0}, Lidf;-><init>(Lidd;)V

    .line 55
    iget-object v0, p0, Lidd;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f040211

    invoke-virtual {v0, v2, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 57
    const v0, 0x7f100a24

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, v1, Lidf;->b:Lcom/santander/app/components/view/SantanderTextView;

    .line 58
    const v0, 0x7f100a25

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, v1, Lidf;->c:Lcom/santander/app/components/view/SantanderTextView;

    .line 59
    const v0, 0x7f100a23

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lidf;->d:Landroid/widget/ImageView;

    .line 61
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    :goto_0
    iget-object v0, p0, Lidd;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Libu;

    invoke-virtual {v0}, Libu;->c()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 67
    iget-object v0, v1, Lidf;->c:Lcom/santander/app/components/view/SantanderTextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 72
    :goto_1
    if-eqz p2, :cond_2

    .line 73
    iget-object v0, v1, Lidf;->d:Landroid/widget/ImageView;

    const v2, 0x7f02006b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    :goto_2
    iput-boolean p2, v1, Lidf;->a:Z

    .line 80
    iget-object v2, v1, Lidf;->b:Lcom/santander/app/components/view/SantanderTextView;

    iget-object v0, p0, Lidd;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Libu;

    invoke-virtual {v0}, Libu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v1, v1, Lidf;->c:Lcom/santander/app/components/view/SantanderTextView;

    iget-object v0, p0, Lidd;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Libu;

    invoke-virtual {v0}, Libu;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    return-object p3

    .line 63
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lidf;

    move-object v1, v0

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, v1, Lidf;->c:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    goto :goto_1

    .line 75
    :cond_2
    iget-object v0, v1, Lidf;->d:Landroid/widget/ImageView;

    const v2, 0x7f020061

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method
