.class public Loz;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lpb;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lrd;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lom;Landroid/app/Dialog;)V
    .locals 4

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    iput-object p1, p0, Loz;->b:Landroid/content/Context;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lkz;->shape_selector_fg_unselected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Loz;->d:Landroid/graphics/drawable/Drawable;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lkz;->shape_selector_fg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Loz;->e:Landroid/graphics/drawable/Drawable;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lkx;->inv_white_three:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Loz;->f:I

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lkx;->inv_transparent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Loz;->g:I

    .line 42
    const-string v0, "maxDueDays"

    invoke-virtual {p2, v0}, Lom;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Loz;->a:Ljava/util/List;

    .line 44
    const-string v0, "flagOthers"

    invoke-virtual {p2, v0}, Lom;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Loz;->a:Ljava/util/List;

    new-instance v1, Lrd;

    const-string v2, "Outro"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lrd;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :goto_0
    return-void

    .line 47
    :cond_0
    sget v0, Lla;->dialog_pzr_campo_prazo:I

    invoke-virtual {p3, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Loz;->c:Landroid/widget/EditText;

    .line 48
    iget-object v0, p0, Loz;->c:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 49
    iget-object v1, p0, Loz;->c:Landroid/widget/EditText;

    iget-object v0, p0, Loz;->a:Ljava/util/List;

    iget-object v2, p0, Loz;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrd;

    invoke-virtual {v0}, Lrd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Loz;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrd;

    .line 81
    iget-object v1, p0, Loz;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrd;

    .line 82
    if-ne v1, v0, :cond_0

    .line 83
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lrd;->a(Z)V

    goto :goto_0

    .line 85
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lrd;->a(Z)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p0}, Loz;->notifyDataSetChanged()V

    .line 91
    return-void
.end method

.method static synthetic a(Loz;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Loz;->a(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lpb;
    .locals 4

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 56
    new-instance v1, Lpb;

    sget v2, Llc;->layout_prazo_item:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v0}, Lpb;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lpb;I)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Loz;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrd;

    iput-object v0, p1, Lpb;->c:Lrd;

    .line 62
    iget-object v0, p1, Lpb;->a:Landroid/widget/TextView;

    iget-object v1, p1, Lpb;->c:Lrd;

    invoke-virtual {v1}, Lrd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p1, Lpb;->b:Landroid/widget/Button;

    iget-object v1, p1, Lpb;->c:Lrd;

    invoke-virtual {v1}, Lrd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p1, Lpb;->b:Landroid/widget/Button;

    new-instance v1, Lpa;

    invoke-direct {v1, p0, p1}, Lpa;-><init>(Loz;Lpb;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p1, Lpb;->c:Lrd;

    invoke-virtual {v0}, Lrd;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p1, Lpb;->b:Landroid/widget/Button;

    iget-object v1, p0, Loz;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object v0, p1, Lpb;->a:Landroid/widget/TextView;

    iget v1, p0, Loz;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    iget-object v0, p0, Loz;->c:Landroid/widget/EditText;

    iget-object v1, p1, Lpb;->c:Lrd;

    invoke-virtual {v1}, Lrd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p1, Lpb;->b:Landroid/widget/Button;

    iget-object v1, p0, Loz;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v0, p1, Lpb;->a:Landroid/widget/TextView;

    iget v1, p0, Loz;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lpb;

    invoke-virtual {p0, p1, p2}, Loz;->a(Lpb;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Loz;->a(Landroid/view/ViewGroup;I)Lpb;

    move-result-object v0

    return-object v0
.end method
