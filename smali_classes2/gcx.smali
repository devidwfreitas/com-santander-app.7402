.class Lgcx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lgcy;

.field final synthetic b:Lgbd;

.field final synthetic c:Lgcw;


# direct methods
.method constructor <init>(Lgcw;Lgcy;Lgbd;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lgcx;->c:Lgcw;

    iput-object p2, p0, Lgcx;->a:Lgcy;

    iput-object p3, p0, Lgcx;->b:Lgbd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lgcx;->a:Lgcy;

    iget-object v0, v0, Lgcy;->itemView:Landroid/view/View;

    iget-object v1, p0, Lgcx;->b:Lgbd;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lgcx;->c:Lgcw;

    invoke-static {v0}, Lgcw;->a(Lgcw;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lgcx;->a:Lgcy;

    iget-object v1, v1, Lgcy;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 55
    return-void
.end method
