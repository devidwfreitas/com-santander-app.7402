.class final Lais;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Laip;


# direct methods
.method constructor <init>(Laip;I)V
    .locals 0

    iput-object p1, p0, Lais;->b:Laip;

    iput p2, p0, Lais;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lais;->b:Laip;

    invoke-static {v0}, Laip;->c(Laip;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lais;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lais;->b:Laip;

    iget v1, p0, Lais;->a:I

    invoke-virtual {v0, v1}, Laip;->notifyItemRemoved(I)V

    iget-object v0, p0, Lais;->b:Laip;

    iget v1, p0, Lais;->a:I

    iget-object v2, p0, Lais;->b:Laip;

    invoke-static {v2}, Laip;->c(Laip;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Laip;->notifyItemRangeChanged(II)V

    iget-object v0, p0, Lais;->b:Laip;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laip;->a(Laip;Z)Z

    return-void
.end method
