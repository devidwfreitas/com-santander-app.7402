.class public Llld;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lllj;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkrt;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Llll;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkrt;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 47
    iput-object p1, p0, Llld;->a:Ljava/util/List;

    .line 48
    iput-object p2, p0, Llld;->b:Landroid/content/Context;

    .line 50
    return-void
.end method

.method static synthetic a(Llld;)Llll;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Llld;->c:Llll;

    return-object v0
.end method

.method static synthetic a(Llld;Lllj;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Llld;->a(Lllj;)V

    return-void
.end method

.method private a(Lllj;)V
    .locals 2

    .prologue
    .line 164
    invoke-static {p1}, Lllj;->g(Lllj;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setVisibility(I)V

    .line 165
    invoke-static {p1}, Lllj;->a(Lllj;)Landroid/support/design/widget/TextInputEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputEditText;->requestFocus()Z

    .line 166
    return-void
.end method

.method private a(Lllj;Lkrt;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 154
    invoke-virtual {p2}, Lkrt;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lkrt;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-static {p1}, Lllj;->b(Lllj;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/AppCompatRadioButton;->setChecked(Z)V

    .line 161
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-virtual {p2}, Lkrt;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lkrt;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    invoke-static {p1}, Lllj;->c(Lllj;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/AppCompatRadioButton;->setChecked(Z)V

    goto :goto_0

    .line 159
    :cond_1
    invoke-direct {p0, p1}, Llld;->b(Lllj;)V

    goto :goto_0
.end method

.method private a()Z
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Llld;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrt;

    .line 146
    invoke-virtual {v0}, Lkrt;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lkrt;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lkrt;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    :cond_1
    invoke-virtual {v0}, Lkrt;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lkrt;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lkrt;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    :cond_2
    const/4 v0, 0x0

    .line 150
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Llld;Lllj;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Llld;->b(Lllj;)V

    return-void
.end method

.method private b(Lllj;)V
    .locals 2

    .prologue
    .line 169
    invoke-static {p1}, Lllj;->a(Lllj;)Landroid/support/design/widget/TextInputEditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-static {p1}, Lllj;->g(Lllj;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setVisibility(I)V

    .line 171
    return-void
.end method

.method static synthetic b(Llld;)Z
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Llld;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Llld;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Llld;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lllj;
    .locals 3

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04013b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 55
    new-instance v1, Lllj;

    invoke-direct {v1, p0, v0}, Lllj;-><init>(Llld;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lllj;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-virtual {p1, v3}, Lllj;->a(Ljava/lang/Runnable;)V

    .line 61
    iget-object v0, p0, Llld;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrt;

    .line 62
    invoke-static {p1}, Lllj;->a(Lllj;)Landroid/support/design/widget/TextInputEditText;

    move-result-object v1

    invoke-virtual {v0}, Lkrt;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 64
    new-instance v1, Llle;

    invoke-direct {v1, p0, v0, p1}, Llle;-><init>(Llld;Lkrt;Lllj;)V

    invoke-virtual {p1, v1}, Lllj;->a(Ljava/lang/Runnable;)V

    .line 75
    invoke-static {p1}, Lllj;->b(Lllj;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/AppCompatRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 76
    invoke-static {p1}, Lllj;->b(Lllj;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v1

    new-instance v2, Lllf;

    invoke-direct {v2, p0, v0, p1}, Lllf;-><init>(Llld;Lkrt;Lllj;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 98
    invoke-static {p1}, Lllj;->c(Lllj;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/AppCompatRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 99
    invoke-static {p1}, Lllj;->c(Lllj;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v1

    new-instance v2, Lllg;

    invoke-direct {v2, p0, p1, v0}, Lllg;-><init>(Llld;Lllj;Lkrt;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 123
    invoke-direct {p0, p1, v0}, Llld;->a(Lllj;Lkrt;)V

    .line 125
    invoke-static {p1}, Lllj;->d(Lllj;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-static {p1}, Lllj;->d(Lllj;)Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Lllh;

    invoke-direct {v2, p0, p1}, Lllh;-><init>(Llld;Lllj;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-static {p1}, Lllj;->e(Lllj;)Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Llli;

    invoke-direct {v2, p0, p1}, Llli;-><init>(Llld;Lllj;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-virtual {v0}, Lkrt;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {p1}, Lllj;->f(Lllj;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    return-void
.end method

.method public a(Llll;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Llld;->c:Llll;

    .line 44
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Llld;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lllj;

    invoke-virtual {p0, p1, p2}, Llld;->a(Lllj;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Llld;->a(Landroid/view/ViewGroup;I)Lllj;

    move-result-object v0

    return-object v0
.end method
