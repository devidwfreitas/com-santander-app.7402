.class public Lbge;
.super Lbgg;
.source "SourceFile"


# instance fields
.field private e:Lbgi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lbgg;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method private f(Ljava/lang/String;)Lbgd;
    .locals 4

    .prologue
    .line 168
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "datablink_push_history"

    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "data"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lbge;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    new-instance v1, Lbgd;

    invoke-direct {v1}, Lbgd;-><init>()V

    .line 170
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v2

    invoke-virtual {v2}, Lbgh;->a()Lbgi;

    move-result-object v2

    iput-object v2, p0, Lbge;->e:Lbgi;

    .line 171
    iget-object v2, p0, Lbge;->e:Lbgi;

    iget-object v3, p0, Lbge;->e:Lbgi;

    invoke-virtual {v3}, Lbgi;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lbgi;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 173
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    :cond_0
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lbgd;->a(I)V

    .line 176
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "title"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbgd;->a(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbgd;->b(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "date"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbgd;->c(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "status"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lbgd;->b(I)V

    .line 180
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "serial"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbgd;->d(Ljava/lang/String;)V

    .line 181
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 174
    if-nez v2, :cond_0

    .line 183
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 184
    iget-object v0, p0, Lbge;->e:Lbgi;

    invoke-virtual {v0}, Lbgi;->close()V

    .line 185
    return-object v1
.end method


# virtual methods
.method protected a()I
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v0

    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "datablink_push_history"

    invoke-virtual {v0, v1}, Lbgh;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(I)I
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v0

    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "datablink_push_history"

    invoke-virtual {v0, p1, v1}, Lbgh;->a(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Lbgd;)I
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 23
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 25
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "title"

    invoke-virtual {p1}, Lbgd;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "data"

    invoke-virtual {p1}, Lbgd;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "date"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lbgd;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "status"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lbgd;->e()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "serial"

    invoke-virtual {p1}, Lbgd;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v3

    invoke-virtual {v3}, Lbgh;->a()Lbgi;

    move-result-object v3

    iput-object v3, p0, Lbge;->e:Lbgi;

    .line 31
    iget-object v3, p0, Lbge;->e:Lbgi;

    invoke-virtual {v3}, Lbgi;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "datablink_push_history"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "data"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " = ?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lbgd;->c()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 32
    iget-object v3, p0, Lbge;->e:Lbgi;

    invoke-virtual {v3}, Lbgi;->close()V

    .line 35
    if-lt v2, v1, :cond_0

    .line 39
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbge;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b(Lbgd;)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 45
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v2

    invoke-virtual {v2}, Lbgh;->a()Lbgi;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lbgi;->close()V

    .line 47
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v2

    invoke-virtual {v2}, Lbgh;->a()Lbgi;

    move-result-object v2

    iput-object v2, p0, Lbge;->e:Lbgi;

    .line 48
    iget-object v2, p0, Lbge;->e:Lbgi;

    invoke-virtual {v2}, Lbgi;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "datablink_push_history"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "data"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " = ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lbgd;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 49
    iget-object v3, p0, Lbge;->e:Lbgi;

    invoke-virtual {v3}, Lbgi;->close()V

    .line 53
    if-lt v2, v1, :cond_0

    .line 57
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public c(Lbgd;)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 93
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 97
    invoke-virtual {p1}, Lbgd;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbge;->f(Ljava/lang/String;)Lbgd;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lbgd;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lbgd;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0, p1}, Lbge;->a(Lbgd;)I

    .line 122
    :goto_0
    return v4

    .line 104
    :cond_0
    invoke-virtual {p0}, Lbge;->a()I

    move-result v0

    .line 105
    invoke-virtual {p0}, Lbge;->c()Ljava/util/List;

    move-result-object v2

    .line 106
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v0, :cond_1

    .line 107
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgd;

    invoke-virtual {p0, v0}, Lbge;->b(Lbgd;)I

    .line 110
    :cond_1
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "title"

    invoke-virtual {p1}, Lbgd;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "data"

    invoke-virtual {p1}, Lbgd;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "date"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lbgd;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "status"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lbgd;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "serial"

    invoke-virtual {p1}, Lbgd;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v0

    invoke-virtual {v0}, Lbgh;->a()Lbgi;

    move-result-object v0

    iput-object v0, p0, Lbge;->e:Lbgi;

    .line 116
    iget-object v0, p0, Lbge;->e:Lbgi;

    invoke-virtual {v0}, Lbgi;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "datablink_push_history"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 117
    iget-object v0, p0, Lbge;->e:Lbgi;

    invoke-virtual {v0}, Lbgi;->close()V

    goto/16 :goto_0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbgd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbge;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 64
    if-nez p1, :cond_0

    .line 65
    invoke-virtual {p0}, Lbge;->c()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_0
    move v0, v2

    .line 71
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 80
    return v0

    .line 67
    :cond_0
    invoke-virtual {p0, p1}, Lbge;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 72
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgd;

    invoke-virtual {p0, v0}, Lbge;->b(Lbgd;)I

    .line 73
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgd;

    invoke-virtual {p0, v0}, Lbge;->b(Lbgd;)I

    move-result v3

    .line 71
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_1
.end method

.method public e(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lbgd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 138
    if-nez p1, :cond_2

    .line 139
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "datablink_push_history"

    invoke-virtual {p0, v0}, Lbge;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_0
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v2

    invoke-virtual {v2}, Lbgh;->a()Lbgi;

    move-result-object v2

    iput-object v2, p0, Lbge;->e:Lbgi;

    .line 144
    iget-object v2, p0, Lbge;->e:Lbgi;

    iget-object v3, p0, Lbge;->e:Lbgi;

    invoke-virtual {v3}, Lbgi;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lbgi;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 146
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    :cond_0
    new-instance v2, Lbgd;

    invoke-direct {v2}, Lbgd;-><init>()V

    .line 150
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lbgd;->a(I)V

    .line 151
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "title"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbgd;->a(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "data"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbgd;->b(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "date"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbgd;->c(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "status"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lbgd;->b(I)V

    .line 155
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "serial"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbgd;->d(Ljava/lang/String;)V

    .line 156
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 147
    if-nez v2, :cond_0

    .line 160
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 161
    iget-object v0, p0, Lbge;->e:Lbgi;

    invoke-virtual {v0}, Lbgi;->close()V

    .line 163
    return-object v1

    .line 141
    :cond_2
    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "datablink_push_history"

    invoke-virtual {p0}, Lbge;->d()Lbgh;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "serial"

    invoke-virtual {p0, v0, v2, p1}, Lbge;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
