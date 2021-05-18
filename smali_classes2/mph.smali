.class Lmph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmpi;

.field final synthetic b:Lmld;

.field final synthetic c:Lmpf;


# direct methods
.method constructor <init>(Lmpf;Lmpi;Lmld;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lmph;->c:Lmpf;

    iput-object p2, p0, Lmph;->a:Lmpi;

    iput-object p3, p0, Lmph;->b:Lmld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lmph;->a:Lmpi;

    iget-object v0, v0, Lmpi;->itemView:Landroid/view/View;

    iget-object v1, p0, Lmph;->b:Lmld;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lmph;->c:Lmpf;

    invoke-static {v0}, Lmpf;->a(Lmpf;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lmph;->a:Lmpi;

    iget-object v1, v1, Lmpi;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 79
    return-void
.end method
