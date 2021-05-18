.class Lltn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llts;

.field final synthetic b:Lkut;

.field final synthetic c:Lltm;


# direct methods
.method constructor <init>(Lltm;Llts;Lkut;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lltn;->c:Lltm;

    iput-object p2, p0, Lltn;->a:Llts;

    iput-object p3, p0, Lltn;->b:Lkut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lltn;->c:Lltm;

    invoke-static {v0}, Lltm;->a(Lltm;)Lltt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lltn;->c:Lltm;

    invoke-static {v0}, Lltm;->a(Lltm;)Lltt;

    move-result-object v0

    iget-object v1, p0, Lltn;->a:Llts;

    invoke-virtual {v1}, Llts;->getAdapterPosition()I

    move-result v1

    iget-object v2, p0, Lltn;->b:Lkut;

    invoke-virtual {v2}, Lkut;->f()Lkus;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lltt;->a(ILkus;)V

    .line 56
    :cond_0
    return-void
.end method
