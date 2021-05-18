.class Lkje;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lkjd;


# direct methods
.method constructor <init>(Lkjd;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lkje;->a:Lkjd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 230
    const-string v0, "Outros_RecargaDeTelefone_Confirmacao_Acao"

    const-string v1, "Confirmar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lkje;->a:Lkjd;

    invoke-static {v0}, Lkjd;->a(Lkjd;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 248
    :goto_0
    return-void

    .line 234
    :pswitch_0
    iget-object v0, p0, Lkje;->a:Lkjd;

    invoke-static {v0}, Lkjd;->c(Lkjd;)Lkjf;

    move-result-object v0

    iget-object v1, p0, Lkje;->a:Lkjd;

    invoke-static {v1}, Lkjd;->b(Lkjd;)Lkic;

    move-result-object v1

    invoke-interface {v0, v1}, Lkjf;->a(Lkic;)V

    goto :goto_0

    .line 237
    :pswitch_1
    iget-object v0, p0, Lkje;->a:Lkjd;

    invoke-static {v0}, Lkjd;->c(Lkjd;)Lkjf;

    move-result-object v0

    iget-object v1, p0, Lkje;->a:Lkjd;

    invoke-static {v1}, Lkjd;->b(Lkjd;)Lkic;

    move-result-object v1

    invoke-interface {v0, v1}, Lkjf;->b(Lkic;)V

    goto :goto_0

    .line 240
    :pswitch_2
    iget-object v0, p0, Lkje;->a:Lkjd;

    invoke-static {v0}, Lkjd;->c(Lkjd;)Lkjf;

    move-result-object v0

    iget-object v1, p0, Lkje;->a:Lkjd;

    invoke-static {v1}, Lkjd;->d(Lkjd;)Lkid;

    move-result-object v1

    invoke-interface {v0, v1}, Lkjf;->a(Lkid;)V

    goto :goto_0

    .line 243
    :pswitch_3
    iget-object v0, p0, Lkje;->a:Lkjd;

    invoke-static {v0}, Lkjd;->c(Lkjd;)Lkjf;

    move-result-object v0

    iget-object v1, p0, Lkje;->a:Lkjd;

    invoke-static {v1}, Lkjd;->e(Lkjd;)Lkgj;

    move-result-object v1

    invoke-interface {v0, v1}, Lkjf;->a(Lkgj;)V

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
