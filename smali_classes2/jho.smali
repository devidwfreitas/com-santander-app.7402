.class Ljho;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljhq;

.field final synthetic b:Ljdx;

.field final synthetic c:Ljhn;


# direct methods
.method constructor <init>(Ljhn;Ljhq;Ljdx;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Ljho;->c:Ljhn;

    iput-object p2, p0, Ljho;->a:Ljhq;

    iput-object p3, p0, Ljho;->b:Ljdx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Ljho;->a:Ljhq;

    invoke-static {v0}, Ljhq;->g(Ljhq;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Ljho;->b:Ljdx;

    invoke-virtual {v0}, Ljdx;->g()Ljdu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljdu;->a(Z)V

    .line 93
    iget-object v0, p0, Ljho;->a:Ljhq;

    iget-object v0, v0, Ljhq;->itemView:Landroid/view/View;

    iget-object v1, p0, Ljho;->b:Ljdx;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Ljho;->c:Ljhn;

    invoke-virtual {v0}, Ljhn;->notifyDataSetChanged()V

    .line 97
    iget-object v0, p0, Ljho;->c:Ljhn;

    invoke-static {v0}, Ljhn;->a(Ljhn;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Ljho;->a:Ljhq;

    iget-object v1, v1, Ljhq;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 98
    return-void
.end method
