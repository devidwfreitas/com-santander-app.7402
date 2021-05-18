.class public Llth;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lltk;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkuy;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lltl;

.field private c:Z

.field private d:Landroid/support/v7/app/AppCompatActivity;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/support/v7/app/AppCompatActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkuy;",
            ">;",
            "Landroid/support/v7/app/AppCompatActivity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Llth;->c:Z

    .line 44
    iput-object p1, p0, Llth;->a:Ljava/util/List;

    .line 45
    iput-object p2, p0, Llth;->d:Landroid/support/v7/app/AppCompatActivity;

    .line 46
    return-void
.end method

.method private b()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-object v0, p0, Llth;->d:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f010064

    aput v1, v0, v2

    .line 57
    iget-object v1, p0, Llth;->d:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AppCompatActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 58
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 59
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lltk;
    .locals 3

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040368

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 51
    new-instance v1, Lltk;

    invoke-direct {v1, p0, v0}, Lltk;-><init>(Llth;Landroid/view/View;)V

    return-object v1
.end method

.method public a()Lltl;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Llth;->b:Lltl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llth;->b:Lltl;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkuy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    iput-object p1, p0, Llth;->a:Ljava/util/List;

    .line 36
    return-void
.end method

.method public a(Lltk;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    iget-object v0, p0, Llth;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkuy;

    .line 68
    invoke-static {p1}, Lltk;->a(Lltk;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-static {p1}, Lltk;->b(Lltk;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-static {p1}, Lltk;->c(Lltk;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkuy;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-static {p1}, Lltk;->d(Lltk;)Lcom/santander/app/seguros/ui/widgets/CircleImageView;

    move-result-object v1

    invoke-virtual {v0}, Lkuy;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/CircleImageView;->setImageResource(I)V

    .line 72
    invoke-static {p1}, Lltk;->a(Lltk;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 73
    iget-boolean v1, p0, Llth;->c:Z

    if-eqz v1, :cond_0

    .line 74
    invoke-static {p1}, Lltk;->a(Lltk;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 75
    invoke-static {p1}, Lltk;->a(Lltk;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-direct {p0}, Llth;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 76
    invoke-static {p1}, Lltk;->a(Lltk;)Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Llti;

    invoke-direct {v2, p0, v0}, Llti;-><init>(Llth;Lkuy;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-static {p1}, Lltk;->b(Lltk;)Landroid/widget/ImageButton;

    move-result-object v1

    new-instance v2, Lltj;

    invoke-direct {v2, p0, v0}, Lltj;-><init>(Llth;Lkuy;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-static {p1}, Lltk;->a(Lltk;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 94
    invoke-static {p1}, Lltk;->a(Lltk;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public a(Lltl;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Llth;->b:Lltl;

    .line 135
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Llth;->c:Z

    .line 40
    invoke-virtual {p0}, Llth;->notifyDataSetChanged()V

    .line 41
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Llth;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llth;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lltk;

    invoke-virtual {p0, p1, p2}, Llth;->a(Lltk;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Llth;->a(Landroid/view/ViewGroup;I)Lltk;

    move-result-object v0

    return-object v0
.end method
