.class Lgda;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lgdb;

.field final synthetic b:Lgbb;

.field final synthetic c:Lgcz;


# direct methods
.method constructor <init>(Lgcz;Lgdb;Lgbb;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lgda;->c:Lgcz;

    iput-object p2, p0, Lgda;->a:Lgdb;

    iput-object p3, p0, Lgda;->b:Lgbb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lgda;->a:Lgdb;

    iget-object v0, v0, Lgdb;->itemView:Landroid/view/View;

    iget-object v1, p0, Lgda;->b:Lgbb;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lgda;->c:Lgcz;

    invoke-static {v0}, Lgcz;->a(Lgcz;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lgda;->a:Lgdb;

    iget-object v1, v1, Lgdb;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 59
    return-void
.end method
