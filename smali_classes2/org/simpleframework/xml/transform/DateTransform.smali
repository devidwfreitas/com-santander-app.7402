.class Lorg/simpleframework/xml/transform/DateTransform;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/transform/Transform;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/util/Date;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/simpleframework/xml/transform/Transform",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final factory:Lorg/simpleframework/xml/transform/DateFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/transform/DateFactory",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lorg/simpleframework/xml/transform/DateFactory;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/transform/DateFactory;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/simpleframework/xml/transform/DateTransform;->factory:Lorg/simpleframework/xml/transform/DateFactory;

    .line 62
    return-void
.end method


# virtual methods
.method public bridge synthetic read(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/DateTransform;->read(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized read(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lorg/simpleframework/xml/transform/DateType;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lorg/simpleframework/xml/transform/DateTransform;->factory:Lorg/simpleframework/xml/transform/DateFactory;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lorg/simpleframework/xml/transform/DateFactory;->getInstance([Ljava/lang/Object;)Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic write(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/DateTransform;->write(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized write(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lorg/simpleframework/xml/transform/DateType;->getText(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
