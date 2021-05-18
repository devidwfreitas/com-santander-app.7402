.class Llcr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llcn;


# direct methods
.method constructor <init>(Llcn;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Llcr;->a:Llcn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Llcr;->a:Llcn;

    invoke-static {v0}, Llcn;->c(Llcn;)Llcs;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Llcr;->a:Llcn;

    invoke-static {v0}, Llcn;->c(Llcn;)Llcs;

    move-result-object v0

    iget-object v1, p0, Llcr;->a:Llcn;

    invoke-static {v1}, Llcn;->d(Llcn;)I

    move-result v1

    iget-object v2, p0, Llcr;->a:Llcn;

    invoke-static {v2}, Llcn;->e(Llcn;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Llcs;->a(ILjava/util/List;)V

    .line 181
    :cond_0
    return-void
.end method
