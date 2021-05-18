.class Lhda;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic b:I

.field final synthetic c:Lhcz;


# direct methods
.method constructor <init>(Lhcz;Landroid/widget/LinearLayout;I)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lhda;->c:Lhcz;

    iput-object p2, p0, Lhda;->a:Landroid/widget/LinearLayout;

    iput p3, p0, Lhda;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lhda;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lhda;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lhda;->c:Lhcz;

    invoke-static {v0}, Lhcz;->a(Lhcz;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lhda;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lheq;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lheq;->a(Ljava/lang/Boolean;)V

    .line 107
    :goto_0
    iget-object v0, p0, Lhda;->c:Lhcz;

    invoke-virtual {v0}, Lhcz;->notifyDataSetChanged()V

    .line 108
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lhda;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lhda;->c:Lhcz;

    invoke-static {v0}, Lhcz;->a(Lhcz;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lhda;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lheq;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lheq;->a(Ljava/lang/Boolean;)V

    goto :goto_0
.end method
