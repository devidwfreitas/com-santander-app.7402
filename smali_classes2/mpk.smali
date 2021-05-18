.class Lmpk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmpl;

.field final synthetic b:Lmkq;

.field final synthetic c:Lmpj;


# direct methods
.method constructor <init>(Lmpj;Lmpl;Lmkq;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lmpk;->c:Lmpj;

    iput-object p2, p0, Lmpk;->a:Lmpl;

    iput-object p3, p0, Lmpk;->b:Lmkq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lmpk;->a:Lmpl;

    iget-object v0, v0, Lmpl;->itemView:Landroid/view/View;

    iget-object v1, p0, Lmpk;->b:Lmkq;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lmpk;->c:Lmpj;

    invoke-static {v0}, Lmpj;->a(Lmpj;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lmpk;->a:Lmpl;

    iget-object v1, v1, Lmpl;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 64
    return-void
.end method
