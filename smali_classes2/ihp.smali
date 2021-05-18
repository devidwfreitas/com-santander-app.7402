.class Lihp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lihq;

.field final synthetic b:Ligl;

.field final synthetic c:Liho;


# direct methods
.method constructor <init>(Liho;Lihq;Ligl;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lihp;->c:Liho;

    iput-object p2, p0, Lihp;->a:Lihq;

    iput-object p3, p0, Lihp;->b:Ligl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lihp;->a:Lihq;

    iget-object v0, v0, Lihq;->itemView:Landroid/view/View;

    iget-object v1, p0, Lihp;->b:Ligl;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lihp;->c:Liho;

    invoke-static {v0}, Liho;->a(Liho;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lihp;->a:Lihq;

    iget-object v1, v1, Lihq;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 59
    return-void
.end method
