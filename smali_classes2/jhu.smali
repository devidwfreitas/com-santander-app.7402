.class Ljhu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljhv;

.field final synthetic b:Ljdz;

.field final synthetic c:Ljht;


# direct methods
.method constructor <init>(Ljht;Ljhv;Ljdz;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Ljhu;->c:Ljht;

    iput-object p2, p0, Ljhu;->a:Ljhv;

    iput-object p3, p0, Ljhu;->b:Ljdz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Ljhu;->a:Ljhv;

    iget-object v0, v0, Ljhv;->itemView:Landroid/view/View;

    iget-object v1, p0, Ljhu;->b:Ljdz;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Ljhu;->c:Ljht;

    invoke-static {v0}, Ljht;->a(Ljht;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Ljhu;->a:Ljhv;

    iget-object v1, v1, Ljhv;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 57
    return-void
.end method
