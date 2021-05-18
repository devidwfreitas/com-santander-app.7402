.class Llmf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Llme;


# direct methods
.method constructor <init>(Llme;I)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Llmf;->b:Llme;

    iput p2, p0, Llmf;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Llmf;->b:Llme;

    invoke-static {v0}, Llme;->a(Llme;)Llmh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Llmf;->b:Llme;

    invoke-static {v0}, Llme;->a(Llme;)Llmh;

    move-result-object v0

    iget v1, p0, Llmf;->a:I

    invoke-interface {v0, v1}, Llmh;->a(I)V

    .line 59
    :cond_0
    return-void
.end method
