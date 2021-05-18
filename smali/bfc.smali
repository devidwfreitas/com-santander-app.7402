.class public Lbfc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;

.field final synthetic b:Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;


# direct methods
.method public constructor <init>(Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lbfc;->b:Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;

    iput-object p2, p0, Lbfc;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lbfc;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lbfd;

    invoke-direct {v1, p0}, Lbfd;-><init>(Lbfc;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 93
    return-void
.end method
