.class public final Lnim;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;

.field private b:I

.field private c:I

.field private d:F


# direct methods
.method public constructor <init>(Lnkj;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lnim;->a(Lnkj;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnim;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lnkj;->q()Lnin;

    move-result-object v0

    invoke-virtual {v0}, Lnin;->b()I

    move-result v0

    invoke-virtual {p1}, Lnkj;->q()Lnin;

    move-result-object v1

    invoke-virtual {v1}, Lnin;->a()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lnim;->a(IF)V

    return-void
.end method

.method private static a(Lnkj;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 6

    invoke-virtual {p0}, Lnkj;->a()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "tealium.db"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x10000000

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "CREATE TABLE IF NOT EXISTS %s ( \t%s TEXT NOT NULL, \t%s INT NOT NULL )"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "dispatch"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "data_json"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "post_time"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;F)V
    .locals 6

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    float-to-long v2, p1

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-string v2, "dispatch"

    const-string v3, "post_time < ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lnim;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT COUNT(*) FROM dispatch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lnim;->b:I

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lnim;->b:I

    return v0
.end method

.method public a(IF)V
    .locals 2

    iput p1, p0, Lnim;->c:I

    iput p2, p0, Lnim;->d:F

    iget-object v0, p0, Lnim;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget v1, p0, Lnim;->d:F

    invoke-static {v0, v1}, Lnim;->a(Landroid/database/sqlite/SQLiteDatabase;F)V

    invoke-direct {p0}, Lnim;->c()V

    return-void
.end method

.method public a(Lnil;)V
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dispatch must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lnim;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget v1, p0, Lnim;->d:F

    invoke-static {v0, v1}, Lnim;->a(Landroid/database/sqlite/SQLiteDatabase;F)V

    invoke-direct {p0}, Lnim;->c()V

    iget v0, p0, Lnim;->c:I

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lnim;->b:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lnim;->c:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget v1, p0, Lnim;->c:I

    if-le v0, v1, :cond_2

    iget-object v1, p0, Lnim;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DELETE FROM dispatch WHERE rowid IN ( \tSELECT rowid \tFROM dispatch\tORDER BY post_time ASC \tLIMIT ? )"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lnim;->c:I

    sub-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lnim;->c:I

    iput v0, p0, Lnim;->b:I

    :goto_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "data_json"

    invoke-virtual {p1}, Lnil;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "post_time"

    invoke-virtual {p1}, Lnil;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lnim;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "dispatch"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    :cond_2
    iget v0, p0, Lnim;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnim;->b:I

    goto :goto_1
.end method

.method public b()[Lnil;
    .locals 11

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lnim;->b:I

    if-nez v0, :cond_0

    new-array v0, v8, [Lnil;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnim;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "dispatch"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "post_time"

    aput-object v4, v2, v8

    const-string v4, "data_json"

    aput-object v4, v2, v5

    const-string v7, "post_time ASC"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v2, v0, [Lnil;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move v0, v8

    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    :try_start_0
    new-instance v5, Lnil;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    new-instance v9, Lorg/json/JSONObject;

    const/4 v10, 0x1

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v7, v9}, Lnil;-><init>(JLorg/json/JSONObject;)V

    aput-object v5, v2, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :catch_0
    move-exception v0

    add-int/lit8 v0, v1, -0x1

    goto :goto_2

    :cond_1
    array-length v1, v2

    if-eq v0, v1, :cond_2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnil;

    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    iget-object v1, p0, Lnim;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "dispatch"

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iput v8, p0, Lnim;->b:I

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_3
.end method
