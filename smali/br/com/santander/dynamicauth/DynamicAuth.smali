.class public Lbr/com/santander/dynamicauth/DynamicAuth;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static challenge(Landroid/content/Context;Lbr/com/santander/dynamicauth/models/OSGParametersModel;Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lbr/com/santander/dynamicauth/DynamicAuthService;->challenge(Landroid/content/Context;Lbr/com/santander/dynamicauth/models/OSGParametersModel;Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;)V

    return-void
.end method

.method public static challenge(Landroid/content/Context;Ljava/lang/String;Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1}, Lbr/com/santander/dynamicauth/DynamicAuthService;->parserChallenge(Ljava/lang/String;)Lbr/com/santander/dynamicauth/models/OSGParametersModel;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_XML_PARSER:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v1, v1, v0}, Lbr/com/santander/dynamicauth/DynamicAuthService;->initError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, v0, p2}, Lbr/com/santander/dynamicauth/DynamicAuthService;->challenge(Landroid/content/Context;Lbr/com/santander/dynamicauth/models/OSGParametersModel;Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;)V

    goto :goto_0
.end method

.method public static dismissLoading()V
    .locals 0

    invoke-static {}, Lbr/com/santander/dynamicauth/DynamicAuthService;->dismissLoading()V

    return-void
.end method
