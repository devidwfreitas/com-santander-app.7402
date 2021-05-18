.class public abstract Lorg/apache/commons/exec/LogOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field private static final CR:I = 0xd

.field private static final INTIAL_SIZE:I = 0x84

.field private static final LF:I = 0xa


# instance fields
.field private final buffer:Ljava/io/ByteArrayOutputStream;

.field private final level:I

.field private skip:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const/16 v0, 0x3e7

    invoke-direct {p0, v0}, Lorg/apache/commons/exec/LogOutputStream;-><init>(I)V

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 44
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x84

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/exec/LogOutputStream;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/exec/LogOutputStream;->skip:Z

    .line 65
    iput p1, p0, Lorg/apache/commons/exec/LogOutputStream;->level:I

    .line 66
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/commons/exec/LogOutputStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lorg/apache/commons/exec/LogOutputStream;->processBuffer()V

    .line 107
    :cond_0
    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    .line 108
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/commons/exec/LogOutputStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lorg/apache/commons/exec/LogOutputStream;->processBuffer()V

    .line 96
    :cond_0
    return-void
.end method

.method public getMessageLevel()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lorg/apache/commons/exec/LogOutputStream;->level:I

    return v0
.end method

.method protected processBuffer()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/commons/exec/LogOutputStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/exec/LogOutputStream;->processLine(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lorg/apache/commons/exec/LogOutputStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 157
    return-void
.end method

.method protected processLine(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lorg/apache/commons/exec/LogOutputStream;->level:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/exec/LogOutputStream;->processLine(Ljava/lang/String;I)V

    .line 167
    return-void
.end method

.method protected abstract processLine(Ljava/lang/String;I)V
.end method

.method public write(I)V
    .locals 3

    .prologue
    const/16 v2, 0xd

    .line 76
    int-to-byte v0, p1

    .line 77
    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_2

    .line 78
    :cond_0
    iget-boolean v1, p0, Lorg/apache/commons/exec/LogOutputStream;->skip:Z

    if-nez v1, :cond_1

    .line 79
    invoke-virtual {p0}, Lorg/apache/commons/exec/LogOutputStream;->processBuffer()V

    .line 84
    :cond_1
    :goto_0
    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/exec/LogOutputStream;->skip:Z

    .line 85
    return-void

    .line 82
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/exec/LogOutputStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 84
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public write([BII)V
    .locals 6

    .prologue
    const/16 v5, 0xd

    const/16 v4, 0xa

    .line 129
    move v0, p3

    move v1, p2

    .line 132
    :goto_0
    if-lez v0, :cond_4

    .line 133
    :goto_1
    if-lez v0, :cond_0

    aget-byte v2, p1, v1

    if-eq v2, v4, :cond_0

    aget-byte v2, p1, v1

    if-eq v2, v5, :cond_0

    .line 134
    add-int/lit8 v1, v1, 0x1

    .line 135
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 138
    :cond_0
    sub-int v2, v1, p2

    .line 139
    if-lez v2, :cond_1

    .line 140
    iget-object v3, p0, Lorg/apache/commons/exec/LogOutputStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, p1, p2, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 142
    :cond_1
    :goto_2
    if-lez v0, :cond_3

    aget-byte v2, p1, v1

    if-eq v2, v4, :cond_2

    aget-byte v2, p1, v1

    if-ne v2, v5, :cond_3

    .line 143
    :cond_2
    aget-byte v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/commons/exec/LogOutputStream;->write(I)V

    .line 144
    add-int/lit8 v1, v1, 0x1

    .line 145
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    move p2, v1

    .line 148
    goto :goto_0

    .line 149
    :cond_4
    return-void
.end method
