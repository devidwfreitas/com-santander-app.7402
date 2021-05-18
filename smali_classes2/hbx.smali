.class Lhbx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhbp;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lhbw;


# direct methods
.method constructor <init>(Lhbw;Lhbp;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lhbx;->c:Lhbw;

    iput-object p2, p0, Lhbx;->a:Lhbp;

    iput-object p3, p0, Lhbx;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lhbx;->a:Lhbp;

    invoke-virtual {v0}, Lhbp;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 50
    :goto_1
    return-void

    .line 37
    :sswitch_0
    const-string v2, "cartoesConsultaFatura"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "cartoesPagamentoFatura"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "cartoesParcelamentoFatura"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 39
    :pswitch_0
    iget-object v0, p0, Lhbx;->c:Lhbw;

    iget-object v1, p0, Lhbx;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lhbw;->a(Lhbw;Landroid/content/Context;)V

    goto :goto_1

    .line 43
    :pswitch_1
    iget-object v0, p0, Lhbx;->c:Lhbw;

    iget-object v1, p0, Lhbx;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lhbw;->b(Lhbw;Landroid/content/Context;)V

    goto :goto_1

    .line 47
    :pswitch_2
    iget-object v0, p0, Lhbx;->c:Lhbw;

    iget-object v1, p0, Lhbx;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lhbw;->c(Lhbw;Landroid/content/Context;)V

    goto :goto_1

    .line 37
    :sswitch_data_0
    .sparse-switch
        -0x57de9d7f -> :sswitch_2
        0xafe3a74 -> :sswitch_1
        0x26d9959d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
