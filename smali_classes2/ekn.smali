.class public abstract Lekn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lekn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lekn",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Leko;

    invoke-direct {v0, p0}, Leko;-><init>(Lekn;)V

    return-object v0
.end method

.method public final a(Lejz;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lejz;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 284
    :try_start_0
    new-instance v0, Lenc;

    invoke-direct {v0, p1}, Lenc;-><init>(Lejz;)V

    .line 285
    invoke-virtual {p0, v0}, Lekn;->b(Lepo;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    new-instance v1, Leka;

    invoke-direct {v1, v0}, Leka;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Lepo;

    invoke-direct {v0, p1}, Lepo;-><init>(Ljava/io/Reader;)V

    .line 260
    invoke-virtual {p0, v0}, Lekn;->b(Lepo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lekn;->a(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 215
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 217
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lekn;->a(Ljava/io/Writer;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public abstract a(Leps;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leps;",
            "TT;)V"
        }
    .end annotation
.end method

.method public final a(Ljava/io/Writer;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Leps;

    invoke-direct {v0, p1}, Leps;-><init>(Ljava/io/Writer;)V

    .line 142
    invoke-virtual {p0, v0, p2}, Lekn;->a(Leps;Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public final b(Ljava/lang/Object;)Lejz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lejz;"
        }
    .end annotation

    .prologue
    .line 233
    :try_start_0
    new-instance v0, Lene;

    invoke-direct {v0}, Lene;-><init>()V

    .line 234
    invoke-virtual {p0, v0, p1}, Lekn;->a(Leps;Ljava/lang/Object;)V

    .line 235
    invoke-virtual {v0}, Lene;->a()Lejz;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    new-instance v1, Leka;

    invoke-direct {v1, v0}, Leka;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract b(Lepo;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lepo;",
            ")TT;"
        }
    .end annotation
.end method
