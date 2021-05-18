.class public Liqy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lipp;

.field final synthetic b:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;Lipp;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Liqy;->b:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    iput-object p2, p0, Liqy;->a:Lipp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 491
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 492
    if-eqz v0, :cond_0

    .line 493
    sget-object v0, Liqt;->a:[I

    iget-object v1, p0, Liqy;->a:Lipp;

    invoke-virtual {v1}, Lipp;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 495
    :pswitch_0
    iget-object v0, p0, Liqy;->b:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-static {v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->c(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)Lirc;

    move-result-object v0

    invoke-interface {v0}, Lirc;->t()V

    goto :goto_0

    .line 500
    :pswitch_1
    iget-object v0, p0, Liqy;->b:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-static {v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->c(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)Lirc;

    move-result-object v0

    iget-object v1, p0, Liqy;->a:Lipp;

    invoke-interface {v0, v1}, Lirc;->b(Lipp;)V

    goto :goto_0

    .line 493
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
