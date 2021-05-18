.class Ljmg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljmf;


# direct methods
.method constructor <init>(Ljmf;I)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Ljmg;->b:Ljmf;

    iput p2, p0, Ljmg;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 51
    sget-object v1, Ljmh;->a:[I

    iget-object v0, p0, Ljmg;->b:Ljmf;

    invoke-static {v0}, Ljmf;->a(Ljmf;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Ljmg;->a:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljlj;

    invoke-virtual {v0}, Ljlj;->e()Ljlk;

    move-result-object v0

    invoke-virtual {v0}, Ljlk;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 60
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget-object v0, p0, Ljmg;->b:Ljmf;

    invoke-static {v0}, Ljmf;->b(Ljmf;)Ljmj;

    move-result-object v0

    invoke-interface {v0}, Ljmj;->b()Ljlq;

    move-result-object v0

    .line 54
    iget-object v1, p0, Ljmg;->b:Ljmf;

    invoke-static {v1}, Ljmf;->b(Ljmf;)Ljmj;

    move-result-object v1

    invoke-interface {v1, v0}, Ljmj;->b(Ljlq;)V

    goto :goto_0

    .line 57
    :pswitch_1
    iget-object v0, p0, Ljmg;->b:Ljmf;

    invoke-static {v0}, Ljmf;->b(Ljmf;)Ljmj;

    move-result-object v1

    iget-object v0, p0, Ljmg;->b:Ljmf;

    invoke-static {v0}, Ljmf;->a(Ljmf;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Ljmg;->a:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljlj;

    invoke-virtual {v0}, Ljlj;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljmj;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
