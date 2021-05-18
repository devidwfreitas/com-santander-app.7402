.class public Lko;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbr/com/santander/dynamicauth/features/idsantander/a/a;


# direct methods
.method public constructor <init>(Lbr/com/santander/dynamicauth/features/idsantander/a/a;)V
    .locals 0

    iput-object p1, p0, Lko;->a:Lbr/com/santander/dynamicauth/features/idsantander/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lko;->a:Lbr/com/santander/dynamicauth/features/idsantander/a/a;

    invoke-static {v0}, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->a(Lbr/com/santander/dynamicauth/features/idsantander/a/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ID_SANTANDER_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lko;->a:Lbr/com/santander/dynamicauth/features/idsantander/a/a;

    invoke-static {v0}, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->c(Lbr/com/santander/dynamicauth/features/idsantander/a/a;)V

    :goto_1
    return-void

    :sswitch_0
    const-string v2, "ID_SANTANDER_QR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "ID_SANTANDER_OTP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lko;->a:Lbr/com/santander/dynamicauth/features/idsantander/a/a;

    invoke-static {v0}, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->a(Lbr/com/santander/dynamicauth/features/idsantander/a/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ID_SANTANDER_QR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lko;->a:Lbr/com/santander/dynamicauth/features/idsantander/a/a;

    invoke-static {v1, v0}, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->b(Lbr/com/santander/dynamicauth/features/idsantander/a/a;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lko;->a:Lbr/com/santander/dynamicauth/features/idsantander/a/a;

    iget-object v1, p0, Lko;->a:Lbr/com/santander/dynamicauth/features/idsantander/a/a;

    invoke-static {v1}, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->b(Lbr/com/santander/dynamicauth/features/idsantander/a/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->c(Lbr/com/santander/dynamicauth/features/idsantander/a/a;Ljava/lang/String;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5be21d48 -> :sswitch_1
        0x78e830d4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
