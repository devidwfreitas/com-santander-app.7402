.class public Lorg/jaxen/saxpath/XPathSyntaxException;
.super Lorg/jaxen/saxpath/SAXPathException;
.source "SourceFile"


# static fields
.field private static final lineSeparator:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x3182ee10cc207b7dL


# instance fields
.field private position:I

.field private xpath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jaxen/saxpath/XPathSyntaxException;->lineSeparator:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p3}, Lorg/jaxen/saxpath/SAXPathException;-><init>(Ljava/lang/String;)V

    .line 79
    iput p2, p0, Lorg/jaxen/saxpath/XPathSyntaxException;->position:I

    .line 80
    iput-object p1, p0, Lorg/jaxen/saxpath/XPathSyntaxException;->xpath:Ljava/lang/String;

    .line 81
    return-void
.end method

.method private getPositionMarker()Ljava/lang/String;
    .locals 4

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/jaxen/saxpath/XPathSyntaxException;->getPosition()I

    move-result v1

    .line 126
    new-instance v2, Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 127
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 129
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    const-string v0, "^"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getMultilineMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 150
    invoke-virtual {p0}, Lorg/jaxen/saxpath/XPathSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    sget-object v1, Lorg/jaxen/saxpath/XPathSyntaxException;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    invoke-virtual {p0}, Lorg/jaxen/saxpath/XPathSyntaxException;->getXPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    sget-object v1, Lorg/jaxen/saxpath/XPathSyntaxException;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    invoke-direct {p0}, Lorg/jaxen/saxpath/XPathSyntaxException;->getPositionMarker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lorg/jaxen/saxpath/XPathSyntaxException;->position:I

    return v0
.end method

.method public getXPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/jaxen/saxpath/XPathSyntaxException;->xpath:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaxen/saxpath/XPathSyntaxException;->getXPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaxen/saxpath/XPathSyntaxException;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaxen/saxpath/XPathSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
