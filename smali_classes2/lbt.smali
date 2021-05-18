.class Llbt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/widget/RelativeLayout;

.field final synthetic c:I

.field final synthetic d:Landroid/widget/ImageButton;

.field final synthetic e:Llbq;


# direct methods
.method constructor <init>(Llbq;Landroid/view/View;Landroid/widget/RelativeLayout;ILandroid/widget/ImageButton;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Llbt;->e:Llbq;

    iput-object p2, p0, Llbt;->a:Landroid/view/View;

    iput-object p3, p0, Llbt;->b:Landroid/widget/RelativeLayout;

    iput p4, p0, Llbt;->c:I

    iput-object p5, p0, Llbt;->d:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 183
    iget-object v0, p0, Llbt;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Llbt;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Llbt;->c:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 185
    iget-object v0, p0, Llbt;->e:Llbq;

    iget-object v1, p0, Llbt;->d:Landroid/widget/ImageButton;

    invoke-static {v0, v1, v3}, Llbq;->a(Llbq;Landroid/view/View;I)V

    .line 186
    iget-object v0, p0, Llbt;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Llbt;->e:Llbq;

    iget-object v1, p0, Llbt;->a:Landroid/view/View;

    invoke-static {v0, v1, v4, v3}, Llbq;->a(Llbq;Landroid/view/View;II)V

    .line 194
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Llbt;->e:Llbq;

    iget-object v1, p0, Llbt;->d:Landroid/widget/ImageButton;

    const/16 v2, 0xb4

    invoke-static {v0, v1, v2}, Llbq;->a(Llbq;Landroid/view/View;I)V

    .line 190
    iget-object v0, p0, Llbt;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Llbt;->e:Llbq;

    iget-object v1, p0, Llbt;->a:Landroid/view/View;

    invoke-static {v0, v1, v3, v4}, Llbq;->a(Llbq;Landroid/view/View;II)V

    .line 192
    iget-object v0, p0, Llbt;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method
