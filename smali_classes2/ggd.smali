.class Lggd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lgge;

.field final synthetic b:Lgev;

.field final synthetic c:Lggc;


# direct methods
.method constructor <init>(Lggc;Lgge;Lgev;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lggd;->c:Lggc;

    iput-object p2, p0, Lggd;->a:Lgge;

    iput-object p3, p0, Lggd;->b:Lgev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lggd;->a:Lgge;

    iget-object v0, v0, Lgge;->itemView:Landroid/view/View;

    iget-object v1, p0, Lggd;->b:Lgev;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lggd;->c:Lggc;

    invoke-static {v0}, Lggc;->a(Lggc;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lggd;->a:Lgge;

    iget-object v1, v1, Lgge;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 58
    return-void
.end method
