.class public Lbr/com/santander/dynamicauth/models/OSGEntryValueItemModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "item"
.end annotation


# instance fields
.field private item:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Text;
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

    iput-object p1, p0, Lbr/com/santander/dynamicauth/models/OSGEntryValueItemModel;->item:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItem()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/santander/dynamicauth/models/OSGEntryValueItemModel;->item:Ljava/lang/String;

    return-object v0
.end method

.method public setItem(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbr/com/santander/dynamicauth/models/OSGEntryValueItemModel;->item:Ljava/lang/String;

    return-void
.end method
