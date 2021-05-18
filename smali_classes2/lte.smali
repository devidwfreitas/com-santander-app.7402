.class Llte;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lltg;

.field final synthetic b:Lltd;


# direct methods
.method constructor <init>(Lltd;Lltg;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Llte;->b:Lltd;

    iput-object p2, p0, Llte;->a:Lltg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 81
    iget-object v1, p0, Llte;->b:Lltd;

    iget-object v2, p0, Llte;->a:Lltg;

    invoke-virtual {v2}, Lltg;->getAdapterPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lltd;->a(Lltd;Ljava/lang/Integer;)V

    .line 82
    iget-object v1, p0, Llte;->a:Lltg;

    invoke-static {v1}, Lltg;->a(Lltg;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 83
    iget-object v1, p0, Llte;->b:Lltd;

    invoke-virtual {v1}, Lltd;->notifyDataSetChanged()V

    .line 84
    iget-object v1, p0, Llte;->b:Lltd;

    invoke-static {v1}, Lltd;->a(Lltd;)Lltf;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 85
    iget-object v1, p0, Llte;->b:Lltd;

    invoke-static {v1}, Lltd;->a(Lltd;)Lltf;

    move-result-object v1

    iget-object v2, p0, Llte;->b:Lltd;

    invoke-static {v2}, Lltd;->b(Lltd;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Llte;->b:Lltd;

    invoke-static {v2}, Lltd;->b(Lltd;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    invoke-interface {v1, v0}, Lltf;->a(Z)V

    .line 87
    :cond_2
    return-void
.end method
