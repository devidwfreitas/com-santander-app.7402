.class public Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;
.super Ljava/lang/Object;


# instance fields
.field private authType:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

.field private data:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;->authType:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    iput-object p2, p0, Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getAuthType()Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;
    .locals 1

    iget-object v0, p0, Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;->authType:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public setAuthType(Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;)V
    .locals 0

    iput-object p1, p0, Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;->authType:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;->data:Ljava/lang/Object;

    return-void
.end method
