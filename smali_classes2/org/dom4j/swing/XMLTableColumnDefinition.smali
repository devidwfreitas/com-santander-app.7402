.class public Lorg/dom4j/swing/XMLTableColumnDefinition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NODE_TYPE:I = 0x3

.field public static final NUMBER_TYPE:I = 0x2

.field public static final OBJECT_TYPE:I = 0x0

.field public static final STRING_TYPE:I = 0x1


# instance fields
.field private columnNameXPath:Lorg/dom4j/XPath;

.field private name:Ljava/lang/String;

.field private type:I

.field private xpath:Lorg/dom4j/XPath;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->name:Ljava/lang/String;

    .line 58
    iput p3, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->type:I

    .line 59
    invoke-virtual {p0, p2}, Lorg/dom4j/swing/XMLTableColumnDefinition;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->xpath:Lorg/dom4j/XPath;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/XPath;I)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->name:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->xpath:Lorg/dom4j/XPath;

    .line 65
    iput p3, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->type:I

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/XPath;Lorg/dom4j/XPath;I)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->xpath:Lorg/dom4j/XPath;

    .line 70
    iput-object p1, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->columnNameXPath:Lorg/dom4j/XPath;

    .line 71
    iput p3, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->type:I

    .line 72
    return-void
.end method

.method public static parseType(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 75
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 76
    const-string v0, "string"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    .line 78
    :cond_0
    const-string v0, "number"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    const/4 v0, 0x2

    goto :goto_0

    .line 80
    :cond_1
    const-string v0, "node"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    const/4 v0, 0x3

    goto :goto_0

    .line 85
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;
    .locals 1

    .prologue
    .line 199
    invoke-static {p1}, Lorg/dom4j/DocumentHelper;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    return-object v0
.end method

.method public getColumnClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->type:I

    packed-switch v0, :pswitch_data_0

    .line 100
    const-class v0, Ljava/lang/Object;

    :goto_0
    return-object v0

    .line 91
    :pswitch_0
    const-class v0, Ljava/lang/String;

    goto :goto_0

    .line 94
    :pswitch_1
    const-class v0, Ljava/lang/Number;

    goto :goto_0

    .line 97
    :pswitch_2
    const-class v0, Lorg/dom4j/Node;

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getColumnNameXPath()Lorg/dom4j/XPath;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->columnNameXPath:Lorg/dom4j/XPath;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->type:I

    return v0
.end method

.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->type:I

    packed-switch v0, :pswitch_data_0

    .line 116
    iget-object v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->xpath:Lorg/dom4j/XPath;

    invoke-interface {v0, p1}, Lorg/dom4j/XPath;->evaluate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 107
    :pswitch_0
    iget-object v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->xpath:Lorg/dom4j/XPath;

    invoke-interface {v0, p1}, Lorg/dom4j/XPath;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 110
    :pswitch_1
    iget-object v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->xpath:Lorg/dom4j/XPath;

    invoke-interface {v0, p1}, Lorg/dom4j/XPath;->numberValueOf(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    goto :goto_0

    .line 113
    :pswitch_2
    iget-object v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->xpath:Lorg/dom4j/XPath;

    invoke-interface {v0, p1}, Lorg/dom4j/XPath;->selectSingleNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v0

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getXPath()Lorg/dom4j/XPath;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->xpath:Lorg/dom4j/XPath;

    return-object v0
.end method

.method protected handleException(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 204
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public setColumnNameXPath(Lorg/dom4j/XPath;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->columnNameXPath:Lorg/dom4j/XPath;

    .line 193
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->name:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 138
    iput p1, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->type:I

    .line 139
    return-void
.end method

.method public setXPath(Lorg/dom4j/XPath;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lorg/dom4j/swing/XMLTableColumnDefinition;->xpath:Lorg/dom4j/XPath;

    .line 175
    return-void
.end method
