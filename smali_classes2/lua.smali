.class Llua;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lkvp;

.field final synthetic b:Lltz;


# direct methods
.method constructor <init>(Lltz;Lkvp;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Llua;->b:Lltz;

    iput-object p2, p0, Llua;->a:Lkvp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Llua;->b:Lltz;

    invoke-virtual {v0}, Lltz;->a()Lluc;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llua;->b:Lltz;

    invoke-virtual {v0}, Lltz;->a()Lluc;

    move-result-object v0

    iget-object v1, p0, Llua;->a:Lkvp;

    invoke-interface {v0, v1}, Lluc;->a(Lkvp;)V

    .line 51
    :cond_0
    return-void
.end method
