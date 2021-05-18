.class Lluw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llvd;

.field final synthetic b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic c:Lluv;


# direct methods
.method constructor <init>(Lluv;Llvd;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lluw;->c:Lluv;

    iput-object p2, p0, Lluw;->a:Llvd;

    iput-object p3, p0, Lluw;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 127
    iget-object v0, p0, Lluw;->a:Llvd;

    invoke-static {v0}, Llvd;->b(Llvd;)Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    move-result-object v0

    iget-object v1, p0, Lluw;->c:Lluv;

    invoke-static {v1}, Lluv;->a(Lluv;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->setDuration(I)V

    .line 128
    iget-object v0, p0, Lluw;->a:Llvd;

    invoke-static {v0}, Llvd;->b(Llvd;)Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lluw;->a:Llvd;

    invoke-static {v0}, Llvd;->f(Llvd;)Landroid/widget/ImageButton;

    move-result-object v0

    sget-object v1, Landroid/view/View;->ROTATION_X:Landroid/util/Property;

    new-array v2, v4, [F

    const/high16 v3, 0x43340000    # 180.0f

    aput v3, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 134
    :goto_0
    iget-object v1, p0, Lluw;->a:Llvd;

    invoke-static {v1}, Llvd;->h(Llvd;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 135
    iget-object v1, p0, Lluw;->a:Llvd;

    invoke-static {v1}, Llvd;->b(Llvd;)Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    move-result-object v1

    new-instance v2, Llux;

    invoke-direct {v2, p0}, Llux;-><init>(Lluw;)V

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->setOnExpansionUpdateListener(Lmbu;)V

    .line 156
    iget-object v1, p0, Lluw;->a:Llvd;

    invoke-virtual {v1}, Llvd;->getAdapterPosition()I

    move-result v1

    iget-object v2, p0, Lluw;->c:Lluv;

    invoke-static {v2}, Lluv;->c(Lluv;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 157
    iget-object v1, p0, Lluw;->c:Lluv;

    invoke-static {v1, v6}, Lluv;->a(Lluv;I)I

    .line 158
    iget-object v1, p0, Lluw;->c:Lluv;

    invoke-static {v1, v6}, Lluv;->b(Lluv;I)I

    .line 159
    iget-object v1, p0, Lluw;->a:Llvd;

    invoke-static {v1}, Llvd;->b(Llvd;)Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->c(Z)V

    .line 167
    :goto_1
    const-wide/16 v2, 0x17c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 168
    new-instance v1, Lluy;

    invoke-direct {v1, p0}, Lluy;-><init>(Lluw;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 200
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 202
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lluw;->a:Llvd;

    invoke-static {v0}, Llvd;->f(Llvd;)Landroid/widget/ImageButton;

    move-result-object v0

    sget-object v1, Landroid/view/View;->ROTATION_X:Landroid/util/Property;

    new-array v2, v4, [F

    const/4 v3, 0x0

    aput v3, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_1
    iget-object v1, p0, Lluw;->a:Llvd;

    invoke-static {v1}, Llvd;->b(Llvd;)Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->b(Z)V

    .line 162
    iget-object v1, p0, Lluw;->c:Lluv;

    iget-object v2, p0, Lluw;->c:Lluv;

    invoke-static {v2}, Lluv;->c(Lluv;)I

    move-result v2

    invoke-static {v1, v2}, Lluv;->b(Lluv;I)I

    .line 163
    iget-object v1, p0, Lluw;->c:Lluv;

    iget-object v2, p0, Lluw;->a:Llvd;

    invoke-virtual {v2}, Llvd;->getAdapterPosition()I

    move-result v2

    invoke-static {v1, v2}, Lluv;->a(Lluv;I)I

    goto :goto_1
.end method
