.class public final Leki;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lejz;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lepo;

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lepo;

    invoke-direct {v0, p1}, Lepo;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Leki;->a:Lepo;

    .line 70
    iget-object v0, p0, Leki;->a:Lepo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lepo;->a(Z)V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Leki;->b:Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Leki;-><init>(Ljava/io/Reader;)V

    .line 62
    return-void
.end method


# virtual methods
.method public a()Lejz;
    .locals 3

    .prologue
    .line 82
    invoke-virtual {p0}, Leki;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 87
    :cond_0
    :try_start_0
    iget-object v0, p0, Leki;->a:Lepo;

    invoke-static {v0}, Lemn;->a(Lepo;)Lejz;
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lekd; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Lekd;

    const-string v2, "Failed parsing JSON source to Json"

    invoke-direct {v1, v2, v0}, Lekd;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 90
    :catch_1
    move-exception v0

    .line 91
    new-instance v1, Lekd;

    const-string v2, "Failed parsing JSON source to Json"

    invoke-direct {v1, v2, v0}, Lekd;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 92
    :catch_2
    move-exception v0

    .line 93
    invoke-virtual {v0}, Lekd;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/EOFException;

    if-eqz v1, :cond_1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    :cond_1
    throw v0
.end method

.method public hasNext()Z
    .locals 3

    .prologue
    .line 103
    iget-object v1, p0, Leki;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v0, p0, Leki;->a:Lepo;

    invoke-virtual {v0}, Lepo;->f()Lepr;

    move-result-object v0

    sget-object v2, Lepr;->END_DOCUMENT:Lepr;
    :try_end_0
    .catch Lept; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    :try_start_1
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    new-instance v2, Lekj;

    invoke-direct {v2, v0}, Lekj;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 108
    :catch_1
    move-exception v0

    .line 109
    :try_start_2
    new-instance v2, Leka;

    invoke-direct {v2, v0}, Leka;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Leki;->a()Lejz;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
