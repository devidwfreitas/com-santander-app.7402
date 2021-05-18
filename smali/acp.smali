.class Lacp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Laco;


# direct methods
.method constructor <init>(Laco;I)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lacp;->b:Laco;

    iput p2, p0, Lacp;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lacp;->b:Laco;

    invoke-static {v0}, Laco;->a(Laco;)Lacg;

    move-result-object v0

    invoke-virtual {v0}, Lacg;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lou;

    .line 54
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lou;->a(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lacp;->b:Laco;

    invoke-static {v0}, Laco;->b(Laco;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lacp;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lou;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lou;->a(Ljava/lang/Boolean;)V

    .line 57
    iget-object v0, p0, Lacp;->b:Laco;

    invoke-static {v0}, Laco;->c(Laco;)Lacy;

    move-result-object v0

    invoke-virtual {v0}, Lacy;->g()V

    .line 59
    return-void
.end method
