.class Lihs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ligj;

.field final synthetic b:Liht;

.field final synthetic c:Lihr;


# direct methods
.method constructor <init>(Lihr;Ligj;Liht;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lihs;->c:Lihr;

    iput-object p2, p0, Lihs;->a:Ligj;

    iput-object p3, p0, Lihs;->b:Liht;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lihs;->a:Ligj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ligj;->a(Z)V

    .line 62
    iget-object v0, p0, Lihs;->b:Liht;

    iget-object v0, v0, Liht;->itemView:Landroid/view/View;

    iget-object v1, p0, Lihs;->a:Ligj;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lihs;->c:Lihr;

    invoke-virtual {v0}, Lihr;->notifyDataSetChanged()V

    .line 66
    iget-object v0, p0, Lihs;->c:Lihr;

    invoke-static {v0}, Lihr;->a(Lihr;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lihs;->b:Liht;

    iget-object v1, v1, Liht;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 67
    return-void
.end method
