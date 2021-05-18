.class Lliv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroid/widget/ImageButton;

.field final synthetic d:Landroid/widget/ImageButton;

.field final synthetic e:Llis;


# direct methods
.method constructor <init>(Llis;IILandroid/widget/ImageButton;Landroid/widget/ImageButton;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lliv;->e:Llis;

    iput p2, p0, Lliv;->a:I

    iput p3, p0, Lliv;->b:I

    iput-object p4, p0, Lliv;->c:Landroid/widget/ImageButton;

    iput-object p5, p0, Lliv;->d:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lliv;->e:Llis;

    invoke-static {v0}, Llis;->c(Llis;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lliv;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 117
    iget-object v0, p0, Lliv;->e:Llis;

    invoke-static {v0}, Llis;->d(Llis;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lliv;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 119
    iget-object v0, p0, Lliv;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lliv;->e:Llis;

    iget-object v1, p0, Lliv;->c:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Llis;->a(Llis;Landroid/widget/ImageButton;)V

    .line 121
    iget-object v0, p0, Lliv;->e:Llis;

    iget-object v1, p0, Lliv;->d:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Llis;->b(Llis;Landroid/widget/ImageButton;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lliv;->e:Llis;

    invoke-static {v0}, Llis;->e(Llis;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    return-void
.end method
