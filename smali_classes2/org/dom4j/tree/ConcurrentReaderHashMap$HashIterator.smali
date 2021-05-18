.class public Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;
.implements Ljava/util/Iterator;


# instance fields
.field protected currentKey:Ljava/lang/Object;

.field protected currentValue:Ljava/lang/Object;

.field protected entry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

.field protected index:I

.field protected lastReturned:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

.field protected final tab:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

.field final synthetic this$0:Lorg/dom4j/tree/ConcurrentReaderHashMap;


# direct methods
.method protected constructor <init>(Lorg/dom4j/tree/ConcurrentReaderHashMap;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1100
    iput-object p1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->this$0:Lorg/dom4j/tree/ConcurrentReaderHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1092
    iput-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->entry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 1098
    iput-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->lastReturned:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 1101
    invoke-virtual {p1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->getTableForReading()[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->tab:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 1102
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->tab:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->index:I

    .line 1103
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 1106
    invoke-virtual {p0}, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 3

    .prologue
    .line 1123
    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->entry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    if-eqz v0, :cond_2

    .line 1124
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->entry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iget-object v0, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    .line 1125
    if-eqz v0, :cond_1

    .line 1126
    iget-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->entry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iget-object v1, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    iput-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    .line 1127
    iput-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->currentValue:Ljava/lang/Object;

    .line 1128
    const/4 v0, 0x1

    .line 1138
    :goto_0
    return v0

    .line 1130
    :cond_1
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->entry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iget-object v0, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iput-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->entry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 1133
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->entry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    if-nez v0, :cond_3

    iget v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->index:I

    if-ltz v0, :cond_3

    .line 1134
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->tab:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iget v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->index:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->index:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->entry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    goto :goto_1

    .line 1136
    :cond_3
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->entry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    if-nez v0, :cond_0

    .line 1137
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->currentValue:Ljava/lang/Object;

    iput-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    .line 1138
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1148
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1149
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1151
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->returnValueOfNext()Ljava/lang/Object;

    move-result-object v0

    .line 1152
    iget-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->entry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iput-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->lastReturned:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 1153
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->currentValue:Ljava/lang/Object;

    iput-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    .line 1154
    iget-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->entry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iget-object v1, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iput-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->entry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 1155
    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1110
    invoke-virtual {p0}, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 1159
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->lastReturned:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    if-nez v0, :cond_0

    .line 1160
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1161
    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->this$0:Lorg/dom4j/tree/ConcurrentReaderHashMap;

    iget-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->lastReturned:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iget-object v1, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->lastReturned:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 1163
    return-void
.end method

.method protected returnValueOfNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;->entry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    return-object v0
.end method
