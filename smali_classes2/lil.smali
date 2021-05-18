.class Llil;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lliq;

.field final synthetic b:Lktq;

.field final synthetic c:Llik;


# direct methods
.method constructor <init>(Llik;Lliq;Lktq;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Llil;->c:Llik;

    iput-object p2, p0, Llil;->a:Lliq;

    iput-object p3, p0, Llil;->b:Lktq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 88
    iget-object v0, p0, Llil;->a:Lliq;

    invoke-static {v0}, Lliq;->f(Lliq;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 89
    iget-object v0, p0, Llil;->b:Lktq;

    invoke-virtual {v0}, Lktq;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 90
    :goto_0
    iget-object v0, p0, Llil;->b:Lktq;

    invoke-virtual {v0}, Lktq;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 91
    iget-object v0, p0, Llil;->b:Lktq;

    invoke-virtual {v0}, Lktq;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 92
    new-instance v3, Lcom/santander/app/seguros/ui/widgets/AdapterHISubItem;

    iget-object v4, p0, Llil;->a:Lliq;

    iget-object v4, v4, Lliq;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/santander/app/seguros/ui/widgets/AdapterHISubItem;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-virtual {v3, v0}, Lcom/santander/app/seguros/ui/widgets/AdapterHISubItem;->setText(Landroid/text/Spannable;)V

    .line 94
    iget-object v0, p0, Llil;->b:Lktq;

    invoke-virtual {v0}, Lktq;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_0

    .line 95
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Lcom/santander/app/seguros/ui/widgets/AdapterHISubItem;->setLineVisible(I)V

    .line 99
    :goto_1
    iget-object v0, p0, Llil;->a:Lliq;

    invoke-static {v0}, Lliq;->f(Lliq;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v3, v2}, Lcom/santander/app/seguros/ui/widgets/AdapterHISubItem;->setLineVisible(I)V

    goto :goto_1

    .line 102
    :cond_1
    return-void
.end method
