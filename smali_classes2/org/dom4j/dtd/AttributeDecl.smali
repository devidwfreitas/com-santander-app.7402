.class public Lorg/dom4j/dtd/AttributeDecl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/dom4j/dtd/Declaration;


# instance fields
.field private attributeName:Ljava/lang/String;

.field private elementName:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private value:Ljava/lang/String;

.field private valueDefault:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/dom4j/dtd/AttributeDecl;->elementName:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lorg/dom4j/dtd/AttributeDecl;->attributeName:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lorg/dom4j/dtd/AttributeDecl;->type:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lorg/dom4j/dtd/AttributeDecl;->value:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lorg/dom4j/dtd/AttributeDecl;->valueDefault:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public getAttributeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/dom4j/dtd/AttributeDecl;->attributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/dom4j/dtd/AttributeDecl;->elementName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/dom4j/dtd/AttributeDecl;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/dom4j/dtd/AttributeDecl;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getValueDefault()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/dom4j/dtd/AttributeDecl;->valueDefault:Ljava/lang/String;

    return-object v0
.end method

.method public setAttributeName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lorg/dom4j/dtd/AttributeDecl;->attributeName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setElementName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lorg/dom4j/dtd/AttributeDecl;->elementName:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lorg/dom4j/dtd/AttributeDecl;->type:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lorg/dom4j/dtd/AttributeDecl;->value:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setValueDefault(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lorg/dom4j/dtd/AttributeDecl;->valueDefault:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "<!ATTLIST "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lorg/dom4j/dtd/AttributeDecl;->elementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    iget-object v1, p0, Lorg/dom4j/dtd/AttributeDecl;->attributeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    iget-object v1, p0, Lorg/dom4j/dtd/AttributeDecl;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    iget-object v1, p0, Lorg/dom4j/dtd/AttributeDecl;->valueDefault:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lorg/dom4j/dtd/AttributeDecl;->valueDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    iget-object v1, p0, Lorg/dom4j/dtd/AttributeDecl;->valueDefault:Ljava/lang/String;

    const-string v2, "#FIXED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    iget-object v1, p0, Lorg/dom4j/dtd/AttributeDecl;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    :cond_0
    :goto_0
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 164
    :cond_1
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    iget-object v1, p0, Lorg/dom4j/dtd/AttributeDecl;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
