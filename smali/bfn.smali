.class public Lbfn;
.super Lbgg;
.source "SourceFile"


# instance fields
.field e:Lbgi;

.field f:Lbfu;

.field g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbfu;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lbgg;-><init>(Landroid/content/Context;)V

    .line 58
    iput-object p2, p0, Lbfn;->f:Lbfu;

    .line 59
    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v0

    invoke-virtual {v0}, Lbgh;->a()Lbgi;

    move-result-object v0

    iput-object v0, p0, Lbfn;->e:Lbgi;

    .line 60
    return-void
.end method


# virtual methods
.method public a(Lbfl;)I
    .locals 5

    .prologue
    .line 199
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 201
    :try_start_0
    invoke-virtual {p1}, Lbfl;->b()Lbfv;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbfn;->a(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "appblob"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v0

    invoke-virtual {v0}, Lbgh;->a()Lbgi;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lbgi;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "datablink_app_blob"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 211
    invoke-virtual {v0}, Lbgi;->close()V

    .line 212
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 216
    :goto_1
    return v0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 216
    :cond_0
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public a(Lbfm;)I
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 63
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "blob"

    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v4

    invoke-virtual {p0, v4}, Lbfn;->a(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "serialnumber"

    invoke-virtual {p1}, Lbfm;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v3

    invoke-virtual {v3}, Lbgh;->a()Lbgi;

    move-result-object v3

    .line 79
    invoke-virtual {v3}, Lbgi;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "datablink_blob"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "id"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " = ?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lbfm;->b()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    .line 80
    invoke-virtual {v3}, Lbgi;->close()V

    .line 82
    const-wide/16 v2, 0x1

    cmp-long v2, v4, v2

    if-ltz v2, :cond_0

    .line 88
    :goto_0
    return v0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 73
    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 88
    goto :goto_0
.end method

.method public a(Ljava/io/Serializable;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 271
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 272
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 274
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 275
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 277
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 279
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 281
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 283
    new-instance v3, Lax;

    invoke-direct {v3}, Lax;-><init>()V

    .line 284
    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v3, v0, v4, v5, v2}, Lax;->a([BIILjava/io/OutputStream;)I

    .line 286
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbfm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v0

    invoke-virtual {v0}, Lbgh;->a()Lbgi;

    move-result-object v2

    .line 95
    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "datablink_blob"

    invoke-virtual {p0, v0}, Lbfn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {v2}, Lbgi;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lbgi;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 97
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    new-instance v4, Lbfm;

    iget-object v0, p0, Lbfn;->f:Lbfu;

    invoke-direct {v4, v0}, Lbfm;-><init>(Lbgl;)V

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "blob"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbfn;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfx;

    invoke-virtual {v4, v0}, Lbfm;->a(Lbfx;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    :goto_0
    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "id"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lbfm;->a(I)V

    .line 114
    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "serialnumber"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lbfm;->a(Ljava/lang/String;)V

    .line 116
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 98
    if-nez v0, :cond_0

    .line 120
    :cond_1
    invoke-virtual {v2}, Lbgi;->close()V

    .line 122
    return-object v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 108
    :catch_1
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Lbfl;)I
    .locals 6

    .prologue
    .line 221
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 223
    :try_start_0
    invoke-virtual {p1}, Lbfl;->b()Lbfv;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbfn;->a(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "appblob"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v0

    invoke-virtual {v0}, Lbgh;->a()Lbgi;

    move-result-object v0

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "id"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lbfl;->d()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-virtual {v0}, Lbgi;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "datablink_app_blob"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    .line 235
    invoke-virtual {v0}, Lbgi;->close()V

    .line 237
    const-wide/16 v0, 0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 238
    const/4 v0, 0x0

    .line 240
    :goto_1
    return v0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 240
    :cond_0
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public b(Lbfm;)I
    .locals 5

    .prologue
    .line 127
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "blob"

    invoke-virtual {p1}, Lbfm;->c()Lbfx;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbfn;->a(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "serialnumber"

    invoke-virtual {p1}, Lbfm;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v1

    invoke-virtual {v1}, Lbgh;->a()Lbgi;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Lbgi;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "datablink_blob"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 144
    invoke-virtual {v1}, Lbgi;->close()V

    .line 146
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 137
    const/4 v0, 0x2

    goto :goto_0

    .line 152
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p0}, Lbfn;->a()Ljava/util/List;

    move-result-object v2

    .line 181
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 182
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 185
    return-object v3

    .line 183
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfm;

    invoke-virtual {v0}, Lbfm;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public c(Lbfm;)I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 189
    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v0

    invoke-virtual {v0}, Lbgh;->a()Lbgi;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lbgi;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "datablink_blob"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "id"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Lbfm;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 191
    invoke-virtual {v0}, Lbgi;->close()V

    .line 192
    return v6
.end method

.method public c()Lbfl;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 246
    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v0

    invoke-virtual {v0}, Lbgh;->a()Lbgi;

    move-result-object v3

    .line 247
    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "datablink_app_blob"

    invoke-virtual {p0, v0}, Lbfn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-virtual {v3}, Lbgi;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v3, v2, v0}, Lbgi;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 251
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 252
    invoke-virtual {v3}, Lbgi;->close()V

    move-object v0, v1

    .line 267
    :goto_0
    return-object v0

    .line 256
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 257
    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "appblob"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    new-instance v2, Lbfl;

    iget-object v4, p0, Lbfn;->f:Lbfu;

    invoke-direct {v2, v4}, Lbfl;-><init>(Lbgl;)V

    .line 260
    invoke-virtual {p0, v0}, Lbfn;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfv;

    invoke-virtual {v2, v0}, Lbfl;->a(Lbfv;)V

    .line 262
    if-nez v2, :cond_1

    .line 263
    invoke-virtual {v3}, Lbgi;->close()V

    move-object v0, v1

    .line 264
    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {v3}, Lbgi;->close()V

    move-object v0, v2

    .line 267
    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Lbfm;
    .locals 4

    .prologue
    .line 157
    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v0

    invoke-virtual {v0}, Lbgh;->a()Lbgi;

    move-result-object v1

    .line 158
    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "datablink_blob"

    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "serialnumber"

    invoke-virtual {p0, v0, v2, p1}, Lbfn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {v1}, Lbgi;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lbgi;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 162
    new-instance v3, Lbfm;

    iget-object v0, p0, Lbfn;->f:Lbfu;

    invoke-direct {v3, v0}, Lbfm;-><init>(Lbgl;)V

    .line 163
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lbfm;->a(I)V

    .line 167
    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "blob"

    invoke-virtual {p0, v0}, Lbfn;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfx;

    invoke-virtual {v3, v0}, Lbfm;->a(Lbfx;)V

    .line 168
    invoke-virtual {p0}, Lbfn;->d()Lbgh;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "serialnumber"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lbfm;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 164
    if-nez v0, :cond_0

    .line 175
    :cond_1
    invoke-virtual {v1}, Lbgi;->close()V

    .line 176
    return-object v3

    .line 169
    :catch_0
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 292
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 294
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 296
    new-instance v2, Lax;

    invoke-direct {v2}, Lax;-><init>()V

    .line 298
    invoke-virtual {v2, p1, v1}, Lax;->a(Ljava/lang/String;Ljava/io/OutputStream;)I

    .line 299
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 301
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 303
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 304
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 305
    return-object v0
.end method
