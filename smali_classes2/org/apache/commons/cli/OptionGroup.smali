.class public Lorg/apache/commons/cli/OptionGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private optionMap:Ljava/util/Map;

.field private required:Z

.field private selected:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/cli/OptionGroup;->optionMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/OptionGroup;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/commons/cli/OptionGroup;->optionMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/commons/cli/Option;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-object p0
.end method

.method public getNames()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/commons/cli/OptionGroup;->optionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/commons/cli/OptionGroup;->optionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getSelected()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/commons/cli/OptionGroup;->selected:Ljava/lang/String;

    return-object v0
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lorg/apache/commons/cli/OptionGroup;->required:Z

    return v0
.end method

.method public setRequired(Z)V
    .locals 0

    .prologue
    .line 114
    iput-boolean p1, p0, Lorg/apache/commons/cli/OptionGroup;->required:Z

    .line 115
    return-void
.end method

.method public setSelected(Lorg/apache/commons/cli/Option;)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/commons/cli/OptionGroup;->selected:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/cli/OptionGroup;->selected:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/cli/OptionGroup;->selected:Ljava/lang/String;

    .line 99
    return-void

    .line 97
    :cond_1
    new-instance v0, Lorg/apache/commons/cli/AlreadySelectedException;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/cli/AlreadySelectedException;-><init>(Lorg/apache/commons/cli/OptionGroup;Lorg/apache/commons/cli/Option;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 134
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 136
    invoke-virtual {p0}, Lorg/apache/commons/cli/OptionGroup;->getOptions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 138
    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/cli/Option;

    .line 144
    invoke-virtual {v0}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 146
    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    invoke-virtual {v0}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    :goto_1
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    invoke-virtual {v0}, Lorg/apache/commons/cli/Option;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 151
    :cond_1
    const-string v3, "--"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    invoke-virtual {v0}, Lorg/apache/commons/cli/Option;->getLongOpt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 164
    :cond_2
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
