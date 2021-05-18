.class Linq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/widget/LinearLayout;

.field final synthetic c:Landroid/widget/Button;

.field final synthetic d:Linp;


# direct methods
.method constructor <init>(Linp;ILandroid/widget/LinearLayout;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Linq;->d:Linp;

    iput p2, p0, Linq;->a:I

    iput-object p3, p0, Linq;->b:Landroid/widget/LinearLayout;

    iput-object p4, p0, Linq;->c:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Linq;->d:Linp;

    invoke-static {v0}, Linp;->a(Linp;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Linq;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lioi;->a(Z)V

    .line 123
    iget-object v0, p0, Linq;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Linq;->c:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Linq;->d:Linp;

    invoke-virtual {v0}, Linp;->notifyDataSetChanged()V

    .line 126
    return-void
.end method
