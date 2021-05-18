.class public Lbr/com/santander/dynamicauth/models/OSGEntryValueModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbr/com/santander/dynamicauth/models/OSGEntryValueItemModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        inline = true
        name = "item"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbr/com/santander/dynamicauth/models/OSGEntryValueItemModel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/santander/dynamicauth/models/OSGEntryValueModel;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbr/com/santander/dynamicauth/models/OSGEntryValueItemModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbr/com/santander/dynamicauth/models/OSGEntryValueModel;->items:Ljava/util/List;

    return-object v0
.end method

.method public setItem(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbr/com/santander/dynamicauth/models/OSGEntryValueItemModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lbr/com/santander/dynamicauth/models/OSGEntryValueModel;->items:Ljava/util/List;

    return-void
.end method
