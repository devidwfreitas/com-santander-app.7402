.class Llkp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Llko;


# direct methods
.method constructor <init>(Llko;I)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Llkp;->b:Llko;

    iput p2, p0, Llkp;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 62
    iget-object v0, p0, Llkp;->b:Llko;

    invoke-static {v0}, Llko;->a(Llko;)Llks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Llkp;->b:Llko;

    invoke-static {v0}, Llko;->a(Llko;)Llks;

    move-result-object v1

    iget-object v0, p0, Llkp;->b:Llko;

    invoke-static {v0}, Llko;->b(Llko;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Llkp;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkqq;

    invoke-virtual {v0}, Lkqq;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Llkp;->b:Llko;

    invoke-static {v0}, Llko;->b(Llko;)Ljava/util/List;

    move-result-object v0

    iget v3, p0, Llkp;->a:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkqq;

    invoke-virtual {v0}, Lkqq;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Llks;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method
