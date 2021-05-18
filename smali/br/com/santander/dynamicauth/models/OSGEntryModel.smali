.class public Lbr/com/santander/dynamicauth/models/OSGEntryModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "entry"
.end annotation


# instance fields
.field private key:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "key"
        required = false
    .end annotation
.end field

.field private value:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "value"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/santander/dynamicauth/models/OSGEntryModel;->key:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/santander/dynamicauth/models/OSGEntryModel;->key:Ljava/lang/String;

    iput-object p2, p0, Lbr/com/santander/dynamicauth/models/OSGEntryModel;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    check-cast p1, Lbr/com/santander/dynamicauth/models/OSGEntryModel;

    iget-object v0, p0, Lbr/com/santander/dynamicauth/models/OSGEntryModel;->key:Ljava/lang/String;

    iget-object v1, p1, Lbr/com/santander/dynamicauth/models/OSGEntryModel;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getIntKey()I
    .locals 1

    invoke-virtual {p0}, Lbr/com/santander/dynamicauth/models/OSGEntryModel;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/santander/dynamicauth/models/OSGEntryModel;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/santander/dynamicauth/models/OSGEntryModel;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lbr/com/santander/dynamicauth/models/OSGEntryModel;->key:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbr/com/santander/dynamicauth/models/OSGEntryModel;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lbr/com/santander/dynamicauth/models/OSGEntryModel;->value:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lbr/com/santander/dynamicauth/models/OSGEntryModel;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbr/com/santander/dynamicauth/models/OSGEntryModel;->key:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbr/com/santander/dynamicauth/models/OSGEntryModel;->value:Ljava/lang/String;

    return-void
.end method
