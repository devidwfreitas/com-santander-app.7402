.class public Lkfd;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Lkcy;

.field private c:Landroid/content/Context;

.field private d:Lkdg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lkfd;->a:Landroid/view/LayoutInflater;

    .line 45
    iput-object p1, p0, Lkfd;->c:Landroid/content/Context;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkcy;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lkfd;->a:Landroid/view/LayoutInflater;

    .line 39
    iput-object p2, p0, Lkfd;->b:Lkcy;

    .line 40
    iput-object p1, p0, Lkfd;->c:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private a(II)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lkfe;

    invoke-direct {v0, p0, p1, p2}, Lkfe;-><init>(Lkfd;II)V

    return-object v0
.end method

.method static synthetic a(Lkfd;)Lkcy;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lkfd;->b:Lkcy;

    return-object v0
.end method

.method static synthetic a(Lkfd;Lkdg;)Lkdg;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lkfd;->d:Lkdg;

    return-object p1
.end method

.method private b(II)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 202
    new-instance v0, Lkff;

    invoke-direct {v0, p0, p1, p2}, Lkff;-><init>(Lkfd;II)V

    return-object v0
.end method

.method static synthetic b(Lkfd;)Lkdg;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lkfd;->d:Lkdg;

    return-object v0
.end method

.method static synthetic c(Lkfd;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lkfd;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lkfd;->b:Lkcy;

    invoke-virtual {v0}, Lkcy;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkdf;

    invoke-virtual {v0}, Lkdf;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    .prologue
    .line 75
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 122
    if-nez p4, :cond_0

    .line 123
    iget-object v0, p0, Lkfd;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0400c9

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 124
    new-instance v1, Lkfg;

    invoke-direct {v1, v2}, Lkfg;-><init>(Lkfe;)V

    .line 126
    const v0, 0x7f100487

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lkfg;->a(Lkfg;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 127
    const v0, 0x7f100101

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lkfg;->b(Lkfg;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 128
    const v0, 0x7f10048a

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lkfg;->c(Lkfg;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 129
    const v0, 0x7f10048c

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v1, v0}, Lkfg;->a(Lkfg;Landroid/widget/Button;)Landroid/widget/Button;

    .line 130
    const v0, 0x7f10048d

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v1, v0}, Lkfg;->b(Lkfg;Landroid/widget/Button;)Landroid/widget/Button;

    .line 131
    const v0, 0x7f10048e

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, Lkfg;->a(Lkfg;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 133
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 138
    :goto_0
    iget-object v0, p0, Lkfd;->b:Lkcy;

    invoke-virtual {v0}, Lkcy;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkdf;

    invoke-virtual {v0}, Lkdf;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkdh;

    .line 140
    invoke-virtual {v0}, Lkdh;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 141
    invoke-static {v1}, Lkfg;->a(Lkfg;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lkdh;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :goto_1
    invoke-virtual {v0}, Lkdh;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 147
    invoke-static {v1}, Lkfg;->b(Lkfg;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lkdh;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :goto_2
    invoke-virtual {v0}, Lkdh;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 153
    invoke-static {v1}, Lkfg;->c(Lkfg;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lkdh;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :goto_3
    if-eqz p3, :cond_4

    .line 159
    invoke-static {v1}, Lkfg;->d(Lkfg;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 164
    :goto_4
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 165
    invoke-static {v1}, Lkfg;->e(Lkfg;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 169
    :goto_5
    invoke-static {v1}, Lkfg;->e(Lkfg;)Landroid/widget/Button;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lkfd;->a(II)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    invoke-static {v1}, Lkfg;->f(Lkfg;)Landroid/widget/Button;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lkfd;->b(II)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    return-object p4

    .line 135
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfg;

    move-object v1, v0

    goto/16 :goto_0

    .line 143
    :cond_1
    invoke-static {v1}, Lkfg;->a(Lkfg;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 149
    :cond_2
    invoke-static {v1}, Lkfg;->b(Lkfg;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 155
    :cond_3
    invoke-static {v1}, Lkfg;->c(Lkfg;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 161
    :cond_4
    invoke-static {v1}, Lkfg;->d(Lkfg;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 167
    :cond_5
    invoke-static {v1}, Lkfg;->e(Lkfg;)Landroid/widget/Button;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_5
.end method

.method public getChildrenCount(I)I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lkfd;->b:Lkcy;

    invoke-virtual {v0}, Lkcy;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkdf;

    invoke-virtual {v0}, Lkdf;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lkfd;->b:Lkcy;

    invoke-virtual {v0}, Lkcy;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lkfd;->b:Lkcy;

    invoke-virtual {v0}, Lkcy;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    .prologue
    .line 70
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 87
    if-nez p3, :cond_0

    .line 88
    iget-object v0, p0, Lkfd;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0400c6

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 89
    new-instance v1, Lkfh;

    invoke-direct {v1, v4}, Lkfh;-><init>(Lkfe;)V

    .line 91
    const v0, 0x7f10047c

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lkfh;->a(Lkfh;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 92
    const v0, 0x7f10047d

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lkfh;->b(Lkfh;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 94
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 99
    :goto_0
    iget-object v0, p0, Lkfd;->b:Lkcy;

    invoke-virtual {v0}, Lkcy;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkdf;

    .line 101
    invoke-virtual {v0}, Lkdf;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 102
    invoke-static {v1}, Lkfh;->a(Lkfh;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lkdf;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :goto_1
    invoke-virtual {v0}, Lkdf;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 108
    invoke-static {v1}, Lkfh;->b(Lkfh;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkdf;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :goto_2
    invoke-virtual {p3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-object p3

    .line 96
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfh;

    move-object v1, v0

    goto :goto_0

    .line 104
    :cond_1
    invoke-static {v1}, Lkfh;->a(Lkfh;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 110
    :cond_2
    invoke-static {v1}, Lkfh;->b(Lkfh;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method
