.class Ljkq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljkr;

.field final synthetic b:Ljdb;

.field final synthetic c:Ljkp;


# direct methods
.method constructor <init>(Ljkp;Ljkr;Ljdb;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Ljkq;->c:Ljkp;

    iput-object p2, p0, Ljkq;->a:Ljkr;

    iput-object p3, p0, Ljkq;->b:Ljdb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Ljkq;->a:Ljkr;

    iget-object v0, v0, Ljkr;->itemView:Landroid/view/View;

    iget-object v1, p0, Ljkq;->b:Ljdb;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Ljkq;->c:Ljkp;

    invoke-static {v0}, Ljkp;->a(Ljkp;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Ljkq;->a:Ljkr;

    iget-object v1, v1, Ljkr;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 68
    return-void
.end method
