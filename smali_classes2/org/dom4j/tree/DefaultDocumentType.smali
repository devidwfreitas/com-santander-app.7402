.class public Lorg/dom4j/tree/DefaultDocumentType;
.super Lorg/dom4j/tree/AbstractDocumentType;
.source "SourceFile"


# instance fields
.field protected elementName:Ljava/lang/String;

.field private externalDeclarations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/dtd/ExternalDeclaration;",
            ">;"
        }
    .end annotation
.end field

.field private internalDeclarations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/dtd/InternalDeclaration;",
            ">;"
        }
    .end annotation
.end field

.field private publicID:Ljava/lang/String;

.field private systemID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractDocumentType;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractDocumentType;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocumentType;->elementName:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lorg/dom4j/tree/DefaultDocumentType;->systemID:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractDocumentType;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocumentType;->elementName:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lorg/dom4j/tree/DefaultDocumentType;->publicID:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lorg/dom4j/tree/DefaultDocumentType;->systemID:Ljava/lang/String;

    .line 82
    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocumentType;->elementName:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalDeclarations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/dtd/ExternalDeclaration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocumentType;->externalDeclarations:Ljava/util/List;

    return-object v0
.end method

.method public getInternalDeclarations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/dtd/InternalDeclaration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocumentType;->internalDeclarations:Ljava/util/List;

    return-object v0
.end method

.method public getPublicID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocumentType;->publicID:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocumentType;->systemID:Ljava/lang/String;

    return-object v0
.end method

.method public setElementName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocumentType;->elementName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setExternalDeclarations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/dtd/ExternalDeclaration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocumentType;->externalDeclarations:Ljava/util/List;

    .line 142
    return-void
.end method

.method public setInternalDeclarations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/dtd/InternalDeclaration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocumentType;->internalDeclarations:Ljava/util/List;

    .line 134
    return-void
.end method

.method public setPublicID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocumentType;->publicID:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setSystemID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocumentType;->systemID:Ljava/lang/String;

    .line 126
    return-void
.end method
