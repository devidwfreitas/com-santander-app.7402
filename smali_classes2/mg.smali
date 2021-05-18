.class Lmg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lmf;


# direct methods
.method constructor <init>(Lmf;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lmg;->a:Lmf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lmg;->a:Lmf;

    iget-object v0, v0, Lmf;->c:Lma;

    invoke-static {v0}, Lma;->f(Lma;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lmg;->a:Lmf;

    iget-object v1, v1, Lmf;->a:Lmj;

    iget-object v1, v1, Lmj;->a:Lace;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p0, Lmg;->a:Lmf;

    iget-object v0, v0, Lmf;->c:Lma;

    invoke-static {v0}, Lma;->f(Lma;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lmg;->a:Lmf;

    iget-object v0, v0, Lmf;->c:Lma;

    invoke-static {v0}, Lma;->e(Lma;)Lmr;

    move-result-object v0

    invoke-virtual {v0}, Lmr;->b()V

    .line 198
    :cond_0
    iget-object v0, p0, Lmg;->a:Lmf;

    iget-object v0, v0, Lmf;->c:Lma;

    iget-object v1, p0, Lmg;->a:Lmf;

    iget v1, v1, Lmf;->b:I

    invoke-virtual {v0, v1}, Lma;->notifyItemRemoved(I)V

    .line 199
    iget-object v0, p0, Lmg;->a:Lmf;

    iget-object v0, v0, Lmf;->c:Lma;

    invoke-virtual {v0}, Lma;->notifyDataSetChanged()V

    .line 200
    return-void
.end method
