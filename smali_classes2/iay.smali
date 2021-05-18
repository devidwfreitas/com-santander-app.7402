.class Liay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Liaw;


# direct methods
.method constructor <init>(Liaw;I)V
    .locals 0

    .prologue
    .line 531
    iput-object p1, p0, Liay;->b:Liaw;

    iput p2, p0, Liay;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 534
    iget-object v0, p0, Liay;->b:Liaw;

    invoke-static {v0}, Liaw;->a(Liaw;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Liay;->b:Liaw;

    invoke-static {v0}, Liaw;->a(Liaw;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    iget-object v0, p0, Liay;->b:Liaw;

    invoke-static {v0}, Liaw;->b(Liaw;)D

    move-result-wide v2

    iget-object v0, p0, Liay;->b:Liaw;

    invoke-static {v0}, Liaw;->a(Liaw;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Liay;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzb;

    invoke-virtual {v0}, Lhzb;->c()D

    move-result-wide v0

    cmpl-double v0, v2, v0

    if-ltz v0, :cond_3

    .line 538
    iget-object v0, p0, Liay;->b:Liaw;

    invoke-static {v0}, Liaw;->b(Liaw;)D

    move-result-wide v2

    iget-object v0, p0, Liay;->b:Liaw;

    invoke-static {v0}, Liaw;->a(Liaw;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Liay;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzb;

    invoke-virtual {v0}, Lhzb;->c()D

    move-result-wide v0

    sub-double v0, v2, v0

    .line 543
    :goto_0
    iget-object v2, p0, Liay;->b:Liaw;

    invoke-static {v2}, Liaw;->c(Liaw;)Liam;

    move-result-object v2

    invoke-interface {v2}, Liam;->l()Landroid/widget/LinearLayout;

    move-result-object v2

    iget v3, p0, Liay;->a:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 544
    iget-object v2, p0, Liay;->b:Liaw;

    invoke-static {v2, v0, v1}, Liaw;->a(Liaw;D)D

    .line 545
    iget-object v0, p0, Liay;->b:Liaw;

    invoke-static {v0}, Liaw;->a(Liaw;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Liay;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 546
    iget-object v0, p0, Liay;->b:Liaw;

    invoke-static {v0}, Liaw;->c(Liaw;)Liam;

    move-result-object v0

    invoke-interface {v0}, Liam;->h_()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Anexos ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Liay;->b:Liaw;

    invoke-virtual {v2}, Liaw;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    :cond_0
    iget-object v0, p0, Liay;->b:Liaw;

    invoke-static {v0}, Liaw;->a(Liaw;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Liay;->b:Liaw;

    invoke-static {v0}, Liaw;->a(Liaw;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 550
    :cond_1
    iget-object v0, p0, Liay;->b:Liaw;

    invoke-static {v0}, Liaw;->c(Liaw;)Liam;

    move-result-object v0

    invoke-interface {v0}, Liam;->h_()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 552
    :cond_2
    return-void

    .line 540
    :cond_3
    iget-object v0, p0, Liay;->b:Liaw;

    invoke-static {v0}, Liaw;->a(Liaw;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Liay;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzb;

    invoke-virtual {v0}, Lhzb;->c()D

    move-result-wide v0

    iget-object v2, p0, Liay;->b:Liaw;

    invoke-static {v2}, Liaw;->b(Liaw;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    goto/16 :goto_0
.end method
