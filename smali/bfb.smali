.class public Lbfb;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;


# direct methods
.method public constructor <init>(Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lbfb;->a:Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lbfb;->a:Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;

    invoke-static {v0}, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->a(Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;)V

    .line 77
    return-void
.end method
