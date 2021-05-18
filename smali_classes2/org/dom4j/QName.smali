.class public Lorg/dom4j/QName;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static singleton:Lorg/dom4j/util/SingletonStrategy;


# instance fields
.field private documentFactory:Lorg/dom4j/DocumentFactory;

.field private hashCode:I

.field private name:Ljava/lang/String;

.field private transient namespace:Lorg/dom4j/Namespace;

.field private qualifiedName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 31
    sput-object v0, Lorg/dom4j/QName;->singleton:Lorg/dom4j/util/SingletonStrategy;

    .line 35
    :try_start_0
    const-string v1, "org.dom4j.util.SimpleSingleton"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 39
    :try_start_1
    const-string v2, "org.dom4j.QName.singleton.strategy"

    invoke-static {v2, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 49
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/util/SingletonStrategy;

    sput-object v0, Lorg/dom4j/QName;->singleton:Lorg/dom4j/util/SingletonStrategy;

    .line 50
    sget-object v0, Lorg/dom4j/QName;->singleton:Lorg/dom4j/util/SingletonStrategy;

    const-class v1, Lorg/dom4j/tree/QNameCache;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/dom4j/util/SingletonStrategy;->setSingletonClassName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 53
    :goto_1
    return-void

    .line 42
    :catch_0
    move-exception v2

    .line 45
    :try_start_3
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_0

    .line 46
    :catch_1
    move-exception v1

    goto :goto_0

    .line 51
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-direct {p0, p1, v0}, Lorg/dom4j/QName;-><init>(Ljava/lang/String;Lorg/dom4j/Namespace;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/Namespace;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lorg/dom4j/QName;->name:Ljava/lang/String;

    .line 86
    if-nez p2, :cond_1

    sget-object p2, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    :cond_1
    iput-object p2, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/Namespace;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lorg/dom4j/QName;->name:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lorg/dom4j/QName;->qualifiedName:Ljava/lang/String;

    .line 93
    if-nez p2, :cond_1

    sget-object p2, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    :cond_1
    iput-object p2, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    .line 95
    return-void
.end method

.method public static get(Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lorg/dom4j/QName;->getCache()Lorg/dom4j/tree/QNameCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 1

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    invoke-static {}, Lorg/dom4j/QName;->getCache()Lorg/dom4j/tree/QNameCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/dom4j/QName;->getCache()Lorg/dom4j/tree/QNameCache;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 2

    .prologue
    .line 106
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p2, :cond_1

    .line 107
    invoke-static {p0}, Lorg/dom4j/QName;->get(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    .line 108
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 109
    :cond_2
    invoke-static {}, Lorg/dom4j/QName;->getCache()Lorg/dom4j/tree/QNameCache;

    move-result-object v0

    invoke-static {p2}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_3
    if-nez p2, :cond_4

    .line 111
    invoke-static {p0}, Lorg/dom4j/QName;->get(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_4
    invoke-static {}, Lorg/dom4j/QName;->getCache()Lorg/dom4j/tree/QNameCache;

    move-result-object v0

    invoke-static {p1, p2}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lorg/dom4j/QName;->getCache()Lorg/dom4j/tree/QNameCache;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Lorg/dom4j/Namespace;Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Lorg/dom4j/QName;->getCache()Lorg/dom4j/tree/QNameCache;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Lorg/dom4j/Namespace;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method private static getCache()Lorg/dom4j/tree/QNameCache;
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lorg/dom4j/QName;->singleton:Lorg/dom4j/util/SingletonStrategy;

    invoke-interface {v0}, Lorg/dom4j/util/SingletonStrategy;->instance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/tree/QNameCache;

    .line 266
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 259
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 261
    invoke-static {v0, v1}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    .line 262
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 251
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 252
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 212
    if-ne p0, p1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v0

    .line 214
    :cond_1
    instance-of v2, p1, Lorg/dom4j/QName;

    if-eqz v2, :cond_3

    .line 215
    check-cast p1, Lorg/dom4j/QName;

    .line 218
    invoke-virtual {p0}, Lorg/dom4j/QName;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Lorg/dom4j/QName;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 219
    invoke-virtual {p0}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 224
    goto :goto_0
.end method

.method public getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/dom4j/QName;->documentFactory:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/dom4j/QName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Lorg/dom4j/Namespace;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    return-object v0
.end method

.method public getNamespacePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    if-nez v0, :cond_0

    .line 174
    const-string v0, ""

    .line 177
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    if-nez v0, :cond_0

    .line 187
    const-string v0, ""

    .line 190
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lorg/dom4j/QName;->qualifiedName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lorg/dom4j/QName;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/QName;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/QName;->qualifiedName:Ljava/lang/String;

    .line 155
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/dom4j/QName;->qualifiedName:Ljava/lang/String;

    return-object v0

    .line 151
    :cond_1
    iget-object v0, p0, Lorg/dom4j/QName;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/dom4j/QName;->qualifiedName:Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 200
    iget v0, p0, Lorg/dom4j/QName;->hashCode:I

    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/dom4j/QName;->hashCode:I

    .line 203
    iget v0, p0, Lorg/dom4j/QName;->hashCode:I

    if-nez v0, :cond_0

    .line 204
    const v0, 0xbabe

    iput v0, p0, Lorg/dom4j/QName;->hashCode:I

    .line 208
    :cond_0
    iget v0, p0, Lorg/dom4j/QName;->hashCode:I

    return v0
.end method

.method public setDocumentFactory(Lorg/dom4j/DocumentFactory;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lorg/dom4j/QName;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 243
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " namespace: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/QName;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
