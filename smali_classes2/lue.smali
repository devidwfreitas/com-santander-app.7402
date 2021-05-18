.class Llue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Llud;


# direct methods
.method constructor <init>(Llud;I)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Llue;->b:Llud;

    iput p2, p0, Llue;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Llue;->b:Llud;

    invoke-static {v0}, Llud;->a(Llud;)Llug;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Llue;->b:Llud;

    invoke-static {v0}, Llud;->a(Llud;)Llug;

    move-result-object v0

    iget v1, p0, Llue;->a:I

    invoke-interface {v0, v1}, Llug;->a(I)V

    .line 53
    :cond_0
    return-void
.end method
