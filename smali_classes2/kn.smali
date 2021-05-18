.class public Lkn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbr/com/santander/dynamicauth/features/idsantander/a/a;


# direct methods
.method public constructor <init>(Lbr/com/santander/dynamicauth/features/idsantander/a/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lkn;->b:Lbr/com/santander/dynamicauth/features/idsantander/a/a;

    iput-object p2, p0, Lkn;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lkn;->b:Lbr/com/santander/dynamicauth/features/idsantander/a/a;

    invoke-static {v0}, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->a(Lbr/com/santander/dynamicauth/features/idsantander/a/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-static {}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->getInstance()Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->getCallBack()Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;

    move-result-object v0

    new-instance v1, Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;

    sget-object v2, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ID_SANTANDER:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    iget-object v3, p0, Lkn;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;-><init>(Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;->onSuccess(Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;)V

    return-void
.end method
