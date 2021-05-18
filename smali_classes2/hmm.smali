.class public Lhmm;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lhmm;->a:Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 85
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 86
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 87
    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_0

    .line 88
    const/4 v0, 0x1

    const/high16 v1, 0x42480000    # 50.0f

    iget-object v2, p0, Lhmm;->a:Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;

    .line 89
    invoke-virtual {v2}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 88
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 91
    :cond_0
    return-void
.end method
