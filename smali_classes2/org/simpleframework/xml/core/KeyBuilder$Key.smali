.class Lorg/simpleframework/xml/core/KeyBuilder$Key;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final type:Lorg/simpleframework/xml/core/KeyBuilder$KeyType;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/KeyBuilder$KeyType;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p2, p0, Lorg/simpleframework/xml/core/KeyBuilder$Key;->value:Ljava/lang/String;

    .line 149
    iput-object p1, p0, Lorg/simpleframework/xml/core/KeyBuilder$Key;->type:Lorg/simpleframework/xml/core/KeyBuilder$KeyType;

    .line 150
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 162
    instance-of v0, p1, Lorg/simpleframework/xml/core/KeyBuilder$Key;

    if-eqz v0, :cond_0

    .line 163
    check-cast p1, Lorg/simpleframework/xml/core/KeyBuilder$Key;

    .line 164
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/KeyBuilder$Key;->equals(Lorg/simpleframework/xml/core/KeyBuilder$Key;)Z

    move-result v0

    .line 166
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Lorg/simpleframework/xml/core/KeyBuilder$Key;)Z
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lorg/simpleframework/xml/core/KeyBuilder$Key;->type:Lorg/simpleframework/xml/core/KeyBuilder$KeyType;

    iget-object v1, p1, Lorg/simpleframework/xml/core/KeyBuilder$Key;->type:Lorg/simpleframework/xml/core/KeyBuilder$KeyType;

    if-ne v0, v1, :cond_0

    .line 180
    iget-object v0, p1, Lorg/simpleframework/xml/core/KeyBuilder$Key;->value:Ljava/lang/String;

    iget-object v1, p0, Lorg/simpleframework/xml/core/KeyBuilder$Key;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 182
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/simpleframework/xml/core/KeyBuilder$Key;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/simpleframework/xml/core/KeyBuilder$Key;->value:Ljava/lang/String;

    return-object v0
.end method
