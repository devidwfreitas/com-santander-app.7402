.class public Lbr/com/santander/dynamicauth/models/OSGModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "response"
.end annotation


# instance fields
.field private OSG:Lbr/com/santander/dynamicauth/models/OSGParametersModel;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "parameters"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParameters()Lbr/com/santander/dynamicauth/models/OSGParametersModel;
    .locals 1

    iget-object v0, p0, Lbr/com/santander/dynamicauth/models/OSGModel;->OSG:Lbr/com/santander/dynamicauth/models/OSGParametersModel;

    return-object v0
.end method

.method public setParameters(Lbr/com/santander/dynamicauth/models/OSGParametersModel;)V
    .locals 0

    iput-object p1, p0, Lbr/com/santander/dynamicauth/models/OSGModel;->OSG:Lbr/com/santander/dynamicauth/models/OSGParametersModel;

    return-void
.end method
