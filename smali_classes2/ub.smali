.class Lub;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lack;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lto;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/String;

.field private f:Lacg;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lacg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lto;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lacg;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 37
    check-cast p1, Lack;

    iput-object p1, p0, Lub;->a:Lack;

    .line 38
    iput-object p2, p0, Lub;->b:Ljava/util/List;

    .line 39
    iput-object p3, p0, Lub;->c:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lub;->d:Ljava/lang/Integer;

    .line 41
    iput-object p5, p0, Lub;->e:Ljava/lang/String;

    .line 42
    iput-object p6, p0, Lub;->f:Lacg;

    .line 43
    return-void
.end method

.method static synthetic a(Lub;)Ljava/util/List;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lub;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lub;)Lacg;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lub;->f:Lacg;

    return-object v0
.end method

.method static synthetic c(Lub;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lub;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lub;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lub;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic e(Lub;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lub;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lub;)Lack;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lub;->a:Lack;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lud;
    .locals 3

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Llc;->layout_card_produtos_children:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 70
    new-instance v1, Lud;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lud;-><init>(Landroid/view/View;Luc;)V

    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lub;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .prologue
    .line 75
    move-object v0, p1

    check-cast v0, Lud;

    iget-object v0, v0, Lud;->a:Landroid/widget/RelativeLayout;

    new-instance v1, Luc;

    invoke-direct {v1, p0, p2}, Luc;-><init>(Lub;I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, p1

    .line 90
    check-cast v0, Lud;

    iget-object v1, v0, Lud;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lub;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lto;

    invoke-virtual {v0}, Lto;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p1

    .line 91
    check-cast v0, Lud;

    iget-object v1, v0, Lud;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lub;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lto;

    invoke-virtual {v0}, Lto;->s()Lsw;

    move-result-object v0

    invoke-virtual {v0}, Lsw;->b()Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Laat;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    check-cast p1, Lud;

    iget-object v0, p1, Lud;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lub;->a(Landroid/view/ViewGroup;I)Lud;

    move-result-object v0

    return-object v0
.end method
