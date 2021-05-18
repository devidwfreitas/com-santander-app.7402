.class public Lmzz;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lbr/com/santander/dynamicauth/models/OSGParametersModel;Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;)V
    .locals 1

    .prologue
    .line 13
    :try_start_0
    invoke-static {p0, p1, p2}, Lbr/com/santander/dynamicauth/DynamicAuth;->challenge(Landroid/content/Context;Lbr/com/santander/dynamicauth/models/OSGParametersModel;Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;)V
    :try_end_0
    .catch Lbr/com/santander/dynamicauth/exception/DynamicAuthException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :goto_0
    return-void

    .line 14
    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/exception/DynamicAuthException;->printStackTrace()V

    goto :goto_0
.end method
