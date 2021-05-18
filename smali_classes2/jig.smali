.class Ljig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljih;

.field final synthetic b:Ljdw;

.field final synthetic c:Ljif;


# direct methods
.method constructor <init>(Ljif;Ljih;Ljdw;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Ljig;->c:Ljif;

    iput-object p2, p0, Ljig;->a:Ljih;

    iput-object p3, p0, Ljig;->b:Ljdw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    iget-object v0, p0, Ljig;->a:Ljih;

    iget-object v0, v0, Ljih;->itemView:Landroid/view/View;

    iget-object v1, p0, Ljig;->b:Ljdw;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Ljig;->b:Ljdw;

    invoke-virtual {v0}, Ljdw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Ljig;->a:Ljih;

    invoke-static {v0}, Ljih;->b(Ljih;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Ljig;->a:Ljih;

    invoke-static {v0}, Ljih;->a(Ljih;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 67
    iget-object v0, p0, Ljig;->b:Ljdw;

    invoke-virtual {v0, v2}, Ljdw;->a(Z)V

    .line 74
    :goto_0
    iget-object v0, p0, Ljig;->c:Ljif;

    invoke-virtual {v0}, Ljif;->notifyDataSetChanged()V

    .line 76
    iget-object v0, p0, Ljig;->c:Ljif;

    invoke-static {v0}, Ljif;->a(Ljif;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Ljig;->a:Ljih;

    iget-object v1, v1, Ljih;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 77
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Ljig;->a:Ljih;

    invoke-static {v0}, Ljih;->b(Ljih;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Ljig;->a:Ljih;

    invoke-static {v0}, Ljih;->a(Ljih;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 71
    iget-object v0, p0, Ljig;->b:Ljdw;

    invoke-virtual {v0, v3}, Ljdw;->a(Z)V

    goto :goto_0
.end method
