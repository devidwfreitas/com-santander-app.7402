.class Lorg/simpleframework/xml/transform/EnumTransform;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/transform/Transform;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/simpleframework/xml/transform/Transform",
        "<",
        "Ljava/lang/Enum;",
        ">;"
    }
.end annotation


# instance fields
.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/simpleframework/xml/transform/EnumTransform;->type:Ljava/lang/Class;

    .line 45
    return-void
.end method


# virtual methods
.method public read(Ljava/lang/String;)Ljava/lang/Enum;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/simpleframework/xml/transform/EnumTransform;->type:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic read(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/EnumTransform;->read(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic write(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/EnumTransform;->write(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
