.class Llle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lkrt;

.field final synthetic b:Lllj;

.field final synthetic c:Llld;


# direct methods
.method constructor <init>(Llld;Lkrt;Lllj;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Llle;->c:Llld;

    iput-object p2, p0, Llle;->a:Lkrt;

    iput-object p3, p0, Llle;->b:Lllj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Llle;->a:Lkrt;

    iget-object v1, p0, Llle;->b:Lllj;

    invoke-static {v1}, Lllj;->a(Lllj;)Landroid/support/design/widget/TextInputEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkrt;->b(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Llle;->c:Llld;

    invoke-static {v0}, Llld;->a(Llld;)Llll;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Llle;->c:Llld;

    invoke-static {v0}, Llld;->a(Llld;)Llll;

    move-result-object v0

    iget-object v1, p0, Llle;->c:Llld;

    invoke-static {v1}, Llld;->b(Llld;)Z

    move-result v1

    invoke-interface {v0, v1}, Llll;->a(Z)V

    .line 72
    :cond_0
    return-void
.end method
