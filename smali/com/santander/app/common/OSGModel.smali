.class public Lcom/santander/app/common/OSGModel;
.super Lgkt;
.source "SourceFile"


# instance fields
.field private fields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgku;",
            ">;"
        }
    .end annotation

    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "fields"
    .end annotation
.end field

.field private osgData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/santander/app/components/model/ListValueString;",
            ">;"
        }
    .end annotation

    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "osgData"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lgkt;-><init>()V

    return-void
.end method

.method public static getOSGParametersModel(Ljava/util/HashMap;)Lbr/com/santander/dynamicauth/models/OSGParametersModel;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/santander/app/components/model/ListValueString;",
            ">;)",
            "Lbr/com/santander/dynamicauth/models/OSGParametersModel;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 46
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/santander/app/components/model/ListValueString;

    invoke-virtual {v1}, Lcom/santander/app/components/model/ListValueString;->getItem()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    new-instance v6, Lbr/com/santander/dynamicauth/models/OSGEntryValueItemModel;

    invoke-direct {v6, v1}, Lbr/com/santander/dynamicauth/models/OSGEntryValueItemModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 52
    :cond_0
    new-instance v5, Lbr/com/santander/dynamicauth/models/OSGEntryModel;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbr/com/santander/dynamicauth/models/OSGEntryValueItemModel;

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/models/OSGEntryValueItemModel;->getItem()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Lbr/com/santander/dynamicauth/models/OSGEntryModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_1
    new-instance v0, Lbr/com/santander/dynamicauth/models/OSGParametersModel;

    invoke-direct {v0, v2}, Lbr/com/santander/dynamicauth/models/OSGParametersModel;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getFields()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lgku;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/santander/app/common/OSGModel;->fields:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOsgData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/santander/app/components/model/ListValueString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/santander/app/common/OSGModel;->osgData:Ljava/util/HashMap;

    return-object v0
.end method

.method public setFields(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lgku;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    iput-object p1, p0, Lcom/santander/app/common/OSGModel;->fields:Ljava/util/ArrayList;

    .line 32
    return-void
.end method

.method public setOsgData(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/santander/app/components/model/ListValueString;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    iput-object p1, p0, Lcom/santander/app/common/OSGModel;->osgData:Ljava/util/HashMap;

    .line 40
    return-void
.end method
