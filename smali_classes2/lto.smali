.class Llto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lkus;

.field final synthetic c:Lltm;


# direct methods
.method constructor <init>(Lltm;ILkus;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Llto;->c:Lltm;

    iput p2, p0, Llto;->a:I

    iput-object p3, p0, Llto;->b:Lkus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Llto;->c:Lltm;

    invoke-static {v0}, Lltm;->a(Lltm;)Lltt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Llto;->c:Lltm;

    invoke-static {v0}, Lltm;->a(Lltm;)Lltt;

    move-result-object v0

    iget v1, p0, Llto;->a:I

    iget-object v2, p0, Llto;->b:Lkus;

    invoke-interface {v0, v1, v2}, Lltt;->b(ILkus;)V

    .line 107
    :cond_0
    return-void
.end method
