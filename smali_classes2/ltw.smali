.class Lltw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lltu;


# direct methods
.method constructor <init>(Lltu;I)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lltw;->b:Lltu;

    iput p2, p0, Lltw;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lltw;->b:Lltu;

    invoke-static {v0}, Lltu;->a(Lltu;)Llty;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lltw;->b:Lltu;

    invoke-static {v0}, Lltu;->a(Lltu;)Llty;

    move-result-object v0

    iget v1, p0, Lltw;->a:I

    invoke-interface {v0, v1}, Llty;->b(I)V

    .line 61
    :cond_0
    return-void
.end method
