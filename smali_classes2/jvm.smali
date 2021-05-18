.class public Ljvm;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljst;",
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
            "Ljst;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 32
    iput-object p1, p0, Ljvm;->a:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Ljvm;->b:Ljava/util/List;

    .line 34
    return-void
.end method

.method private a(Lgku;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 137
    invoke-virtual {p1}, Lgku;->c()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-virtual {p1}, Lgku;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lgku;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CNPJ/CPF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laes;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    :cond_0
    :goto_0
    return-object v0

    .line 141
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 142
    invoke-static {v0}, Laes;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Ljvm;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljst;

    invoke-virtual {v0}, Ljst;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    .prologue
    .line 43
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 50
    if-nez p4, :cond_0

    .line 52
    iget-object v0, p0, Ljvm;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 53
    const v1, 0x7f040301

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 54
    new-instance v1, Ljvo;

    invoke-direct {v1, v2}, Ljvo;-><init>(Ljvn;)V

    .line 57
    const v0, 0x7f1004a2

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Ljvo;->a(Ljvo;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 58
    const v0, 0x7f100fb9

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Ljvo;->b(Ljvo;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 60
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    :goto_0
    iget-object v0, p0, Ljvm;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljst;

    invoke-virtual {v0}, Ljst;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgku;

    .line 67
    invoke-static {v1}, Ljvo;->a(Ljvo;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lgku;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-static {v1}, Ljvo;->b(Ljvo;)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v0}, Ljvm;->a(Lgku;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-object p4

    .line 62
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvo;

    move-object v1, v0

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Ljvm;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljst;

    invoke-virtual {v0}, Ljst;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Ljvm;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Ljvm;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    .prologue
    .line 90
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 97
    if-nez p3, :cond_0

    .line 99
    iget-object v0, p0, Ljvm;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 100
    const v1, 0x7f0402fd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 101
    new-instance v1, Ljvp;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Ljvp;-><init>(Ljvn;)V

    .line 103
    const v0, 0x7f10032d

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Ljvp;->a(Ljvp;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 104
    const v0, 0x7f100fa8

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Ljvp;->a(Ljvp;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 106
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 111
    :goto_0
    iget-object v0, p0, Ljvm;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljst;

    .line 113
    if-eqz p2, :cond_1

    .line 114
    invoke-static {v1}, Ljvp;->a(Ljvp;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f02006b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    :goto_1
    invoke-static {v1, p2}, Ljvp;->a(Ljvp;Z)Z

    .line 121
    invoke-static {v1}, Ljvp;->b(Ljvp;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljst;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-object p3

    .line 108
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvp;

    move-object v1, v0

    goto :goto_0

    .line 116
    :cond_1
    invoke-static {v1}, Ljvp;->a(Ljvp;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020061

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method
