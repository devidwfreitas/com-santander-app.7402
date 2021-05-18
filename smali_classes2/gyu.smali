.class public Lgyu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;

.field private b:Lgyt;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lgyt;

    invoke-direct {v0, p1}, Lgyt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgyu;->b:Lgyt;

    .line 28
    return-void
.end method

.method private a(Landroid/database/Cursor;)Lgyv;
    .locals 4

    .prologue
    .line 122
    new-instance v0, Lgyv;

    invoke-direct {v0}, Lgyv;-><init>()V

    .line 123
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgyv;->a(Ljava/lang/Long;)V

    .line 124
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgyv;->a(Ljava/lang/String;)V

    .line 125
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgyv;->b(Ljava/lang/String;)V

    .line 126
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Long;)Lgyv;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 84
    iget-object v0, p0, Lgyu;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table1"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "content"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "content2"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 89
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 84
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 93
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v0}, Lgyu;->a(Landroid/database/Cursor;)Lgyv;

    move-result-object v4

    .line 94
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 96
    return-object v4
.end method

.method public a(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lgyv;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 39
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 40
    const-string v1, "_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 41
    const-string v1, "content"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v1, "content2"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lgyu;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "table1"

    invoke-virtual {v1, v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 46
    iget-object v0, p0, Lgyu;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table1"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "content"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "content2"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 51
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 46
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 55
    invoke-direct {p0, v0}, Lgyu;->a(Landroid/database/Cursor;)Lgyv;

    move-result-object v1

    .line 56
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 58
    return-object v1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lgyu;->b:Lgyt;

    invoke-virtual {v0}, Lgyt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lgyu;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 32
    return-void
.end method

.method public a(Lgyv;)V
    .locals 5

    .prologue
    .line 72
    invoke-virtual {p1}, Lgyv;->a()Ljava/lang/Long;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lgyu;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "table1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 62
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 63
    const-string v1, "content2"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lgyu;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "table1"

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method public b()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lgyu;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table1"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public c()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lgyv;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 100
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 102
    iget-object v0, p0, Lgyu;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table1"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "content"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "content2"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 110
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 111
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    invoke-direct {p0, v0}, Lgyu;->a(Landroid/database/Cursor;)Lgyv;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 116
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 118
    return-object v8
.end method

.method public close()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lgyu;->b:Lgyt;

    invoke-virtual {v0}, Lgyt;->close()V

    .line 36
    return-void
.end method
