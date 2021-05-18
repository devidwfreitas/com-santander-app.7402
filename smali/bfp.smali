.class public Lbfp;
.super Lbgg;
.source "SourceFile"


# instance fields
.field private e:Lbgi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lbgg;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {p0}, Lbfp;->d()Lbgh;

    move-result-object v0

    invoke-virtual {v0}, Lbgh;->a()Lbgi;

    move-result-object v0

    iput-object v0, p0, Lbfp;->e:Lbgi;

    .line 21
    return-void
.end method

.method private b(Lbfq;)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 102
    iget-object v0, p0, Lbfp;->e:Lbgi;

    invoke-virtual {v0}, Lbgi;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lbfp;->d()Lbgh;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "datablink_chat_message"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbfp;->d()Lbgh;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "id"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Lbfq;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lbfp;->e:Lbgi;

    invoke-virtual {v0}, Lbgi;->close()V

    .line 104
    return v5
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lbfp;->d()Lbgh;

    move-result-object v0

    invoke-virtual {p0}, Lbfp;->d()Lbgh;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "datablink_chat_channel"

    invoke-virtual {v0, p1, v1}, Lbgh;->a(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Lbfo;)I
    .locals 4

    .prologue
    .line 90
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 92
    invoke-virtual {p0}, Lbfp;->d()Lbgh;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-virtual {p1}, Lbfo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lbfp;->d()Lbgh;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "serialNumber"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lbfo;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lbfp;->e:Lbgi;

    invoke-virtual {v1}, Lbgi;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {p0}, Lbfp;->d()Lbgh;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "datablink_chat_message"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 96
    iget-object v0, p0, Lbfp;->e:Lbgi;

    invoke-virtual {v0}, Lbgi;->close()V

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lbfq;)I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lbfq;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbfp;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lbfp;->b()I

    move-result v1

    .line 73
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v1, :cond_0

    .line 74
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfq;

    invoke-direct {p0, v0}, Lbfp;->b(Lbfq;)I

    .line 76
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 78
    invoke-virtual {p0}, Lbfp;->d()Lbgh;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "status"

    invoke-virtual {p1}, Lbfq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lbfp;->d()Lbgh;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "date"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lbfq;->d()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lbfp;->d()Lbgh;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "text"

    invoke-virtual {p1}, Lbfq;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lbfp;->d()Lbgh;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "channelId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lbfq;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lbfp;->e:Lbgi;

    invoke-virtual {v1}, Lbgi;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {p0}, Lbfp;->d()Lbgh;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "datablink_chat_message"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 84
    iget-object v0, p0, Lbfp;->e:Lbgi;

    invoke-virtual {v0}, Lbgi;->close()V

    .line 86
    return v6
.end method

.method public a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-virtual {p0}, Lbfp;->d()Lbgh;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "datablink_chat_channel"

    invoke-virtual {p0, v1}, Lbfp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    iget-object v2, p0, Lbfp;->e:Lbgi;

    iget-object v3, p0, Lbfp;->e:Lbgi;

    invoke-virtual {v3}, Lbgi;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lbgi;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 28
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    :cond_0
    invoke-virtual {p0}, Lbfp;->d()Lbgh;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "serialNumber"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-virtual {p0}, Lbfp;->d()Lbgh;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 33
    new-instance v4, Lbfo;

    invoke-direct {v4, v3, v2}, Lbfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lbfp;->d()Lbgh;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lbfo;->a(I)V

    .line 35
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 29
    if-nez v2, :cond_0

    .line 40
    :cond_1
    iget-object v1, p0, Lbfp;->e:Lbgi;

    invoke-virtual {v1}, Lbgi;->close()V

    .line 42
    return-object v0
.end method

.method protected b()I
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lbfp;->d()Lbgh;

    move-result-object v0

    invoke-virtual {p0}, Lbfp;->d()Lbgh;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "datablink_chat_channel"

    invoke-virtual {v0, v1}, Lbgh;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lbfq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {p0}, Lbfp;->d()Lbgh;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "datablink_chat_message"

    invoke-virtual {p0}, Lbfp;->d()Lbgh;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "channelId"

    invoke-virtual {p0, v1, v2, p1}, Lbfp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    iget-object v2, p0, Lbfp;->e:Lbgi;

    iget-object v3, p0, Lbfp;->e:Lbgi;

    invoke-virtual {v3}, Lbgi;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lbgi;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 50
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    :cond_0
    invoke-virtual {p0}, Lbfp;->d()Lbgh;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "channelId"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 53
    new-instance v3, Lbfq;

    invoke-direct {v3, v2}, Lbfq;-><init>(I)V

    .line 55
    invoke-virtual {p0}, Lbfp;->d()Lbgh;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lbfq;->a(I)V

    .line 56
    invoke-virtual {p0}, Lbfp;->d()Lbgh;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "date"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lbfq;->a(J)V

    .line 57
    invoke-virtual {p0}, Lbfp;->d()Lbgh;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "status"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lbfq;->a(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lbfp;->d()Lbgh;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "text"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lbfq;->b(Ljava/lang/String;)V

    .line 59
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 51
    if-nez v2, :cond_0

    .line 64
    :cond_1
    iget-object v1, p0, Lbfp;->e:Lbgi;

    invoke-virtual {v1}, Lbgi;->close()V

    .line 66
    return-object v0
.end method
