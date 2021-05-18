.class public Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static instance:Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;


# instance fields
.field private callBack:Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;

.field private challenge:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;
    .locals 1

    sget-object v0, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->instance:Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;

    if-nez v0, :cond_0

    new-instance v0, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;

    invoke-direct {v0}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;-><init>()V

    sput-object v0, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->instance:Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;

    :cond_0
    sget-object v0, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->instance:Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;

    return-object v0
.end method


# virtual methods
.method public getCallBack()Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;
    .locals 1

    iget-object v0, p0, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->callBack:Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;

    return-object v0
.end method

.method public getChallenge()Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;
    .locals 1

    iget-object v0, p0, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->challenge:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    return-object v0
.end method

.method public setCallBack(Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;)V
    .locals 0

    iput-object p1, p0, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->callBack:Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;

    return-void
.end method

.method public setChallenge(Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;)V
    .locals 0

    iput-object p1, p0, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->challenge:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    return-void
.end method
